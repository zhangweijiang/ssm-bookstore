package edu.xit.ssm.controller;


import java.io.File;



import java.io.FileOutputStream;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;









import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ModelAndView;

import edu.xit.ssm.po.Orders;
import edu.xit.ssm.po.Users;
import edu.xit.ssm.service.OrdersService;

@Controller
public class OrderController {

	@Autowired
	private OrdersService ordersService;
	
	@RequestMapping("/insertOrder") 
	@ResponseBody
	public String insertSelective(Orders record) throws Exception {
		if(record.getTradingType()==10){
			Date date = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
			String str = sdf.format(date);
			record.setOrderSn(str);
			ordersService.insertSelective(record);
			return "10";
		}else if(record.getTradingType()==20){
			Date date = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
			String str = sdf.format(date);
			record.setOrderSn(str);
			ordersService.insertSelective(record);
			return "20";
		}else{
			return "error";
		}
		
	}
	
			//订单列表
			@RequestMapping("/queryOrder")
			public ModelAndView queryOrder(HttpServletRequest request,HttpServletResponse response) throws Exception {
				
				ModelAndView modelAndView = new ModelAndView();
				Users user=(Users)request.getSession().getAttribute("user");
				List<Orders> order=ordersService.selectOrders(user.getId());
				modelAndView.addObject("orderList",order);
				modelAndView.setViewName("orders");
				
				return modelAndView;
			}
			
			//订单列表-后台
			@RequestMapping("/queryOrder1")
			public ModelAndView queryOrder1() throws Exception {
				
				ModelAndView modelAndView = new ModelAndView();
				List<Orders> order=ordersService.selectOrders1();
				modelAndView.addObject("orderList",order);
				modelAndView.setViewName("ordersmanager");
				
				return modelAndView;
			}
			
			//更新订单状态
			@RequestMapping("/updateOrderState")
			public String updateOrderState(Orders order) throws Exception {

				ordersService.updateOrderState(order);
				return "redirect:queryOrder";
			}
			
			//更新订单状态-后台
			@RequestMapping("/updateOrderState1")
			public String updateOrderState1(Orders order) throws Exception {

				ordersService.updateOrderState(order);
				return "redirect:queryOrder1";
			}
			
			//通过id删除订单(只能删除一条)
			@RequestMapping("/deleteOrder")
			public String deleteOrder(Integer id) throws Exception{
				
				ordersService.deleteOrder(id);
				
				return "redirect:queryOrder.action";
			}
			
			//通过id删除订单(只能删除一条)
			@RequestMapping("/deleteOrder1")
			public String deleteOrder1(Integer id) throws Exception{
				
				ordersService.deleteOrder(id);
				
				return "redirect:queryOrder1.action";
			}
			
			
			 /** 
		     * 方法二上传文件，一次一张 
		     */  
			@RequestMapping("/onefile2")  
			public String oneFileUpload2(HttpServletRequest request,  
			        HttpServletResponse response) throws Exception {  
				String p2=request.getRequestURI();
				System.out.println(p2);
			    CommonsMultipartResolver cmr = new CommonsMultipartResolver(  
			            request.getServletContext());  
			    if (cmr.isMultipart(request)) {  
			        MultipartHttpServletRequest mRequest = (MultipartHttpServletRequest) (request);  
			        Iterator<String> files = mRequest.getFileNames();  
			        while (files.hasNext()) {  
			            MultipartFile mFile = mRequest.getFile(files.next());  
			            if (mFile != null) {  
			                String fileName = UUID.randomUUID()  
			                        + mFile.getOriginalFilename();  
			                String path = "C:/Users/Administrator/Desktop/Hplus/WebContent/images/book/" + fileName;  
			  
			                File localFile = new File(path);  
			                mFile.transferTo(localFile);  
			                request.setAttribute("fileUrl", path);  
			            }  
			        }  
			    }  
			    return "fileUpload";  
			}  
			
			
			 /** 
		     * 方法一上传文件 
		     */  
		    @RequestMapping("/onefile")  
		    public String oneFileUpload(  
		            @RequestParam("file") CommonsMultipartFile file,  
		            HttpServletRequest request, ModelMap model) {  
		  
		        // 获得原始文件名  
		        String fileName = file.getOriginalFilename();  
		        System.out.println("原始文件名:" + fileName);  
		  
		        // 新文件名  
		        String newFileName = UUID.randomUUID() + fileName;  
		  
		        // 获得项目的路径  
		        ServletContext sc = request.getSession().getServletContext();  
		        // 上传位置  
		        String path = sc.getRealPath("/images/book") + "/"; // 设定文件保存的目录  
		  
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
		        
		         
		  
		        System.out.println("上传图片到:" + path + newFileName);  
		        // 保存文件地址，用于JSP页面回显  
		        model.addAttribute("fileUrl", path + newFileName);  
		        return "fileUpload";  
		    } 
	
}
