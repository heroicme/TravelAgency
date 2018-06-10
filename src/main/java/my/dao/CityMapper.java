package my.dao;

import my.bean.City;
import my.bean.CityPicture;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CityMapper {

	City getCityInfo(String cityTn);

	CityPicture getCp(@Param("cityTn") String cityTn, @Param("type") String type);

	List<CityPicture> getNav(@Param("cityTn") String cityTn, @Param("type") String type);

	List getJdSurvey(int id);

	List getMsSurvey(int id);

	List getYlSurvey(int id);

	List getJRwSurvey(int id);

	List getWhSurvey(int id);

	List getLsSurvey(int id);

	List<City> getCityList();

	
}
