package my.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import my.bean.Msg;
import my.bean.ProductTip;
import my.bean.Products;
import my.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

@Controller
public class ProductController {

	@Autowired
	private ProductService productService;

	@RequestMapping("/allProducts")
	public String allProducts(@RequestParam(value="pn" ,defaultValue="1") int pn,Map<String, Object> map) {
 PageHelper.startPage(pn, 5);
		List<Products> pd = productService.getAll();
PageInfo page=new PageInfo(pd,3);
map.put("pInfo",page);
		return "/product";
	}
	
	@RequestMapping("/reserve")
	public String toReserve(@RequestParam(value="num") int num,Map<String ,Object> map){
		
	 Products pd=	productService.getByNum(num);
	ProductTip ptip= productService.getTip(num);//ͬʱ����Ʒ�Ľ��� ��ʾ ������map��
		map.put("pro",pd );
		map.put("pTip", ptip);
		//ͬʱ����Ʒ�Ľ��� ��ʾ ������map��
		
		
		return "/reserve";
		
	}
	
	
	
	
	
	//����Я���Ĳ�����ͬ��ѯ
	@RequestMapping("/product")
	public String selectProduct(@RequestParam(value="pn",defaultValue="1") int pn,Products product,Map<String,Object>map){
		
		 PageHelper.startPage(pn, 5);
		List<Products> list=productService.getBy(product);
		PageInfo page=new PageInfo(list,3);
		map.put("pInfo",page);
		
		
		return "/product";
	}
	
	//��̨
	
	
	
	@RequestMapping("/products")
	@ResponseBody
	public Msg getAllProject(@RequestParam(value="pn",defaultValue="1") int pn){
		
		 PageHelper.startPage(pn, 7);
		List<Products> list=productService.getAllProject();
		PageInfo page=new PageInfo(list,3);
	
		return Msg.success().add("pageInfo",page);
	}
	
	
	//��̨������Ŀ��Ϣ �����޸Ĳ���
	@RequestMapping("/getProduct")
	@ResponseBody
	public Msg getProduct(@RequestParam("productId") int productId){
	
		Products  pr=  productService.getProduct(productId);
	
return Msg.success().add("product", pr);
}
	//��̨�����޸ĵ���Ŀ
	
	@RequestMapping(value="/updateProduct", method=RequestMethod.POST)
	@ResponseBody
	public Msg updateProduct(Products product){
	
		productService.updateProduct(product);
	
return Msg.success();
}
	
	
	//��̨ɾ����Ŀ
	
	@RequestMapping(value="/deleteProduct", method=RequestMethod.GET)
	@ResponseBody
	public Msg deleteProduct(@RequestParam("productId") int id){
	
		productService.deleteProduct(id);
	
return Msg.success();
}
	
	//��̨�����Ŀ
	
		@RequestMapping(value="/addProduct", method=RequestMethod.POST)
		@ResponseBody
		public Msg addProduct(Products product){
			productService.addProduct(product);
	return Msg.success();
	}
	
//���ؿ���
		@RequestMapping("/serchProduct")
		@ResponseBody
		public Msg serchProduct(@RequestParam(value="pn", defaultValue="1")int pn,@RequestParam("key")String key){
			
			PageHelper.startPage(pn, 7);
			key="%"+key+"%";
			List<Products> list=productService.serchProduct(key);
			PageInfo page=new PageInfo(list, 3);
			return Msg.success().add("pageInfo", page);
		}
		
		
		
		
		//��̨֪ͨ����
		
		
		
		
		
		@RequestMapping("/getProductTip")
		@ResponseBody
		public Msg getProductTip(@RequestParam("productId") int id){
			
	ProductTip pt=	productService.getProductTip(id);
			
			
			
			
			return Msg.success().add("ptip", pt);
			
		
		}
		
		
		
		
		//��̨֪ͨ�������
		
		
		@RequestMapping(value="/updateProductTip",method=RequestMethod.POST)
		@ResponseBody
		public Msg updateProductTip(ProductTip ptip){
			
		productService.updateProductTip(ptip);
			
			
			
			
			return Msg.success();
			
		
		}
		
		
		
		
		
		


}
