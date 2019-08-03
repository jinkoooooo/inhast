package com.inhatc.service;

import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.inhatc.domain.BoardVO;
import com.inhatc.domain.Criteria;

public interface BoardService {
	
	public void register(BoardVO board);
	/*
	public BoardVO get(Long bno);
	*/
	public boolean modify(BoardVO board);
	
	public boolean remove(Long bno);
	
	//public List<BoardVO> getList();
	public List<BoardVO> getList(Criteria cri);
	
	public int getTotal(Criteria cri);
	
	public int userReg_service(BoardVO userVO);
	
	public int userIdCheck(String user_id);
	
	public int userLogin_service(BoardVO userVO);

}
