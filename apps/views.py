from io import BytesIO
from django.shortcuts import *
from apps.models import *
import pyecharts.options as opts
from pyecharts.charts import Line
import xlwt
from django.core.paginator import EmptyPage, PageNotAnInteger, Paginator
from django.shortcuts import render

# 学生登录
def login(request):
    if request.method == "GET":
        return render(request,"login.html")
    else:
        stuNumber = request.POST.get("stuNumber")
        stuName = request.POST.get("stuName")
        s = Student.objects.filter(number=stuNumber,name=stuName).first()
        # sid = s.id
        if s:
             request.session['s'] = s
             return redirect("show")
        else:
            return HttpResponse("学号或姓名错误")

# 展示全部成绩   主要练习分页功能
def listing(request):
    # 查询全部
    chengji_list = Chengji.objects.all()
    # print(chengji_list)

    # 分页
    paginator = Paginator(chengji_list, 20) # Show 25 contacts per page
    page = request.GET.get('page')
    contacts = paginator.get_page(page)
    return render(request, 'list.html', {'contacts': contacts})

# 展示该学生各科成绩
def show(request):
    stu_1 = Student.objects.filter(id=request.session['s'].id).first()
    clist = stu_1.chengji_set.all()
    # print(stu_1,clist)
    cheng_list = []
    cheng_dict = {}
    # 循环成绩 查询分数小于六十的科目
    for i in clist:
        if int(i.cheng) < 60:
            cheng_list.append(i)
    for i in range(1, 5):
        xuecheng = []
        for w in cheng_list:
            if w.x_id_id == i:
                xuecheng.append(w)
        cheng_dict['w{}'.format(i)] = xuecheng
    cheng_li = []
    for i in cheng_dict.values():
        for a in i:
            cheng_li.append(a)
    # print(cheng_li)

    # 分页
    paginator = Paginator(cheng_li, 5)  # Show 25 contacts per page
    page = request.GET.get('page')
    contacts = paginator.get_page(page)

    # 查询九科所有成绩 存入session中
    sub_dict={}
    for i in range(1,10):
        chen_list=[]
        for chen in clist:
            if chen.c_id_id == i:
                chen_list.append(chen.cheng)
        sub_dict['sub_{}'.format(i)]=chen_list
    request.session['sub_dict'] = sub_dict
    # 查询科目名称

    # 将个学期成绩添加到列表中
    first=[]
    second=[]
    third=[]
    fourth=[]
    for c in clist:
        if c.x_id_id == 1:
            first.append(c.cheng)
        if c.x_id_id == 2:
            second.append(c.cheng)
        if c.x_id_id == 3:
            third.append(c.cheng)
        if c.x_id_id == 4:
            fourth.append(c.cheng)
    score_list = [first,second,third,fourth]
    # print(score_list)
    kemu = Calss.objects.all()

    return render(request,'show.html',{
        "clist":score_list,
        "kemu":kemu,
        "contacts":contacts
    })

# 习题选择
def exam(request):
    if request.method=='GET':
        # 查询所有科目
        calss = Calss.objects.all()
        # 错题表查询
        mis = Mistakes.objects.filter(s_id_id = request.session['s'].id).all()
        mis = len(mis)
        return render(request,'exam.html',{
            'class':calss,
            'mis':mis
        })
    else:
        # 获取多选框
        e_list = request.POST.getlist('name')
        num = request.POST.get('tishu')
        # print(num)
        # print(e_list)
        request.session['num'] = num
        request.session['e_list'] = e_list
        return redirect('ceshi')

# 引入原生sql
from django.db import connection
cursor = connection.cursor()

# 习题练习
def ceshi(request):
    # title_list = Timu.objects.all()
    # 获取存入session中的值
    e_list = request.session['e_list']
    num = request.session['num']
    # 判断
    if len(e_list) == 1:
        a = e_list[0]
        # print(a)
        a = '({})'.format(a)
        # print(a)
    else:
        # 转为元组类型
        a = tuple(e_list)
        # print(e_list)
    # 查询
    ti = Timu.objects.filter(c_id__in=e_list)
    # print(ti)
    if ti:

        t_all = cursor.execute("""
        SELECT * FROM apps_timu WHERE c_id_id IN {} ORDER BY id limit {};
        """.format(a,num))
        title_list = cursor.fetchall()
        # 将值存入session
        request.session['title_list'] = title_list
        print(title_list)
        id_list = []
        # 循环得到的数据
        for ti in title_list:
            # 将数据id添加进列表
            id_list.append(ti[0])
        request.session['id_list'] = id_list

    if request.method == "GET":
        # 获取session值传入HTML网页
        title_list = request.session['title_list']
        return render(request, "ceshi.html", {
            "title_list": title_list
        })
    else:
        id_list = request.session['id_list']
        info_list = []
        li = []
        # 定义原始成绩为0
        score = 0
        # 循环题目id
        for id in id_list:
            info = request.POST.get(str(id))
            # print(info)
            # 字符串切割
            info = info.split(',')
            info_list.append(info)
            # 条件查询
            t = Timu.objects.filter(id=int(info[0])).first()
            # 正确题目成绩计算
            if t.correct == info[1]:
                score += 2
            else:
                # 将错误题目添加入列表
                li.append(t)
                # print(li)
        if len(li) == 0:
            return HttpResponse(score)
        else:
            # 错题表查询是否存在错题
            mis = Mistakes.objects.filter(s_id = request.session['s'].id).all()
            for i in li:
                if len(mis) == 0:
                    # 将数据添加进错题表
                    Mistakes.objects.create(s_id_id=request.session['s'].id, ti_id=i)
                else:
                    for m in mis:
                        # 如果改错题存在于错题表内
                        if m.ti_id_id == i.id:
                            # 跳出本次循环
                            continue
                        else:
                            Mistakes.objects.create(s_id_id = request.session['s'].id,ti_id = i)
                            # 删除表内重复错题
                            m_all = cursor.execute("""DELETE FROM apps_mistakes
	                                                    WHERE id NOT IN (
		                                                SELECT temp.min_id FROM (
			                                            SELECT MIN(id) min_id FROM apps_mistakes
			                                            GROUP BY s_id_id,ti_id_id)AS temp
	                                            )""")
                            m_all = cursor.fetchall()
            # print("你的答案：", info[1], "正确答案：", t.correct)
        # print(info_list)
        return HttpResponse(score)

# 错题
def mistakes(request):
    # 查询所有错题
    mis = Mistakes.objects.filter(s_id=request.session['s'].id).all()
    id_list = []
    for m in mis:
        id_list.append(m.ti_id)
    print(id_list)
    if request.method == 'GET':
        # for m in mis:
        #     print(m.ti_id.title)
        return render(request,'mistakes.html',{
            'mis':mis
        })
    else:
        for id in id_list:
            # 获取数据
            info = request.POST.get(str(id.id))
            info = info.split(',')
            t = Timu.objects.filter(id=int(info[0])).first()
            print(info[1])
            # 如果题目回答正确
            if t.correct == info[1]:
                # 删除错题库题目
                m = Mistakes.objects.filter(ti_id = t,s_id = request.session['s'].id).first()
                # print(m)
                m.delete()
    return redirect('exam')

# 单一科目折线图
def brokenline(request,c_id):
    # 查询所有学期
    x_data=[]
    xue = Xueqi.objects.all()
    for x in xue:
        x_data.append(x.xueqi)
    # 条件查询 根据选择科目查询该科成绩
    ke = Calss.objects.filter(id=c_id).first()
    cheng =  Chengji.objects.filter(s_id_id=request.session['s'].id, c_id_id=c_id)
    y_data=[]
    for c in cheng:
        y_data.append(c.cheng)
    # 折线图
    c = (
        Line()
            .set_global_opts(
            tooltip_opts=opts.TooltipOpts(is_show=False),
            xaxis_opts=opts.AxisOpts(type_="category"),
            yaxis_opts=opts.AxisOpts(
                type_="value",
                axistick_opts=opts.AxisTickOpts(is_show=True),
                splitline_opts=opts.SplitLineOpts(is_show=True),
            ),
        )
            .add_xaxis(xaxis_data=x_data)
            .add_yaxis(
            series_name=request.session['s'].name + ke.name,
            y_axis=y_data,
            symbol="emptyCircle",
            is_symbol_show=True,
            label_opts=opts.LabelOpts(is_show=False),
        )
            # .render("basic_line_chart.html")
    )
    return HttpResponse(c.render_embed())

# 所有成绩折线图
def bbrokenline(request):
    # 查询所有学期
    x_data = []
    xue = Xueqi.objects.all()
    for x in xue:
        x_data.append(x.xueqi)
    # 获取session中所有成绩的字典
    sub_dict = request.session['sub_dict']
    # print(sub_dict)
    # 九科成绩折线图
    c = (
        Line()
        .add_xaxis(xaxis_data=x_data)
        .add_yaxis(
            series_name="Python",
            y_axis=sub_dict['sub_1'],
            label_opts=opts.LabelOpts(is_show=False),
        )
        .add_yaxis(
            series_name="C",
            y_axis=sub_dict['sub_2'],
            label_opts=opts.LabelOpts(is_show=False),
        )
        .add_yaxis(
            series_name="C#",
            y_axis=sub_dict['sub_3'],
            label_opts=opts.LabelOpts(is_show=False),
        )
        .add_yaxis(
            series_name="C++",
            y_axis=sub_dict['sub_4'],
            label_opts=opts.LabelOpts(is_show=False),
        )
            .add_yaxis(
            series_name="Java",
            y_axis=sub_dict['sub_5'],
            label_opts=opts.LabelOpts(is_show=False),
        )
            .add_yaxis(
            series_name="JavaScript",
            y_axis=sub_dict['sub_6'],
            label_opts=opts.LabelOpts(is_show=False),
        )
            .add_yaxis(
            series_name="PHP",
            y_axis=sub_dict['sub_7'],
            label_opts=opts.LabelOpts(is_show=False),
        )
            .add_yaxis(
            series_name="VBS",
            y_axis=sub_dict['sub_8'],
            label_opts=opts.LabelOpts(is_show=False),
        )
            .add_yaxis(
            series_name="易语言",
            y_axis=sub_dict['sub_9'],
            label_opts=opts.LabelOpts(is_show=False),
        )
        .set_global_opts(
            title_opts=opts.TitleOpts(title=request.session['s'].name),
            tooltip_opts=opts.TooltipOpts(trigger="axis"),
            yaxis_opts=opts.AxisOpts(
                type_="value",
                axistick_opts=opts.AxisTickOpts(is_show=True),
                splitline_opts=opts.SplitLineOpts(is_show=True),
            ),
            xaxis_opts=opts.AxisOpts(type_="category", boundary_gap=False),
        )
        # .render("stacked_line_chart.html")
    )
    return HttpResponse(c.render_embed())

# 下载
def download(request):
    # 设置HTTPResponse的类型
    response = HttpResponse(content_type='applicationnd.ms-excel')
    response['Content-Disposition'] = 'attachment;filename=test.xls'
    # 创建一个文件对象
    wb = xlwt.Workbook(encoding='utf8')
    # 创建一个sheet对象
    sheet = wb.add_sheet('order-sheet')

    # 设置文件头的样式,这个不是必须的可以根据自己的需求进行更改
    style_heading = xlwt.easyxf("""
            font:
                name Arial,
                colour_index white,
                bold on,
                height 0xA0;
            align:
                wrap off,
                vert center,
                horiz center;
            pattern:
                pattern solid,
                fore-colour 0x19;
            borders:
                left THIN,
                right THIN,
                top THIN,
                bottom THIN;
            """)

    # 写入文件标题
    sheet.write(0, 0, '科目', style_heading)
    sheet.write(0, 1, '成绩', style_heading)
    sheet.write(0, 2, '学期', style_heading)

    # 写入数据
    data_row = 1
    # UserTable.objects.all()这个是查询条件,可以根据自己的实际需求做调整.
    s = Chengji.objects.filter(s_id=request.session['s'].id)

    for i in s:
        sheet.write(data_row, 0, i.c_id.name)
        sheet.write(data_row, 1, i.cheng)
        sheet.write(data_row, 2, i.x_id.xueqi)
        data_row = data_row + 1

    # 写出到IO
    output = BytesIO()
    wb.save(output)
    # 重新定位到开始
    output.seek(0)
    response.write(output.getvalue())
    return response

# 教师登录
def teacherlogin(request):
    if request.method=="GET":
        return render(request,'teacherlogin.html')
    else:
        teaNumber = request.POST.get("teaNumber")
        teaName = request.POST.get("teaName")
        t = Teacher.objects.filter(number=teaNumber, name=teaName).first()
        if t:
            request.session['t'] = t
            # return HttpResponse('登录成功')
            return redirect("show_teacher")
        else:
            return HttpResponse("工号或姓名错误")

# 展示所有学生所有成绩
def show_teacher(request):
    tea_1 = Teacher.objects.filter(id=request.session['t'].id).first()
    # print(tea_1)
    gg = Grade.objects.all()
    # print(gg)
    stu_li = []
    chenji = []
    # 查询此老师所带班级
    for g in gg:
        if g.t_id_id == tea_1.id:
            # print(g.classname)
            Stu = Student.objects.filter(g_id=g.id).all()
            stu_li.append(Stu)
            # print('llllllll',stu_li)
    # print(stu_li)
    # 查询班级内所有学生成绩
    for stu in stu_li:
        for s in stu:
            chen = Chengji.objects.filter(s_id=s).all()
            chenji.append(chen)
        # print('-------------',s)
    # print(chenji)
    # 分页
    paginator = Paginator(chenji, 4)
    page = request.GET.get('page')
    contacts = paginator.get_page(page)
    # 查询所有科目
    kemu = Calss.objects.all()
    li = [1,2,3,4]
    return render(request,'teachershow.html',{
        'kemu':kemu,
        'li':li,
        "contacts":contacts
    })

# 自动添加数据  不可用
# def insert_data(request):
#     from random import randint
#     stu_list = Student.objects.all()
#     for stu in stu_list:
#         # if stu.score_set.all():
#         #     continue
#         subject_list = ['Python', 'C', 'C#', 'C++', 'Java', 'JavaScript', 'PHP', 'VBS', '易语言']
#         for subject in subject_list:
#             if Calss.objects.filter(name=subject).first():
#                 continue
#             Calss.objects.create(name=subject)
#         time_list = ['第一学期', '第二学期', '第三学期', '第四学期']
#         for time in time_list:
#             if Xueqi.objects.filter(xueqi=time).first():
#                 continue
#             Xueqi.objects.create(xueqi=time)
#         for i in range(1,5):
#             for j in range(1,10):
#                 Chengji.objects.create(cheng=randint(1,100), s_id_id=stu.id, c_id_id=j, x_id_id=i)
#     return HttpResponse('Success')
