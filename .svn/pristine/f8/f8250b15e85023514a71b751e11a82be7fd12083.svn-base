package com.dao.proxyDel.mapper;


import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.pojo.Proxy;

public interface ProxyDelMapper {
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
    
    public int clearFCardCount(int userId);
    
    public int updateBonus(Proxy user);
    
    public int exchangeBonus(Proxy user);
    
    public List<Proxy> getAllProxys(Map<String, Object> paramMap);
    
    public int getAllProxysCount();
    //需要添加起始指针-----------
    public List<Proxy> getProxysByRecommendID(Map<String, Object> message) ;
    
    public List<Proxy> getProxysByPioneerID(Map<String, Object> message) ;
    
    public int getProxysCountByRecommendID(int recommendId) ;
    
    public int getProxysCountByPioneerID(int recommendId) ;
    
    public int editPassword(Proxy user);
    
    public List<Integer> getProxyIdsByRecommendID(int recommendPerson);
    
    public List<Integer> getProxyIdsByPioneerID(int pioneerPerson);
    //模糊查找，需要起始指针-------------
    public List<Proxy> getProxyLikeUsername(String username);
    //按时间方式查看所有代理
    
  //按时间方式查看下级代理
    public List<Proxy> getProxys(Map<String, Object> msg);
    
    public List<Proxy> getProxysByRecommendID(int recommendId) ;
}
