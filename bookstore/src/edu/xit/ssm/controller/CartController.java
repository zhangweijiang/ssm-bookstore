package edu.xit.ssm.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import edu.xit.ssm.po.Shopcart;
import edu.xit.ssm.po.Users;
import edu.xit.ssm.service.ShopcartService;

@Controller
public class CartController {
	
	@Autowired
	private ShopcartService shopcartService;
	
	@RequestMapping("/insertToCart")
	@ResponseBody
	public String insertToCart(Shopcart shopcart) throws Exception{
		shopcartService.insertToCart(shopcart);
		return "ok";
	}
	
		//购物车列表
		@RequestMapping("/queryCart")
		public ModelAndView queryCart(HttpServletRequest request,HttpServletResponse response) throws Exception {
			
			ModelAndView modelAndView = new ModelAndView();
			Users user=(Users)request.getSession().getAttribute("user");
			List<Shopcart> shopcart=shopcartService.selectCarts(user.getId());
			modelAndView.addObject("shopcartList",shopcart);
			modelAndView.setViewName("cart");
			
			return modelAndView;
		}
		
		//通过id删除购物车(只能删除一条)
		@RequestMapping("/deleteCart")
		public String deleteCart(Integer id) throws Exception{
			
			shopcartService.deleteCart(id);
			
			return "redirect:queryCart.action";
		}
		
		//通过id删除购物车(只能删除一条)ajax异步调用
		@RequestMapping("/deleteCart1")
		public String deleteCart1(Integer id) throws Exception{
					
			shopcartService.deleteCart(id);
					
			return "ok";
		}
		
		//通过id删除购物车(可删除多条)
		@RequestMapping("/deleteAllCart")
		@ResponseBody
		public String deleteAllCart(Shopcart shopcart) throws Exception{
					
			String id=shopcart.getBookName();
			String [] id1=id.split(",");
			for(int i=0;i<id1.length;i++){
				int id2=Integer.parseInt(id1[i]);
				shopcartService.deleteCart(id2);
			}
			return "ok";
		}
	
}
