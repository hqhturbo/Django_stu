from io import BytesIO
from django.shortcuts import *
from apps.models import *
import pyecharts.options as opts
from pyecharts.charts import Line
import xlwt
from django.core.paginator import EmptyPage, PageNotAnInteger, Paginator
from django.shortcuts import render

def login(request):
    if request.method == "GET":
        return render(request,"login.html")
    else:
        stuNumber = request.POST.get("stuNumber")
        stuName = request.POST.get("stuName")
        s = Student.objects.filter(number=stuNumber,name=stuName).first()
        # sid = s.id
        if s:
             s = request.session['s'] = s
             return redirect("show")
        else:
            return HttpResponse("学号或姓名错误")

def listing(request):
    chengji_list = chengji.objects.all()
    # print(chengji_list)
    paginator = Paginator(chengji_list, 20) # Show 25 contacts per page

    page = request.GET.get('page')
    contacts = paginator.get_page(page)
    return render(request, 'list.html', {'contacts': contacts})

def show(request):
    stu_1 = Student.objects.filter(id=request.session['s'].id).first()
    clist = stu_1.chengji_set.all()
    # print(stu_1,clist)
    cheng_list = []
    cheng_dict = {}
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
    paginator = Paginator(cheng_li, 5)  # Show 25 contacts per page
    page = request.GET.get('page')
    contacts = paginator.get_page(page)

    sub_dict={}
    for i in range(1,10):
        chen_list=[]
        for chen in clist:
            if chen.c_id_id == i:
                chen_list.append(chen.cheng)
        sub_dict['sub_{}'.format(i)]=chen_list
    sub_dict = request.session['sub_dict'] = sub_dict

    calss_list=[]
    for ca in calss.objects.all():
        calss_list.append(ca.name)
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
    kemu = calss.objects.all()

    return render(request,'show.html',{
        "clist":score_list,
        "kemu":kemu,
        "contacts":contacts
    })

def brokenline(request,c_id):
    x_data=[]
    xue = xueqi.objects.all()
    for x in xue:
        x_data.append(x.xueqi)
    ke = calss.objects.filter(id=c_id).first()
    cheng =  chengji.objects.filter(s_id_id=request.session['s'].id, c_id_id=c_id)
    y_data=[]
    for c in cheng:
        y_data.append(c.cheng)
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

def bbrokenline(request):
    x_data = []
    xue = xueqi.objects.all()
    for x in xue:
        x_data.append(x.xueqi)
    sub_dict = request.session['sub_dict']
    # print(sub_dict)
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
    s = chengji.objects.filter(s_id=request.session['s'].id)

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

def teacherlogin(request):
    if request.method=="GET":
        return render(request,'teacherlogin.html')
    else:
        teaNumber = request.POST.get("teaNumber")
        teaName = request.POST.get("teaName")
        t = Teacher.objects.filter(number=teaNumber, name=teaName).first()
        if t:
            t = request.session['t'] = t
            # return HttpResponse('登录成功')
            return redirect("show_teacher")
        else:
            return HttpResponse("工号或姓名错误")

def show_teacher(request):
    tea_1 = Teacher.objects.filter(id=request.session['t'].id).first()
    # print(tea_1)
    gg = Grade.objects.all()
    # print(gg)
    stu_li = []
    chenji = []
    for g in gg:
        if g.t_id_id == tea_1.id:
            # print(g.classname)
            Stu = Student.objects.filter(g_id=g.id).all()
            stu_li.append(Stu)
            # print('llllllll',stu_li)
    # print(stu_li)
    for stu in stu_li:
        for s in stu:
            chen = chengji.objects.filter(s_id=s).all()
            chenji.append(chen)
        # print('-------------',s)
    # print(chenji)
    paginator = Paginator(chenji, 4)
    page = request.GET.get('page')
    contacts = paginator.get_page(page)
    kemu = calss.objects.all()
    li = [1,2,3,4]
    return render(request,'teachershow.html',{
        'kemu':kemu,
        'li':li,
        "contacts":contacts
    })

# def insert_data(request):
#     from random import randint
#     stu_list = Student.objects.all()
#     for stu in stu_list:
#         # if stu.score_set.all():
#         #     continue
#         subject_list = ['Python', 'C', 'C#', 'C++', 'Java', 'JavaScript', 'PHP', 'VBS', '易语言']
#         for subject in subject_list:
#             if calss.objects.filter(name=subject).first():
#                 continue
#             calss.objects.create(name=subject)
#         time_list = ['第一学期', '第二学期', '第三学期', '第四学期']
#         for time in time_list:
#             if xueqi.objects.filter(xueqi=time).first():
#                 continue
#             xueqi.objects.create(xueqi=time)
#         for i in range(1,5):
#             for j in range(1,10):
#                 chengji.objects.create(cheng=randint(1,100), s_id_id=stu.id, c_id_id=j, x_id_id=i)
#     return HttpResponse('Success')

