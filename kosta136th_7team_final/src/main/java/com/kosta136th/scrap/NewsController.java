package com.kosta136th.scrap;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
@Controller
public class NewsController {
	
	@Inject
    private DemesticScrapService demService; 
	@Inject
	private AbroadScrapService abrService;
	
	@RequestMapping(value = "/news", method = RequestMethod.GET)
	public String news(SearchInfo vo, Criteria cri, Model model) throws Exception{
		int page = 1;
		int pageStart = cri.getPageStart();
		int perPageNum = cri.getPerPageNum();
		int searchTF = 0;
		String searchKeyword = vo.getSearchKeyword();
		String tab = "news/tab1";
		List<DemesticScrap> searchlist = new ArrayList<DemesticScrap>();
		List<DemesticPopular> demPopularNews = demService.popularNews();
		
		model.addAttribute("page", page);
		model.addAttribute("tab", tab);
		model.addAttribute("demPopularNews", demPopularNews);
		
		if(searchKeyword == null)
		{
			String keyword = "비트코인";
	    	List<DemesticScrap> list = demService.newsList(keyword, perPageNum,pageStart);
	        model.addAttribute("newsList", list);
	        PageMaker pageMaker = new PageMaker();
	        pageMaker.setCri(cri);
	        pageMaker.setTotalCount(100);
	        model.addAttribute("pageMaker", pageMaker);
			model.addAttribute("searchTF", searchTF);
			model.addAttribute("searchKeyword", searchKeyword);
			return "sub/news/news";
			
		}
		else
		{
			String keyword = "비트코인 " + searchKeyword;
	    	List<DemesticScrap> list = demService.newsList(keyword, 100, 1);
	    	int startIndex = ((page-1)*(cri.getPerPageNum()-1))+page-1;
	    	int endIndex = startIndex+cri.getPerPageNum()-1;
	    	for(int i = startIndex ; i < endIndex; i++)
	    	{
	    		if(i >= list.size())
	    		{
	    			break;
	    		}
	    		searchlist.add(list.get(i));
	    	}
	        model.addAttribute("newsList", searchlist);
	        PageMaker pageMaker = new PageMaker();
	        pageMaker.setCri(cri);
	        pageMaker.setTotalCount(list.size());
	        model.addAttribute("pageMaker", pageMaker);
	        searchTF = 1;
			model.addAttribute("searchTF", searchTF);
			return "sub/news/news";
		}
	}
	
	
	@RequestMapping(value = "/news/tab1", method = RequestMethod.GET)
	public String newsTab1(@RequestParam("page") int page, SearchInfo vo, Criteria cri, Model model) throws Exception{
		model.addAttribute("page", page);
    	List<DemesticScrap> searchlist = new ArrayList<DemesticScrap>();
		String tab = "tab1";
		List<DemesticPopular> demPopularNews = demService.popularNews();
		String searchKeyword = vo.getSearchKeyword();
		int searchTF = 0;
		model.addAttribute("searchTF", searchTF);
		model.addAttribute("searchKeyword", searchKeyword);
		model.addAttribute("tab", tab);
		model.addAttribute("demPopularNews", demPopularNews);
		
		if(searchKeyword == null)
		{
			int pageStart = cri.getPageStart();
			int perPageNum = cri.getPerPageNum();
	    	String keyword = "비트코인";
	    	List<DemesticScrap> list = demService.newsList(keyword,perPageNum, pageStart);
	        model.addAttribute("newsList", list);
	        PageMaker pageMaker = new PageMaker();
	        pageMaker.setCri(cri);
	        pageMaker.setTotalCount(100);
	        model.addAttribute("pageMaker", pageMaker);
			return "sub/news/news";
		}
		
		else
		{
	    	String keyword = "비트코인 " + searchKeyword;
	    	List<DemesticScrap> list = demService.newsList(keyword, 100, 1);
	    	int startIndex = ((page-1)*(cri.getPerPageNum()-1))+page-1;
	    	int endIndex = startIndex+cri.getPerPageNum()-1;
	    	for(int i = startIndex ; i < endIndex; i++)
	    	{
	    		if(i >= list.size())
	    		{
	    			break;
	    		}
	    		searchlist.add(list.get(i));
	    	}
	        model.addAttribute("newsList", searchlist);
	        PageMaker pageMaker = new PageMaker();
	        pageMaker.setCri(cri);
	        pageMaker.setTotalCount(list.size());
	        model.addAttribute("pageMaker", pageMaker);
	        searchTF = 1;
			model.addAttribute("searchTF", searchTF);
			return "sub/news/news";
		}
	}
	
	@RequestMapping(value = "/news/tab2", method = RequestMethod.GET)
	public String newsTab2(@RequestParam("page") int page, SearchInfo vo, Criteria cri, Model model) throws Exception{
		int searchTF = 0;
		String searchKeyword = vo.getSearchKeyword();
		String tab = "tab2";
		List<AbroadPopular> demPopularNews = abrService.popularNews();
		
		model.addAttribute("tab", tab);
		model.addAttribute("searchTF", searchTF);
		model.addAttribute("searchKeyword", searchKeyword);
		model.addAttribute("page", page);
		model.addAttribute("demPopularNews", demPopularNews);
		
		if(searchKeyword == null)
		{
	    	List<AbroadScrap> abrList = abrService.serachNews(page);
	        model.addAttribute("abrNewsList", abrList);
	        PageMaker pageMaker = new PageMaker();
	        pageMaker.setCri(cri);
	        pageMaker.setTotalCount(100);
	        model.addAttribute("pageMaker", pageMaker);
	        return "sub/news/news";
		}
		else
		{
	    	List<AbroadScrap> abrList = abrService.serachAllNews();
	    	List<AbroadScrap> searchAbrlist = new ArrayList<AbroadScrap>();
	    	for(int i = 0; i < abrList.size(); i++)
	    	{
	    		if(abrList.get(i).getTitle().contains(searchKeyword))
	    		{
	    			searchAbrlist.add(abrList.get(i));
	    		}	    		
	    	}
	    	int startIndex = ((page-1)*(cri.getPerPageNum()-1))+page-1;
	    	int endIndex = startIndex+cri.getPerPageNum()-1;
	    	List<AbroadScrap> returnSearchAbrlist = new ArrayList<AbroadScrap>();
	    	for(int i = startIndex ; i < endIndex; i++)
	    	{
	    		if(i >= searchAbrlist.size())
	    		{
	    			break;
	    		}
	    		returnSearchAbrlist.add(searchAbrlist.get(i));
	    	}
	        model.addAttribute("abrNewsList", returnSearchAbrlist);
	        PageMaker pageMaker = new PageMaker();
	        pageMaker.setCri(cri);
	        pageMaker.setTotalCount(searchAbrlist.size());
	        model.addAttribute("pageMaker", pageMaker);
	        System.out.println(searchAbrlist.size());
	        searchTF = 1;
			model.addAttribute("searchTF", searchTF);
	        return "sub/news/news";
		}
		
	}
	
	//해외기사 스크랩
	@RequestMapping(value = "/addAbroadScrap", method = RequestMethod.POST)
	public String addAbroadScrap(@RequestBody AbroadScrap vo) throws Exception{
		vo.setUser_num(4);
		abrService.addAbroadScrap(vo);
		
		return "sub/news/news/tab2";
	}
	
	//국내기사 스크랩
	@RequestMapping(value = "/addDemesticScrap", method = RequestMethod.POST)
	public String addDemesticScrap(@RequestBody DemesticScrap vo) throws Exception{
		vo.setUser_num(4);
		demService.addDemesticScrap(vo);
		
		return "sub/news/news/tab1";
	}
}