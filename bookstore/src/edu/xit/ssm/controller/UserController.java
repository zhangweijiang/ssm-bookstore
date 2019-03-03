package edu.xit.ssm.controller;
import java.io.File;


import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import edu.xit.ssm.po.Users;
import edu.xit.ssm.service.UsersService;

@Controller
public class UserController {

	@Autowired
	private UsersService usersService;

	// 注册新用户
	@RequestMapping("/insertUser")
	public String insertUser(Users user) throws Exception {
		
		user.setTx("pic03.jpg");
		usersService.insertUser(user);

		return "redirect:login.jsp";
	}
	

	
	// 登录
	@RequestMapping("/login")
	public String selectUser(Model modelAndView, HttpServletRequest request, Users user)
			throws Exception {
		int i = 0;
		List<Users> users = usersService.selectUsers();
		for (Users u : users) {
			if (u.getUsername().equals(user.getUsername())
					&& u.getPassword().equals(user.getPassword())) {
				i = 1;
				request.getSession().setAttribute("user", u);
			}
		}
		System.out.println(i);
		if (i == 1) {
			
			modelAndView.addAttribute("user", request.getSession().getAttribute("user"));
			return "index";
		} else {
			
			modelAndView.addAttribute("error",  "您输入的账号或者密码有错,请重新输入！");
			return "login";
		}

	}

	//修改用户资料
	@RequestMapping("/updateUser")
	public String updateUser(@RequestParam("file") CommonsMultipartFile file,  
            HttpServletRequest request,@ModelAttribute("user") Users user) throws Exception {
		 // 获得原始文件名  
        String fileName = file.getOriginalFilename();  
        System.out.println("原始文件名:" + fileName);  
        // 新文件名  
        String newFileName = UUID.randomUUID() + fileName;  
        if(fileName.equals("")){
        	
        }else{
        	user.setTx(newFileName);
        }
        
        // 获得项目的路径  
        ServletContext sc = request.getSession().getServletContext();  
        // 上传位置  
        String path = sc.getRealPath("/images/person") + "/"; // 设定文件保存的目录  
  
        File f = new File(path);  
        if (!f.exists())  
            f.mkdirs();  
        if (!file.isEmpty()) {  
            try {  
                FileOutputStream fos = new FileOutputStream(path + newFileName);  
                InputStream in = file.getInputStream();  
                int b = 0;  
                while ((b = in.read()) != -1) {  
                    fos.write(b);  
                }  
                fos.close();  
                in.close();  
            } catch (Exception e) {  
                e.printStackTrace();  
            }  
        }  
        
		usersService.updateUser(user);
		request.getSession().removeAttribute("user");
		request.getSession().setAttribute("user", user);
		return "redirect:index.jsp";
	}
	
	
	// json验证用户名是否重复
	@RequestMapping("/validateUser")
	public @ResponseBody int validateUser(@RequestBody Users user)
			throws Exception {
		int i = 0;

		List<Users> users = usersService.selectUsers();
		for (Users u : users) {
			if (u.getUsername().equals(user.getUsername())) {
				i = 1;
			}
		}
		if (i == 1) {
			return 1;
		} else {
			return 0;
		}
	}
	
	//列表
	@RequestMapping("/queryUsers")
	public ModelAndView queryUsers() throws Exception {
		
		ModelAndView modelAndView = new ModelAndView();
		List<Users> userList = usersService.selectUsers();
		modelAndView.addObject("userList",userList);
		modelAndView.setViewName("usersmanager");
		
		return modelAndView;
	}
	
	//删除用户
	@RequestMapping("/deleteUser")
	public String deleteUser(Integer id) throws Exception{
		
		usersService.deleteUser(id);
		
		return "redirect:queryUsers.action";
	}
	
	
	//用户退出
	@RequestMapping("exitUser")
	public String outUser(Model model,HttpServletRequest request)throws Exception{
		
		request.getSession().removeAttribute("user");
		
		return "login";
		
	}
	

}
