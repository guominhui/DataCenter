package com.dao.gameRecord;

import java.util.Date;
import java.util.List;

import com.pojo.GameRecord;

public interface GameRecordDao {
	
	public List<GameRecord> findGameRecordByID(int roomId);
	public List<GameRecord> findGameRecordByPlayerId(int playerId,Date startTime,Date endTime,int startIndex,int length);
}
