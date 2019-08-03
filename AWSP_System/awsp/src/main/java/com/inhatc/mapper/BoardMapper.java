package com.inhatc.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import com.inhatc.domain.BoardVO;
import com.inhatc.domain.Criteria;

public interface BoardMapper {
	
	//@Select("select * from tbl_board_add where bno > 0")  // BoardMapper.xml 파일 없을때 사용.
	public List<BoardVO> getList();
	
	public List<BoardVO> getListWithPaging(Criteria cri);
	
	public void insert(BoardVO baord);
	
	public BoardVO read(String userid);
	
	public int checkOverId(String userid);
	
	public int delete(Long bno);
	
	public int update(BoardVO board);
	
	public int getTotalCount(Criteria cri);

}
