//모든 URL을 받는 용도

package controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import controller.auth.LoginProcController;
import controller.auth.LogoutProcController;
import controller.home.HomeForwardingController;
import controller.member.MemberJoinController;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


public class FrontController extends HttpServlet{
	
	// URL 저장용도	
	Map <String, Controller> list = null;
	
	//init
	
	@Override
	public void init() throws ServletException {
		
		//컨트롤러 URL-SubController 저장
		list=new HashMap();
		
		// Member 관련 URL
		list.put("/MemberJoin.do", new MemberJoinController());
		
		// Home URL
		list.put("/Home.do", new HomeForwardingController());
		
		// Auth 관련 URL
		list.put("/LoginProc.do", new LoginProcController());
		list.put("/LogoutProc.do", new LogoutProcController());
		
	}
	

	//service	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		System.out.println("FrontControlller TEST");
		String url = req.getRequestURI();
		System.out.println("URI : " + url);
		
		// 컨트롤러 꺼내기	
		Controller subcontroller = list.get(url);
		
		//서브컨트롤러 Execute
		subcontroller.Execute(req, resp);
	}
	

}
