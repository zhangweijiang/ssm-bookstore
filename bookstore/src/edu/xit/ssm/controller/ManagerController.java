package edu.xit.ssm.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import edu.xit.ssm.po.Manager;
import edu.xit.ssm.service.ManagerService;

@Controller
public class ManagerController {
	
	@Autowired
	private ManagerService managerService;
	
	
	//管理员登陆
	@RequestMapping("/selectManagers")
	public String selectManagers(ModelAndView modelAndView , HttpServletRequest request,Manager manager) throws Exception{
		int i = 0;
		List<Manager> managers = managerService.selectManagers();
		for (Manager m : managers) {
			if (m.getManagerName().equals(manager.getManagerName())
					&& m.getManagerPassword().equals(manager.getManagerPassword())) {
				i = 1;
				request.getSession().setAttribute("manager", m);
			}
		}
		System.out.println(i);
		if (i == 1) {
			
			modelAndView.addObject("manager", request.getSession().getAttribute("manager"));
			
			return "managerIndex";
		} else {
			String error = "您输入的账号或者密码有错！请重新输入！";
			modelAndView.addObject("error", error);
			return "managerLogin";
		}
		
	}
	
		//管理员退出
		@RequestMapping("exitManager")
		public String outUser(Model model,HttpServletRequest request)throws Exception{
			
			request.getSession().removeAttribute("manager");
			
			return "managerLogin";
			
		}
	
	
}
