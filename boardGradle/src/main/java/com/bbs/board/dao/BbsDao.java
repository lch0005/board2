package com.bbs.board.dao;

import java.util.List;
import com.bbs.board.dto.BbsDto;

public interface BbsDao {
	public List<BbsDto> getList();
	public int addDoc(BbsDto dto);  //���ۿ� id�� addDoc�� ������ dto�� �����Ͽ� ���� �մϴ�.
	
	public List<BbsDto> getSearchList(BbsDto dto);
	
	public BbsDto getDetail(BbsDto dto);      //본문은 한개니까 <list>형식으로 할 필요 없음
}
