package com.app.product.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.ProductDAO;
import com.app.vo.ProductVO;

public class ProductSellerController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();

		ProductDAO productDAO = new ProductDAO();
		List<ProductVO> products = productDAO.selectAll();

		req.setAttribute("products", products);

		result.setPath("../product/product-seller.jsp");

		return result;
	}

}
