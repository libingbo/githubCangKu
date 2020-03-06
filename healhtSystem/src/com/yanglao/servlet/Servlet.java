package com.yanglao.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.jms.Session;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.yanglao.javabean.Admin;
import com.yanglao.javabean.UserInfo;
import com.yanglao.javabean.Worker;
import com.yanglao.javabean.ZhiBan;
import com.yanglao.javabean.Zyz;
import com.yanglao.service.imp.AdminServiceImp;
import com.yanglao.service.imp.HealthServiceImp;
import com.yanglao.service.imp.UserInfoImp;
import com.yanglao.service.imp.WorkerServerImp;
import com.yanglao.service.imp.ZhenDuanServiceImp;
import com.yanglao.service.imp.ZhiBanServiceImp;
import com.yanglao.service.imp.ZyzServiceImp;

@Controller
public class Servlet{
	@Autowired
	private UserInfoImp userinfoimp;
	
	@Autowired
	private  WorkerServerImp workerServerImp;
	
	@Autowired
	private  ZhiBanServiceImp zhibanserviceimp;
	
	@Autowired
	private ZyzServiceImp  zyzserviceimp;
	
	@Autowired
	private HealthServiceImp helathserviceimp;
	
	@Autowired
	private ZhenDuanServiceImp zhenduanserviceimp;
	
	@Autowired
	private AdminServiceImp adminserviceimp;
	
	
	//老人查询  时的处理
	@RequestMapping("oldMan")
	public String oldMan(HttpServletRequest req, HttpServletResponse resp)
	{
		HttpSession  session = req.getSession();
		session.setAttribute("findState", 0); //0代表查老人的表, 返回index.jsp
		session.setAttribute("returnUrl" ,  "index.jsp");
		//第二种，Mapper接口方式的调用，推荐这种使用方式。
				PageHelper.startPage(1, 10);
				List<UserInfo> list = userinfoimp.selectAll();
				PageInfo page = new PageInfo(list);
				req.setAttribute("page", page);
				HashMap< String, String> tableMap = new HashMap<String, String>();
				tableMap.put("tableInfo", "老人信息列表");
				tableMap.put("tableName", "姓名");
				tableMap.put("tableSex", "性别");
				tableMap.put("tableBirthday", "出生日期");
				tableMap.put("tableTelephone", "电话号码");
				tableMap.put("tableMessage", "索引");
				req.setAttribute("tableMap", tableMap);
				String selectInfo = "老人信息 查询";
				req.setAttribute("selectInfo", selectInfo);
				return "/index.jsp";
	}
	
	//医疗工作者  的处理
	@RequestMapping("worker")
	public String Worker(HttpServletRequest req, HttpServletResponse resp)
	{
		HttpSession  session = req.getSession();
		session.setAttribute("findState", 1); //1代表查worker的表, 返回index.jsp
		session.setAttribute("returnUrl" ,  "index.jsp");
		//第二种，Mapper接口方式的调用，推荐这种使用方式。
		PageHelper.startPage(1, 10);
		List<Worker> list = workerServerImp.selectAll();
		PageInfo page = new PageInfo(list);
		req.setAttribute("page", page);
		HashMap< String, String> tableMap = new HashMap<String, String>();
		tableMap.put("tableInfo", "医务人员信息列表");
		tableMap.put("tableName", "姓名");
		tableMap.put("tableSex", "性别");
		tableMap.put("tableBirthday", "出生日期");
		tableMap.put("tableTelephone", "电话号码");
		tableMap.put("tableMessage", "索引");
		req.setAttribute("tableMap", tableMap);
		String selectInfo = "医务人员信息 查询";
		req.setAttribute("selectInfo", selectInfo);
		return "/index.jsp";
	}
	
	//值班操作的处理
	@RequestMapping("zhiban")
	public String ZhiBan(HttpServletRequest req, HttpServletResponse resp)
	{
		HttpSession  session = req.getSession();
		session.setAttribute("findState", 2); //2代表查zhiban的表, 返回zhiban.jsp
		session.setAttribute("returnUrl" ,  "zhiban.jsp");
		//第二种，Mapper接口方式的调用，推荐这种使用方式。
				PageHelper.startPage(1, 10);
				List<ZhiBan> list = zhibanserviceimp.selectAll();
				PageInfo page = new PageInfo(list);
				req.setAttribute("page", page);
				HashMap< String, String> tableMap = new HashMap<String, String>();
				tableMap.put("tableInfo", "值班人员信息列表");
				tableMap.put("tableName", "姓名");
				tableMap.put("tableData", "值班日期");
				tableMap.put("tableTime", "值班时间");
				tableMap.put("tableMessage", "备注");
				req.setAttribute("tableMap", tableMap);
				String selectInfo = "值班人员信息 查询";
				req.setAttribute("selectInfo", selectInfo);
				return "/zhiban.jsp";
	}
	
	//首页
	@RequestMapping("home")
	public String home(HttpServletRequest req, HttpServletResponse resp)
	{
		return "/home.jsp";
	}
	
	
	//志愿者操作的处理
		@RequestMapping("zyz")
		public String Zyz(HttpServletRequest req, HttpServletResponse resp)
		{
			HttpSession  session = req.getSession();
			session.setAttribute("findState", 3); //3代表查志愿者的表, 返回zhiban.jsp
			session.setAttribute("returnUrl" ,  "zhiban.jsp");
			//第二种，Mapper接口方式的调用，推荐这种使用方式。
					PageHelper.startPage(1, 10);
					List<Zyz> list = zyzserviceimp.selectAllZyz();
					PageInfo page = new PageInfo(list);
					req.setAttribute("page", page);
					HashMap< String, String> tableMap = new HashMap<String, String>();
					tableMap.put("tableTX", "头像");
					tableMap.put("tableInfo", "志愿者信息列表");
					tableMap.put("tableName", "姓名");
					tableMap.put("tableData", "加入日期");
					tableMap.put("tableTime", "工作时长");
					tableMap.put("tableMessage", "个人宣言");
					req.setAttribute("tableMap", tableMap);
					String selectInfo = "志愿者信息 查询";
					req.setAttribute("selectInfo", selectInfo);
					return "/zhiban.jsp";
		}
		
		//医务人员界面
		@RequestMapping("doctor")
		public String doctor(HttpServletRequest req, HttpServletResponse resp)
		{
			req.setAttribute("src", "");
			return "doctor.jsp";
		}
		
		//医护人员添加老人信息
		@RequestMapping("doctorAddOldMan")
		public String doctorAddOldMan(HttpServletRequest req, HttpServletResponse resp)
		{
			req.setAttribute("src", "local/andOldMan.jsp");
			return "doctor.jsp";
		}
		
		//医护人员添加诊断信息
		@RequestMapping("doctorAddManInfo")
		public String doctorAddManInfo(HttpServletRequest req, HttpServletResponse resp)
		{
			req.setAttribute("src", "local/doctorAddManInfo.jsp");
			return "doctor.jsp";
		}
		
		//医护人员添加老人信息
		@RequestMapping("doctorDelOldMan")
		public String doctorDelOldMan(HttpServletRequest req, HttpServletResponse resp)
		{
			req.setAttribute("src", "local/doctorDelOldMan.jsp");
			return "doctor.jsp";
		}
		
		
		//医护人员登录检查
		@RequestMapping("doctorLoginCheck")
		public String doctorLoginCheck(HttpServletRequest req, HttpServletResponse resp)
		{
			String name = req.getParameter("name");
			
			String password = req.getParameter("password");
			Worker wok = workerServerImp.selectWorkerByName(name, password);
			if(wok == null)
			{
				req.setAttribute("loginState", 0);
				return "home.jsp";
			}
			else {
			    return "doctor.jsp";
			}
		}
		
		//添加老人信息
		@RequestMapping("insertOldMan")
		public String  insertOldMan(HttpServletRequest req, HttpServletResponse resp)
		{
			String name = req.getParameter("name");
			String sex =  req.getParameter("sex");
			String birthday = req.getParameter("birthday");
			String photo = null;
			String telephone = req.getParameter("telephone");
			String email = req.getParameter("email");
			String address = req.getParameter("address");
			String hobby = req.getParameter("hobby");
			String registerTime = null;
			String mm = req.getParameter("mm");
			int i = userinfoimp.insertOldMan(name, sex, birthday, photo, telephone, email, address, hobby, registerTime, mm);
			System.out.print("*********************************" + i);
			req.setAttribute("info", "老人信息已插入到数据库");
			return "/local/insertReturn.jsp";
		}
		
		
		//添加诊断信息
		@RequestMapping("insertZhenDuanInfo")
		public String insertZhenDuanInfo(HttpServletRequest req, HttpServletResponse resp)
		{
			//请求变量依次是:
			// name , sex , testDate(诊断日期) , xinlv, xueya , hxpl ,tiwen ,tizhong ,healthDesc(健康状况), doctor
			String name = req.getParameter("name");
			String sex = req.getParameter("sex");
			String testDate = req.getParameter("testDate");
			int xinlv = Integer.valueOf(req.getParameter("xinlv"));
			int  xueya = Integer.valueOf(req.getParameter("xueya"));
			int hxpl = Integer.valueOf(req.getParameter("hxpl"));
			int tiwen = Integer.valueOf(req.getParameter("tiwen"));
			int tizhong = Integer.valueOf(req.getParameter("tizhong"));
			String healthDesc = req.getParameter("healthDesc");
			String doctor = req.getParameter("doctor");
			int state = helathserviceimp.insertHealth(name, xinlv, xueya, hxpl, tiwen, tizhong, healthDesc, testDate);
			int state2 = zhenduanserviceimp.insertZhenDuan(1, doctor, testDate, name, "已完成");
			if((state == 1) && (state2 == 1))
			{
				req.setAttribute("info", "已录入老人的健康信息  . 此次操作人:"+doctor +"-----操作对象:"+name+"-----操作时间:"+testDate);
			}
			else
			{
				req.setAttribute("info", "抱歉! 服务器繁忙 , 请稍后重试");
			}
			
			return "/local/insertReturn.jsp";
		}
		
		//删除老人信息
		@RequestMapping("deleteOldMan")
		public String deleteOldMan(HttpServletRequest req, HttpServletResponse resp)
		{
			String name = req.getParameter("name");
			String doctor = req.getParameter("doctor");
			int state = userinfoimp.deleteOldMan(name);
			if(state ==1)
			{
				req.setAttribute("info", "已删除老人信息 , 删除对象:"+name +"---执行人:"+doctor);
			}
			else
			{
				req.setAttribute("info", "抱歉! 服务器繁忙 , 请稍后重试");
			}	
			return "/local/insertReturn.jsp";
		}
		
		
		//登录
		@RequestMapping("login")
		public String login(HttpServletRequest req, HttpServletResponse resp)
		{
			String name = req.getParameter("name");
			String mm = req.getParameter("mm");
			UserInfo user  = userinfoimp.selectByLogin(name, mm);
			//这里在返回时给分页一个值 , 不然会报错 . 以为index.jsp等着分页插件去渲染
			//第二种，Mapper接口方式的调用，推荐这种使用方式。
			PageHelper.startPage(1, 10);
			List<UserInfo> list = userinfoimp.selectAll();
			PageInfo page = new PageInfo(list);
			req.setAttribute("page", page);
			HashMap< String, String> tableMap = new HashMap<String, String>();
			tableMap.put("tableInfo", "老人信息列表");
			tableMap.put("tableName", "姓名");
			tableMap.put("tableSex", "性别");
			tableMap.put("tableBirthday", "出生日期");
			tableMap.put("tableTelephone", "电话号码");
			tableMap.put("tableMessage", "索引");
			req.setAttribute("tableMap", tableMap);
			String selectInfo = "老人信息 查询";
			req.setAttribute("selectInfo", selectInfo);
			if(user == null)
			{
				//没有查到用户
				req.setAttribute("state", 0);
				req.setAttribute("info", "用户名或密码错误");
			}
			else 
			{
				//查到了用户
				req.setAttribute("state", 1);
				HttpSession session = req.getSession();
				session.setAttribute("name", user.getName());  //把用户名存在session里
				req.setAttribute("info", "登录成功");
			}
			return "index.jsp";
		}
		
		//登出
		@RequestMapping("loginOut")
		public String loginOut(HttpServletRequest req, HttpServletResponse resp)
		{
			HttpSession session = req.getSession();
			String name = (String) session.getAttribute("name");
			//这里在返回时给分页一个值 , 不然会报错 . 以为index.jsp等着分页插件去渲染
			//第二种，Mapper接口方式的调用，推荐这种使用方式。
			PageHelper.startPage(1, 10);
			List<UserInfo> list = userinfoimp.selectAll();
			PageInfo page = new PageInfo(list);
			req.setAttribute("page", page);
			HashMap< String, String> tableMap = new HashMap<String, String>();
			tableMap.put("tableInfo", "老人信息列表");
			tableMap.put("tableName", "姓名");
			tableMap.put("tableSex", "性别");
			tableMap.put("tableBirthday", "出生日期");
			tableMap.put("tableTelephone", "电话号码");
			tableMap.put("tableMessage", "索引");
			req.setAttribute("tableMap", tableMap);
			String selectInfo = "老人信息 查询";
			req.setAttribute("selectInfo", selectInfo);
			if(name == null || name=="")
			{
				//用户还没有登录
				req.setAttribute("info", "您还没有登录");
				req.setAttribute("outState", 0);
			}
			else
			{
				req.setAttribute("outState", 1);
				req.setAttribute("info", "登出成功");
			}
			
			return "index.jsp";
		}
		
		//注册
		@RequestMapping("register")
		public String register(HttpServletRequest req, HttpServletResponse resp)
		{
			
			//这里在返回时给分页一个值 , 不然会报错 . 以为index.jsp等着分页插件去渲染
			//第二种，Mapper接口方式的调用，推荐这种使用方式。
			PageHelper.startPage(1, 10);
			List<UserInfo> list = userinfoimp.selectAll();
			PageInfo page = new PageInfo(list);
			req.setAttribute("page", page);
			HashMap< String, String> tableMap = new HashMap<String, String>();
			tableMap.put("tableInfo", "老人信息列表");
			tableMap.put("tableName", "姓名");
			tableMap.put("tableSex", "性别");
			tableMap.put("tableBirthday", "出生日期");
			tableMap.put("tableTelephone", "电话号码");
			tableMap.put("tableMessage", "详情");
			req.setAttribute("tableMap", tableMap);
			String selectInfo = "老人信息 查询";
			req.setAttribute("selectInfo", selectInfo);
			
			
			String name = req.getParameter("name");
			String sex =  req.getParameter("sex");
			String birthday = "2020-03-12 23:52:50.0";
			String photo = null;
			String telephone = req.getParameter("telephone");
			String email = req.getParameter("email");
			String address = req.getParameter("address");
			String hobby = req.getParameter("hobby");
			String registerTime = null;
			String mm = req.getParameter("mm");
			int i = userinfoimp.insertOldMan(name, sex, birthday, photo, telephone, email, address, hobby, registerTime, mm);
			System.out.print("*********************************" + i);
			req.setAttribute("register", 1);
			req.setAttribute("info", "注册成功!");
			return "index.jsp";
		}
		
		//进入社区
		@RequestMapping("sq")
		public String sq()
		{
			return "sq.jsp";
		}
			
		
		//超级管理员登入
		@RequestMapping("admin")
		public String admin(HttpServletRequest req, HttpServletResponse resp)
		{
			String name = req.getParameter("name");
			String mm = req.getParameter("mm");
			Admin admin = adminserviceimp.selectAdminByName(name, mm);
			if(admin == null)
			{
				//没有找到管理员
				return "home.jsp";
			}
			else 
			{
				return "admin.jsp";
			}
		}
		
		//处理添加医护人员的请求
		@RequestMapping("adminAddDoctor")
		public String adminAddDoctor(HttpServletRequest req, HttpServletResponse resp)
		{
			req.setAttribute("src", "local/adminAddDoctor.jsp");
			return "admin.jsp";
		}
		
		//处理添加医护人员的请求
		@RequestMapping("adminDelDoctor")
		public String adminDelDoctor(HttpServletRequest req, HttpServletResponse resp)
		{
			req.setAttribute("src", "local/adminDelDoctor.jsp");
			return "admin.jsp";
		}
		
		
		//添加医护人员
		@RequestMapping("addDoctor")
		public String addDoctor(HttpServletRequest req, HttpServletResponse resp)
		{
			String name = req.getParameter("name");
			String sex = req.getParameter("sex");
			String zizhi = req.getParameter("zizhi");
			String telephone = req.getParameter("telephone");
			String mm = req.getParameter("mm");
			String email = req.getParameter("email");
			String birthday = req.getParameter("birthday");
			int i = workerServerImp.insertWorker(name, sex, birthday, zizhi, telephone, email, mm);
			if(i==0)
			{
				req.setAttribute("info", "抱歉! 服务器繁忙 , 请稍后重试");
			}
			else
			{
				req.setAttribute("info", "已添加医护人员 , 医护姓名:"+name);
			}
			return "/local/insertReturn.jsp";
		}
		
		
		//删除医护人员
		@RequestMapping("deleteDoctor")
		public String deleteDoctor(HttpServletRequest req, HttpServletResponse resp)
		{
			String name = req.getParameter("name");
			Worker worker = workerServerImp.selectToDoctor(name);
			if(worker == null)
			{
				//删除前先查看有么有这个人
				req.setAttribute("info", "抱歉! 您要删除的医护人员不存在 ,请核实后再删除");
				return "/local/insertReturn.jsp";
			}
			else
			{
				int i = workerServerImp.delWorkerByName(name);
				if(i==0)
				{
					//删除失败
					req.setAttribute("info", "抱歉! 服务器繁忙 ,请稍后再试");
					return "/local/insertReturn.jsp";
				}
			}
			req.setAttribute("info", "已删除医护人员. 被删除人姓名:"+name);
			return "/local/insertReturn.jsp";
		}
		
		
		//查看社区人员
		@RequestMapping("lookSq")
		public  String lookSq(HttpServletRequest req, HttpServletResponse resp)
		{
			req.setAttribute("src", "local/sqinfo.jsp");
			return "admin.jsp";
		}
		
		
		//查找的功能
		@RequestMapping("find")
		public String find(HttpServletRequest req, HttpServletResponse resp)
		{
			String name = req.getParameter("name");
			//0-userinfo  1-worker  2-zhiban  3-zyz
			HttpSession session = req.getSession();
			String url = (String) session.getAttribute("returnUrl");
			int i = (Integer) session.getAttribute("findState");
			switch (i) {
			case 0:
				//第二种，Mapper接口方式的调用，推荐这种使用方式。
				PageHelper.startPage(1, 10);
				UserInfo linshi = userinfoimp.findOldMan(name);
				List list0 = new ArrayList<UserInfo>();
				list0.add(linshi);
				PageInfo page0 = new PageInfo(list0);
				req.setAttribute("page", page0);
				HashMap< String, String> tableMap0 = new HashMap<String, String>();
				tableMap0.put("tableInfo", "老人信息列表");
				tableMap0.put("tableName", "姓名");
				tableMap0.put("tableSex", "性别");
				tableMap0.put("tableBirthday", "出生日期");
				tableMap0.put("tableTelephone", "电话号码");
				tableMap0.put("tableMessage", "索引");
				req.setAttribute("tableMap", tableMap0);
				String selectInfo0 = "老人信息 查询";
				req.setAttribute("selectInfo", selectInfo0);
				return "/"+url;
			case 1:
				//第二种，Mapper接口方式的调用，推荐这种使用方式。
				PageHelper.startPage(1, 10);
				Worker workerlinshi = workerServerImp.selectToDoctor(name);
				System.out.print("***************************************************"+workerlinshi.toString());
				List list1 = new ArrayList<UserInfo>();
				list1.add(workerlinshi);
				PageInfo page1 = new PageInfo(list1);
				HashMap< String, String> tableMap1 = new HashMap<String, String>();
				tableMap1.put("tableInfo", "医务人员信息列表");
				tableMap1.put("tableName", "姓名");
				tableMap1.put("tableSex", "性别");
				tableMap1.put("tableBirthday", "出生日期");
				tableMap1.put("tableTelephone", "电话号码");
				tableMap1.put("tableMessage", "索引");
				req.setAttribute("tableMap", tableMap1);
				String selectInfo1 = "医务人员信息 查询";
				req.setAttribute("selectInfo", selectInfo1);
				return "/"+url;
			case 2:
				//第二种，Mapper接口方式的调用，推荐这种使用方式。
				PageHelper.startPage(1, 10);
				ZhiBan zhibanlinshi = zhibanserviceimp.selectZhiBanByName(name);
				List list2 = new ArrayList<ZhiBan>();
				list2.add(zhibanlinshi);
				PageInfo page2 = new PageInfo(list2);
				req.setAttribute("page", page2);
				HashMap< String, String> tableMap = new HashMap<String, String>();
				tableMap.put("tableInfo", "值班人员信息列表");
				tableMap.put("tableName", "姓名");
				tableMap.put("tableData", "值班日期");
				tableMap.put("tableTime", "值班时间");
				tableMap.put("tableMessage", "备注");
				req.setAttribute("tableMap", tableMap);
				String selectInfo = "值班人员信息 查询";
				req.setAttribute("selectInfo", selectInfo);
				return "/"+url;
			case 3:
				//第二种，Mapper接口方式的调用，推荐这种使用方式。
				PageHelper.startPage(1, 10);
				Zyz zhiyuanzhe =  zyzserviceimp.selectZyzByName(name);
				List list3 = new ArrayList<ZhiBan>();
				list3.add(zhiyuanzhe);
				PageInfo page3 = new PageInfo(list3);
				req.setAttribute("page", page3);
				HashMap< String, String> tableMap3 = new HashMap<String, String>();
				tableMap3.put("tableTX", "头像");
				tableMap3.put("tableInfo", "志愿者信息列表");
				tableMap3.put("tableName", "姓名");
				tableMap3.put("tableData", "加入日期");
				tableMap3.put("tableTime", "工作时长");
				tableMap3.put("tableMessage", "个人宣言");
				req.setAttribute("tableMap", tableMap3);
				String selectInfo3 = "志愿者信息 查询";
				req.setAttribute("selectInfo", selectInfo3);
				return "/"+url;
			default:
				return "/home.jsp";
			}
		}
}

