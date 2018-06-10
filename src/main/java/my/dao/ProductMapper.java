package my.dao;

import my.bean.Order;
import my.bean.ProductTip;
import my.bean.Products;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ProductMapper {

	List<Products> getAll();

	Products getByNum(int num);

	List<Products> getBy(Products product);

	List<Products> getAllProject();

	Products getProduct(int productId);

	void updateProduct(Products product);

	void deleteProduct(int id);

	void addProduct(Products product);

	ProductTip getTip(int num);

	List<Products> serchProduct(String key);

	ProductTip getProductTip(int id);

	void updateProductTip(ProductTip ptip);

	void addProducttip();

	void deleteProducttip(int id);

	List<Order> getNowOrder(String pName);

	void updateComment(@Param("num") int num, @Param("comment") String comment);

	

}
