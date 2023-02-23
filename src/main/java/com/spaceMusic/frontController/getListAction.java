package com.spaceMusic.frontController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.spaceMusic.action.Action;
import com.spaceMusic.action.ActionForward;
import com.spaceMusic.dao.MusicDAO;

public class getListAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		MusicDAO mdao = new MusicDAO();
		
		req.setAttribute("MusicList", mdao.getMusicList());
		req.setAttribute("AllMusicArr", mdao.AllMusicArr());
		
		
		forward.setRedirect(false);
		System.out.println("action");
		forward.setPath("/top100.jsp");

		return forward;
	}
}
