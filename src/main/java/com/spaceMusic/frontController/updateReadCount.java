//package com.spaceMusic.frontController;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import com.spaceMusic.action.Action;
//import com.spaceMusic.action.ActionForward;
//import com.spaceMusic.dao.MusicDAO;
//
//public class updateReadCount implements Action {
//
//	@Override
//	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
//		ActionForward forward = new ActionForward();
//		MusicDAO mdao = new MusicDAO();
//		
//		int music_id = Integer.parseInt(req.getParameter("music_id"));
//		
//		mdao.updateReadCount(music_id);
//		
//		forward.setRedirect(false);
//		forward.setPath("/getList.sm");
//		
//		return forward;
//	}
//	
//	
//}
