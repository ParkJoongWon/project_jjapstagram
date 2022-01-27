package apple;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Board_Ctrl {
	
	private BoardDAO boardDao = null;
	public BoardDAO getBoardDao() { return boardDao; } 
	public void setBoardDao(BoardDAO boardDao) { this.boardDao = boardDao; }
	
	
	@ResponseBody
	@RequestMapping("/check.pknu")
	public String check() throws Exception {
		
		return boardDao.toString();
	}
	
	
	
	
	
	// http://localhost:8080/projectXX/list.pknu
	@RequestMapping("/list.pknu")
	public ModelAndView list(@ModelAttribute BoardVO vo, HttpSession session) throws Exception {
		Object username = session.getAttribute("username");
		ModelAndView mnv = new ModelAndView();
		
		if( (username != null) && (username != "") ) {
			mnv.setViewName("Board_list");
			mnv.addObject("list", boardDao.findAll());
			return mnv;
		}
		else {
			mnv.setViewName("login_go");
			return mnv;
		}
	}
	
	
	
	
	@RequestMapping("/add2.pknu")
	public String add2(@ModelAttribute BoardVO vo, HttpSession session) throws Exception {
		//Object username = session.getAttribute("username");
		//System.out.println( "username : " + username );
		boardDao.add( vo );
		return "redirect:list.pknu";
	}
	
	
	@RequestMapping("/login.pknu")
	public String login(HttpSession session) throws Exception {
		if(session.getAttribute("username") != null) {
			session.removeAttribute("username");
		}
		return "Board_login";
	}
	
	
	
	@RequestMapping("/login2.pknu")
	public String login2( @RequestParam(value="username",required=false) String username, @RequestParam(value="password",required=false) String password, HttpSession session ) throws Exception {
		if( username.equals("test") && password.equals("1234") ) {
			session.setAttribute("username", username);
			return "redirect:list.pknu";
		}
		else {
			return "redirect:list.pknu";
		}
	}
	
}
