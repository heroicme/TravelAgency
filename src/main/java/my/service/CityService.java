package my.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import my.bean.City;
import my.bean.CityPicture;
import my.dao.CityMapper;

@Service
public class CityService {
 @Autowired
	private CityMapper cityMapper;
	
	
	
	public City getCityInfo(String cityTn) {
		
		return  cityMapper.getCityInfo(cityTn);
	}


	
	public CityPicture getCp(String cityTn,String type) {
		
		return cityMapper.getCp(cityTn,type);
	}



	public List<CityPicture> getNav(String cityTn,String type) {
		
		return cityMapper.getNav(cityTn,type);
	}



	public List getSurvey(String type, int id) {
		
		List list=new ArrayList();
		switch(type){
		case "JD": list=cityMapper.getJdSurvey(id); break;
		case "MS": list=cityMapper.getMsSurvey(id) ;break;
		case "YL":list=cityMapper.getYlSurvey(id) ;break;
		case "RW": list=cityMapper.getJRwSurvey(id); break;
		case "WH": list=cityMapper.getWhSurvey(id); break;
		case "LS": list=cityMapper.getLsSurvey(id) ;break;
	
		}
		
	
		
		return list;
	}



	public List<City> getCityList() {
		
		return cityMapper.getCityList();
	}

	

	
	
	
}
