<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*,swu.edu.cn.sql.*,swu.edu.cn.bean.*,swu.edu.cn.sql.DBConnection,java.sql.ResultSet"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>南川区科学发展工作考核网</title>
<link href="../css/css.css" rel="stylesheet" type="text/css" />
<script src="../js/Clock.js" type=text/javascript></script>
<style type='text/css'>
			table.xiangmu td {
				border-bottom:1px solid #6F9FC0;
				border-right:1px solid #6F9FC0;
				text-align:center;
				overflow:hidden;
				font-size:12px;
				padding:3px;			
				}
			table.xiangmu th{
				border:1px solid #9AB5D0;	
				padding:3px;
				font-size:15px;
			}
			.borderleft {
				border-left:1px solid #6F9FC0;
			}
			.tdleft{
				text-align:left;
			}
			a{
				text-decoration:none;
				color:black;
			}
</style>
<%	String position;
	String href1="#";
	Object position1 = session.getAttribute("position");
	if(position1==null){
		position="bumen";
		href1= "../index_duty/dutyIndicatorB.jsp";
	}
	else{
		position=position1.toString();
		if(position.equals("department")){
			position = "bumen";
			href1= "../index_duty/dutyIndicatorB.jsp";
		}
		else if(position.equals("qufenguan_lead")){
			position = "qufenguan";
			href1= "../index_qfg/qfgProjectReview.jsp";
		}
		else if(position.equals("duchashi_lead")){
			position = "ducahshi";
			href1= "../index_dcs/dcsProjectReview.jsp";
		}
		else if(position.equals("lead_lead")){
			position = "leader";
			href1 = "../index_leader/leadProjectPS.jsp";
		}
	}
 %>
<script type='text/javascript'>
	function aa (){	//链接到下一个页面
		
	}
</script>
</head>
<body>
<div class="zhong" >
  <div class="banner"><embed src="../images/nanchuan2.swf" style="width:1000px;height:150px;"></embed></div>
  <div class="menu" >
    <div class="menusel" style="width:95px;">
      <h2><a href="index.jsp">首页</a></h2>
    </div>
    <div id="menu1" class="menusel">
      <h2><a href="departClassify.jsp">部门分类</a></h2>
      <div class="position">
        <ul class="clearfix typeul">
        </ul>
      </div>
    </div>
    <div id="menu2" class="menusel">
      <h2><a href="indicatorBrowse.jsp">指标浏览</a></h2>
      <div class="position">
        <ul class="clearfix typeul">
        </ul>
      </div>
    </div>
    <div id="menu3" class="menusel">
      <h2><a href="<%=href1 %>">项目管理</a></h2>
      <div class="position">
        <ul class="clearfix typeul">
         <% if(position.equals("bumen")){ %>
          <li><a href="../index_duty/dutyIndicatorB.jsp">责任项目</a></li>
	   	  <li><a href="../index_duty/dutyProjectReview.jsp">项目审核</a></li>
		  <li><a href="../index_duty/dutyProgressReport.jsp">进度申报</a></li>
		  <li><a href="../index_duty/dutyProgressReportF.jsp">重新申报</a></li>
		<%}else if(position.equals("qufenguan")){ %>
		  <li><a href="../index_qfg/qfgProjectReview.jsp">区领导审核</a></li>
		<%}else if(position.equals("duchashi")){ %>
		  <li><a href="../index_dcs/dcsProjectReview.jsp">督查室审核</a></li>
		<%}else{ %>
		  <li><a href="../index_leader/leadProjectPS.jsp">领导批示</a></li>
		<%} %>
		  <li class="lli"><a href="projectInquires.jsp">搜索</a></li>
        </ul>
      </div>
    </div>    
    <div id="menu4" class="menusel">
      <h2><a href="#">下载中心</a></h2>
       <div class="position">
        <ul class="clearfix typeul">
        </ul>
      </div>
    </div>
    <div id="menu5" class="menusel">
      <h2><a href="#">在线留言</a></h2>
      <div class="position">
        <ul class="clearfix typeul">
          <li><a href="#">发表留言</a></li>
          <li><a href="#">留言列表</a></li>
          <li><a href="#">留言</a></li>
          <li><a href="#">建议</a></li>
          <li class="lli"><a href="#">投诉</a></li>
        </ul>
      </div>
    </div>
    <div style="float:right;height:36px;width:240px;">
    	<input type="text" name="search" style="height:18px;width:160px;margin-top:7px;float:left;margin-right:5px;"/>
        <input type="image" src="../images2/12.png" style="float:right" onclick="javascript:alert('正在搜索...')"/>
    </div>
  </div>
 
  <div class="main">
  <div style="min-height:560px;color:black;height:auto;">
  	<div id="departClassify_top" style="height:20px;margin-bottom:10px">
        <div style="margin-left:10px;margin-right:10px;float:right"><span id="clock"></span></div>
        <div style='float:left;margin-right:100px'>欢迎  [<%=session.getAttribute("departmentName")%>] [<%=session.getAttribute("realName")%>] 光临</div>
        <div style="float:left"><span style="font-weight:bold">当前位置：</span>
                <a href="index.jsp" style="color:rgb(120,48,120);">南川考评网</a>&gt;
                <a href="departClassify.jsp" style="color:rgb(120,48,120);">部门分类</a>&gt;
                <%String dpName = request.getParameter("dpName");
                  dpName = new String(dpName.getBytes("ISO8859-1"),"UTF-8");%>
                <span style="color:rgb(120,48,120);"><%=dpName%></span>
        </div>
    </div>
    <hr style='width:976px;height:3px; margin:0 10px 5px 10px;'></hr>
  	<div id="right" style="width:976px;height:auto;margin:0 10px 5px 5px;border:1px solid lightblue;min-height:500px;">      
      	<table class='xiangmu' width='976px' style="border-collapse:collapse;border-spacing:0;">
			<tr style='background:#6699CC ' style='height:30px'>
				<th width='20px' class='borderleft'>
					<span>编号</span>
				</th>
				<th width='100px' >
					<span>考核指标</span>
				</th>
				<th width='100px'>
					<span>牵头责任单位</span>
				</th>
				<th width='100px'>
					<span>区分管领导</span>
				</th>
				<th width='260px'>
					<span>考核标准</span>
				</th>	
				<th width='396px'>
					<span>完成情况</span>
				</th>																												
			</tr>
		<%	
			String departmentId = request.getParameter("dpId");
			EvaluationManagement  em=new EvaluationManagement();
			em.OpenDB();
			ArrayList<EvaluationBean> list=em.searchEvaluaionByDepartment(departmentId);									
			for(EvaluationBean eb:list){
				String id = eb.getEvaluationId().substring(10);
				out.print("<tr><td width='20px' class='borderleft'>"+id+"</td>");
				out.print("<td width='100px'><a href='departIC_classify.action?dpId="+departmentId+"&evaId="+eb.getEvaluationId()+"&dpName="+dpName+"'>"+eb.getEvaluationContent()+"[<font style='color:rgb(21.2%, 43.1%, 72.9%);'>详情</font>]</a></td>");
				out.print("<td width='100px'>"+eb.getLeadDepartmentName()+"</td>");
				out.print("<td width='100px'>"+eb.getSeparateLeader()+"</td>");
				out.println("<td width='260px'>"+eb.getEvaluationStandard()+"</td>");
				out.println("<td width='260px' class='tdleft'>"+eb.getCurrentFinish()+"</td></tr>");															
			}
			em.CloseDB();
		 %>
		 </table>
    </div>
  </div>
  <div class="bottom">
  <table cellpadding="3" cellspacing="0" width="100%">
  	<tr>
    	<td style='font-size:25px;border-right:1px solid lightblue;height:70px;width:500px;'>
        	南川区综合考评委员会办公室
        </td>
        <td>
        	<table border="0" cellpadding="" cellspacing="1" width="80%" style="text-align:left;margin-left:50px;font-size:13px">
            	<tbody>
                	<tr>
                    	<td style="color:red">
                        	<a href="#" target="_blank" style="color:red">网站简介</a>&nbsp;&nbsp;|&nbsp;
                            <a href="#" target="_blank" style="color:red">联系我们</a>&nbsp;&nbsp;|&nbsp;
                            <a href="#" target="_blank" style="color:red">保存网站</a>&nbsp;&nbsp;|&nbsp;
                        </td>
                    </tr>
                    <tr><td>Copyright &copy; 2012 南川区综合考评委员会办公室</td></tr>
                    <tr><td>技术支持：1007工作室</td></tr>
                    <tr><td>自2012年5月1日起，您是本站第21926位访问者</td></tr>
                </tbody>
            </table>
        </td>
    </tr>
  </table>
 </div>
</div>
</div>
<script type=text/javascript>
    var clock = new Clock();
    clock.display(document.getElementById("clock"));
</script>
<script src="../js/meun.js" type="text/javascript"></script>
</body>
</html>