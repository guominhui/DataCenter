package com.service.distribution;

import java.util.Date;
import java.util.List;

import com.pojo.DistributionRecord;

public interface DistributionService {
	
	public List<DistributionRecord> findDistributionByID(int id,Date startTime,Date endTime,int startIndex,int length);

	public void addDistribution(DistributionRecord distributionRecord);
}
