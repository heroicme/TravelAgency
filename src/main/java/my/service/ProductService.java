package my.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import my.bean.Order;
import my.bean.ProductTip;
import my.bean.Products;
import my.dao.ProductMapper;
@Service
public class ProductService {

	
	@Autowired
	private ProductMapper  productMapper;
	
	
	public List<Products> getAll() {
		// TODO 自动生成的方法存根
		return productMapper.getAll();
	}


	public Products getByNum(int num) {
	
		return productMapper.getByNum(num);
	}


	public List<Products> getBy(Products product) {
		
		return productMapper.getBy(product);
	}


	public List<Products> getAllProject() {
		// TODO 自动生成的方法存根
		return productMapper.getAllProject();
	}


	public Products getProduct(int productId) {
		// TODO 自动生成的方法存根
		return productMapper.getProduct(productId);
	}


	public void updateProduct(Products product) {
	
		productMapper.updateProduct(product);
	}


	public void deleteProduct(int id) {
		productMapper.deleteProduct(id);
		productMapper.deleteProducttip(id);
	}


	public void addProduct(Products product) {
		productMapper.addProduct(product);
		productMapper.addProducttip();
		
	}


	public ProductTip getTip(int num) {
		      
		String comment=".";
		String pName=productMapper.getProduct(num).getProductName() ; //获取对应产品
		List<Order> list=productMapper.getNowOrder(pName);//获取所有该产品订单
		for(Order od:list){
			if(od.getComment()!=null){
			comment+="--游客--"+od.getName()+"--评论--"+od.getComment();}
			
		}
		productMapper.updateComment(num,comment);
				
		
		return productMapper.getTip(num);
	}


	public List<Products> serchProduct(String key) {
		
		return productMapper.serchProduct(key);
	}


	public ProductTip getProductTip(int id) {
		// TODO 自动生成的方法存根
		return productMapper.getProductTip(id);
	}


	public void updateProductTip(ProductTip ptip) {
		productMapper.updateProductTip(ptip) ;
		
	}

}
