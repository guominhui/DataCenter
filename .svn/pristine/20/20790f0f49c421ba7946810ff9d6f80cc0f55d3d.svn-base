package com.dao.proxy;

import java.util.Date;
import java.util.HashMap;
import java.util.List;

import com.dao.base.BaseDao;
import com.pojo.CardRecord;
import com.pojo.Proxy;

public interface ProxyDao extends BaseDao<Proxy>{

	   /** 
  * 注意要和Employeer.xml的方法名对应 
  */  
 public Proxy findProxyByID(int id);  

 /** 
  * 注意要和Employeer.xml的方法名对应 
  */  
 public int addProxy(Proxy user);  

 /** 
  * 注意要和Employeer.xml的方法名对应 
  */  
 public int deleteProxy(int userId);  

 /**
  * 注意要和Employeer.xml的方法名对应 
  */  
 public int updateProxy(Proxy user); 
 
 public int updateLCardCount(Proxy user);
 
 public int updateFCardCount(Proxy user);
 
 public int updateBonus(Proxy user);
 
 public int exchangeBonus(Proxy user);
 
 public List<Proxy> getProxysByPioneerID(int pioneerId,int startIndex,int length);
 
 public int getProxysCountByRecommendID(int recommendId);
 
 public int getProxysCountByPioneerID(int pioneerId);
 //-----------------------------------
 public List<Proxy> getAllProxys(Date startTime,Date endTime,int startIndex,int length);
 
 public int getAllProxysCount();

 public List<Integer> getProxyIdsByRecommendID(int recommendPerson);
 
 public List<Integer> getProxyIdsByPioneerID(int pioneerPerson);
 
 public List<Proxy> getProxys(int id, Date crTime, Date enTime,int startIndex,int length);

 public List<Proxy> getProxysByRecommendID(int recommendPerson);
 
 public int clearFCardCount(int userId);
 
 public int removeProxy(int proxyId);
}
