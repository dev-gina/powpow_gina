package com.app.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.MemberDAO;
import com.app.vo.MemberVO;

public class MemberBuyerJoinController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		result.setPath("../member/member-buyer-join.jsp");
		
		return result;
	}

}
