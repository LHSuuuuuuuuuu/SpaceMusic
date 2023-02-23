package com.spaceMusic.frontController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.spaceMusic.action.Action;
import com.spaceMusic.action.ActionForward;
import com.spaceMusic.dao.MusicDAO;

public class getListByGenre  implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		MusicDAO mdao = new MusicDAO();
		
		int genre_id = Integer.parseInt(req.getParameter("genre_id"));
		

		req.setAttribute("MusicArr", mdao.MusicArr(genre_id));
		req.setAttribute("MusicListByGenre", mdao.getMusicListByGenre(genre_id));
		forward.setRedirect(false);
		forward.setPath("/sortByGenre.jsp");
		
		return forward;
	}
	
	
}
