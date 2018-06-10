package my.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import my.bean.City;
import my.bean.CityPicture;
import my.bean.Msg;
import my.service.CityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

@Controller
public class CityController {
	@Autowired
	private CityService cityService;

	@RequestMapping("/getCityInfo")
	public String getCity(@RequestParam("cityTn") String cityTn, Map<String, Object> map) {
		String type1="title";
		String type2="nav";
		City ci = cityService.getCityInfo(cityTn);
	CityPicture cp=cityService.getCp(cityTn,type1);
		List<CityPicture> listNav=cityService.getNav(cityTn,type2);
		
        map.put("cityInfo", ci);
        map.put("cityTitle", cp);
        map.put("cityNav", listNav);
      
		return "/placeinfo";

	}

	
	
	@RequestMapping("/survey")
	@ResponseBody
	public Msg  getSurvey(@RequestParam(value="pn", defaultValue="1")int pn,@RequestParam(value="type")String  type,@RequestParam("cityId") int id){
		
		
		PageHelper.startPage(pn, 2);
	 List list=cityService.getSurvey(type,id);
	PageInfo page = new PageInfo(list, 3);
		Msg.success().add("pageInfo", page);
		return Msg.success().add("pageInfo", page);
		
	}
	

	
	
	
	
	
	
	
	
	
	
	
	
}
