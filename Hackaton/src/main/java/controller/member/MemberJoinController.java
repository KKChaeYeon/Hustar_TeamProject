package controller.member;

import controller.Controller;
import controller.HttpUtil;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.MemberService;
import vo.MemberVO;

public class MemberJoinController implements Controller{

	public void Execute(HttpServletRequest req, HttpServletResponse resp) {
		String code = req.getParameter("code");
		String name = req.getParameter("name");
		String phone = req.getParameter("phone");
		String id = req.getParameter("id");
		String pwd = req.getParameter("pwd");
		String addr1 = req.getParameter("addr1");
		System.out.printf("%s %s %s %s %s %s\n", code, name, phone, id, pwd, addr1);
	
		if(code.isEmpty() || name.isEmpty() || phone.isEmpty() || id.isEmpty() || pwd.isEmpty()) {
			req.setAttribute("MSG", "입력 값이 올바르지 않습니다.");
			HttpUtil.Forward(req, resp, "/join.jsp");
		}else {
			req.setAttribute("MSG", "가입을 축하드립니다!");
			HttpUtil.Forward(req, resp, "/login.jsp");
		}
		
		MemberService service = MemberService.getInstance();
		MemberVO vo = new MemberVO(code, name, phone, id, pwd, addr1);
		service.MemberJoin(vo);
		
		
	}

}
