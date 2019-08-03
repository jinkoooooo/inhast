package com.inhatc.service;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.inhatc.domain.BoardVO;
import com.inhatc.domain.Criteria;
import com.inhatc.mapper.BoardMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class BoardServiceImpl implements BoardService {
	
	@Setter(onMethod_ = @Autowired)
	private BoardMapper mapper;
	
	@Override
	public void register(BoardVO board) {

		log.info("register......" + board);

		mapper.insert(board);
	}

	/*
	@Override
	public BoardVO get(Long bno) {

		log.info("get......" + bno);

		return mapper.read(bno);

	}*/

	@Override
	public boolean modify(BoardVO board) {

		log.info("modify......" + board);

		return mapper.update(board) == 1;
	}

	@Override
	public boolean remove(Long bno) {

		log.info("remove...." + bno);

		return mapper.delete(bno) == 1;
	}

	 /*@Override
	 public List<BoardVO> getList() {
	
	 log.info("getList..........");
	
	 return mapper.getList();
	 }*/
	@Override
	public List<BoardVO> getList(Criteria cri){
		
		log.info("get List with criteria: " + cri);
		
		return mapper.getListWithPaging(cri);
	}
	
	@Override
	public int getTotal(Criteria cri) {
		
		log.info("get total count");
		return mapper.getTotalCount(cri);
	}
	
	public int userIdCheck(String user_id) {
		
		//�����ϸ� 1, ������ 0 ��ȯ��.
		return mapper.checkOverId(user_id);
	}

	
	@Override
	public int userReg_service(BoardVO userVO){

		return 0;
	}
	
	@Override
	public int userLogin_service(BoardVO userVO) {

		String user_id = userVO.getUserid();//�Է��� ���̵�
		String user_pw = userVO.getUserpw();//�Է��� ��й�ȣ

		BoardVO vo = mapper.read(user_id);
		//�Է��� id�� ���� ������� �ҷ���.

		// �α��� �����
		int result = 0;


		if (vo == null) { //ȸ������ ������
			result = 0;
			return result;
		}else if(vo.getUserid().equals(user_id) && vo.getUserpw().equals(user_pw)) { //���̵� ��й�ȣ�� �´ٸ�.
			result = 1;
			return result;
		}else { //��й�ȣ�� Ʋ���ٸ�.
			return result;
		}
	}

}
