package com.app.myhome.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.MemberDAO;
import com.app.dao.MyhomeDAO;
import com.app.vo.PetVO;
import com.app.vo.ProductVO;

public class MyhomePetListController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		MemberDAO memberDAO = new MemberDAO();
		MyhomeDAO myhomeDAO = new MyhomeDAO();
		PetVO petVO = new PetVO();
		HttpSession session = req.getSession();
//		
		String memberEmail = (String)session.getAttribute("buyerEmail");
//		System.out.println(memberEmail);
//		
////		session.setAttribute("id", 1L);
////	    Long memberId = Long.parseLong(String.valueOf(session.getAttribute("id")));
		Long memberId = 1L;
		
		List<PetVO> pets = myhomeDAO.selectPetAll(memberId);
		req.setAttribute("pets", pets);
//     	System.out.println(pets);
		
		if(pets != null){
			result.setPath("../myhome/myhome-pet-list.jsp");
		}else {
			result.setPath("../myhome/myhome-no-pet.jsp");
		}
//		
		return result;
	}

}
