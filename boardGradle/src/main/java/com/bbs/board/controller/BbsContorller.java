package com.bbs.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.bbs.board.dto.BbsDto;
import com.bbs.board.service.BbsService;

@Controller
public class BbsContorller {
	@Autowired
	BbsService bbsService;
	
	@GetMapping("/list")
	public ModelAndView list() throws Exception {
		List<BbsDto> list = bbsService.getList();
		
		return new ModelAndView("bbsList", "list", list);
	}
	
	@GetMapping("/add") // add �ּҸ� get������� ���� ����մϴ�.
	public String add() {
		return "add";
	}
	
	@PostMapping("/add")
	public ModelAndView add(BbsDto dto) {
		int nCnt = bbsService.addDoc(dto);
		
		List<BbsDto> list = bbsService.getList();
		return new ModelAndView("bbsList", "list", list);
	}
	@PostMapping("rest/searchList")
	@ResponseBody
	List<BbsDto> getSearchList(@RequestBody BbsDto bbsDto){
		List<BbsDto> list = bbsService.getSearchList(bbsDto);
		return list;
	}
	
	
	
	@GetMapping("/detail/{seq}")
	public ModelAndView detail(@PathVariable("seq")String seq) {
		return new ModelAndView("detail","seq",seq);
	}
	

	
	@GetMapping("/rest/detail/{seq}")
	@ResponseBody
	BbsDto getDetail(@PathVariable("seq")int seq) {  //@PathVariable어노테이션이 {seq}로 불러올 수 있게 해줌
	BbsDto inDto=new BbsDto();
	inDto.setSeq(seq);
	
	BbsDto dto = bbsService.getDetail(inDto);
	return dto;                                    //JSTL방식?
	}
	
}
