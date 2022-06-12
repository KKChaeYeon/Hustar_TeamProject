package controller.auth;

import controller.Controller;
import controller.HttpUtil;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import service.MemberService;
import vo.MemberVO;

public class LoginProcController implements Controller{

	public void Execute(HttpServletRequest req, HttpServletResponse resp) {
		
		String id = req.getParameter("id");
		String pwd = req.getParameter("pwd");
		
		if(id.isEmpty() || pwd.isEmpty()) {
			req.setAttribute("MSG", "ID/PW를 입력하지 않았습니다.");
			HttpUtil.Forward(req, resp, "/login.jsp");
		}
		
		MemberService service = MemberService.getInstance();
		MemberVO vo = service.MemberSearch(id);
		//계정 조회가 안되는 경우
		if(vo==null) {
			req.setAttribute("MSG", "ID가 조회되지 않습니다.");
			HttpUtil.Forward(req, resp, "/login.jsp");
			return;
		}else {
			if(id.equals(vo.getId()) && pwd.equals(vo.getPwd())) {
				HttpUtil.Forward(req, resp, "/mypage.jsp");
				return;
			}else {
				req.setAttribute("MSG", "비밀번호가 일치하지 않습니다.");
				HttpUtil.Forward(req, resp, "/login.jsp");
				return;
			}
		}
	}
}
