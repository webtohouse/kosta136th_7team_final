package com.kosta136th.scrap;

import java.util.List;

public interface DemesticScrapService {
	
	public List<DemesticScrap> newsList(String keyword, int display, int start) throws Exception;

	public void addDemesticScrap(DemesticScrap vo) throws Exception;

	public List<DemesticPopular> popularNews() throws Exception;

}
