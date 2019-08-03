package com.inhatc.ac;

import java.security.KeyPair;
import java.security.PublicKey;
import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.inhatc.domain.BlockChain;
import com.inhatc.domain.BoardVO;
import com.inhatc.domain.Criteria;
import com.inhatc.domain.PageDTO;
import com.inhatc.service.BoardService;
import com.inhatc.service.RSA;
import com.inhatc.service.UserSha256;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/board/*")
@AllArgsConstructor
public class BoardController {
	
	private BoardService service;
	
	@GetMapping("/list")
	public void list(Criteria cri, Model model) {
		this.cnt=0;

	}
	
	@PostMapping("/register") //오류
	public String register(BoardVO board, RedirectAttributes rttr) {
	
		int check=service.userIdCheck(board.getUserid());
		
		if(check==1) {
			rttr.addFlashAttribute("check", check);
			
			log.info("중복됨");
			
			return "redirect:/board/register";
			
		}else {
			log.info("register: " + board);
			
			// 비밀번호 암호화 (sha256
			String encryPassword = UserSha256.encrypt(board.getUserpw());
			board.setUserpw(encryPassword);

			
			service.register(board);
			
			rttr.addFlashAttribute("result", board.getUserid());
			
			return "redirect:/board/login";
		}
	}
	

	@GetMapping("/idCheck")
	@ResponseBody
	public int idCheck(@RequestParam("userId") String user_id) {

		return service.userIdCheck(user_id);
	}

	
	@PostMapping("/modify")
	public String modify(BoardVO board, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr) {
		log.info("modify:"+board);;
		
		if(service.modify(board)) {
			rttr.addFlashAttribute("result", "success");
		}
		
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		
		return "redirect:/board/list";
	}
	
	@PostMapping("/remove")
	public String remove(@RequestParam("bno") Long bno, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr) {
		log.info("remove..."+bno);
		if(service.remove(bno)) {
			rttr.addFlashAttribute("result","success");
		}
		
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		
		return "redirect:/board/list";
	}
	
	@GetMapping("/register")
	public void register() {
	}
	
	
	
	@PostMapping("/login")
	public String login(BoardVO board) {
	
		// home.jsp 에서 id,pw 가져오기
		String user_pw = board.getUserpw();

				// 비밀번호 암호화
		board.setUserpw(UserSha256.encrypt(user_pw));
				
				// 로그인 메서드
		int result = service.userLogin_service(board);
				
		if(result==0) {
			return "redirect:/board/login";
		}else {
			return "redirect:/board/list";
		}
	}
	
	@GetMapping("/login")
	public void login() {
	}
	
	
	
	
	
	private static RSA rs = new RSA();
	
	private static int cnt=0;
	
	@PostMapping("/TestBlock")
	public void testBlock(BlockChain block, Model model) throws Exception {
		String en_text;
		String de_text;

		KeyPair key=rs.getKeyPair();
		
		/*if(!de_text.isEmpty()) {
			en_text=rs.encryptRSA(block.getDe_text(), key.getPublic());
		}else {
			de_text=rs.encryptRSA(block.getDe_text(), key.getPublic());
		}*/
		en_text=rs.encryptRSA(block.getDe_text(), key.getPublic());
		de_text=rs.decryptRSA(en_text, key.getPrivate());


		
		String public_k=key.getPublic().toString();
		String private_k=key.getPrivate().toString();
		
		model.addAttribute("public_k", public_k);
		model.addAttribute("private_k", private_k);
		model.addAttribute("en_text", en_text);
		model.addAttribute("de_text", de_text);
		
		//return "redirect:/board/TestBlock";

	}
	
	@GetMapping("/TestBlock")
	public void textBlock(Model model) throws Exception {

		KeyPair key=rs.getKeyPair();

		
		if(cnt>0) {
		String public_k=key.getPublic().toString();
		String private_k=key.getPrivate().toString();
		
		model.addAttribute("public_k", public_k);
		model.addAttribute("private_k", private_k);
		}
		
		this.cnt++;
		
	}

}
