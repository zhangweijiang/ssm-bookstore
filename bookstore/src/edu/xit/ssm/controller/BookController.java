package edu.xit.ssm.controller;


import java.util.List;




import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import edu.xit.ssm.po.Books;
import edu.xit.ssm.service.BooksService;
import edu.xit.ssm.service.ShopcartService;




import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
@Controller
public class BookController {
	
	@Autowired
	private BooksService booksService;
	
	@Autowired
	private ShopcartService shopcartService;
	
	//通过books表的id查询相对应的商品
	@RequestMapping("/selectBookById")
	public @ResponseBody Books selectBookById(Integer id) throws Exception {

		Books books = booksService.selectBookById(id);
		//List<Books> books_list=new ArrayList<Books>();
		//books_list.add(books);
		return books;
	}
	
	//通过books表的id编辑相对应的商品
	@RequestMapping("/updateBookById")
	public String updateBookById(@RequestParam("file") CommonsMultipartFile file,  
            HttpServletRequest request,Books record) throws Exception {
		 // 获得原始文件名  
        String fileName = file.getOriginalFilename();  
        System.out.println("原始文件名:" + fileName);  
        // 新文件名  
        String newFileName = UUID.randomUUID() + fileName;  
        if(fileName.equals("")){
        	
        }else{
        	record.setPic(newFileName);
        }
        
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
		
		booksService.updateByPrimaryKey(record);
		return "redirect:queryBooks2";
	}
	
	//商品列表
	@RequestMapping("/queryBooks")
	public ModelAndView queryBooks() throws Exception {
		
		ModelAndView modelAndView = new ModelAndView();
		List<Books> bookList = booksService.selectBooks();
		modelAndView.addObject("bookList",bookList);
		modelAndView.setViewName("bookstore");
		
		return modelAndView;
	}
	
	//推荐图书
	@RequestMapping("/queryBooks1")
	public ModelAndView queryBooks1() throws Exception {
		
		ModelAndView modelAndView = new ModelAndView();
		List<Books> bookList = booksService.selectBooks();
		modelAndView.addObject("bookList1",bookList);
		modelAndView.addObject("bookList2",bookList);
		modelAndView.setViewName("recommended");
		
		return modelAndView;
	}
	
	//商品列表管理
		@RequestMapping("/queryBooks2")
		public ModelAndView queryBooks2() throws Exception {
			
			ModelAndView modelAndView = new ModelAndView();
			List<Books> bookList = booksService.selectBooks();
			modelAndView.addObject("bookList",bookList);
			modelAndView.setViewName("booksmanager");
			
			return modelAndView;
		}
		
		
		
		//根据id查找图书(后台管理-图书编辑）
		@RequestMapping("/bookEdit")
		public String selectBookById1(Model model,Integer id) throws Exception {
			
			
			
			Books book = booksService.selectBookById(id);
			
			model.addAttribute("book", book);
			return "queryBooks2";
		}
	
	
	//根据id查找图书
	@RequestMapping("/bookdetail")
	public String selectBookById(Model model,Integer id) throws Exception {
		
		Books book = booksService.selectBookById(id);
		
		model.addAttribute("book", book);
		return "bookDetail";
	}
	
	//根据模糊书名查询图书
	@RequestMapping("/bookByNanme")
	public ModelAndView selectBookByName(String bookname,HttpServletRequest request,HttpServletResponse response) throws Exception {
		 request.setCharacterEncoding("UTF-8");
         response.setContentType("text/html; charset=utf-8");
		ModelAndView modelAndView = new ModelAndView();
		List<Books> bookList = booksService.selectBookByName(bookname);
		modelAndView.addObject("bookList",bookList);
		modelAndView.setViewName("search_result");
		
		
		return modelAndView;
	}
	
	//根据id删除图书
	@RequestMapping("/deleteByPrimaryKey")
	public String deleteByPrimaryKey(Integer id) throws Exception {
		//由于book表的主键id作为shopcart的外键，所有先删除shopcart表book_id所对应的信息，再删除book表id所对应的信息
		shopcartService.deleteByBookId(id);
		booksService.deleteByPrimaryKey(id);
		
		return "redirect:/queryBooks2.action";
	}
	
	//添加图书
	@RequestMapping("/insertSelective")
	public String insertSelective(@RequestParam("file") CommonsMultipartFile file,  
            HttpServletRequest request,Books record) throws Exception {
		 // 获得原始文件名  
        String fileName = file.getOriginalFilename();  
        System.out.println("原始文件名:" + fileName);  
  
        // 新文件名  
        String newFileName = UUID.randomUUID() + fileName;  
        record.setPic(newFileName);
        
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
		
		booksService.insertSelective(record);
		
		return "redirect:/queryBooks2.action";
	}
}
