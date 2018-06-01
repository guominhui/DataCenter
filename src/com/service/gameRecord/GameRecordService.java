package com.service.gameRecord;

import java.util.Date;
import java.util.List;

import com.pojo.GameRecord;

public interface GameRecordService {

	public List<GameRecord> handGameRecordMsgWithRoomId(int roomId,int roomIndex);
	public List<GameRecord> findGameRecordByPlayerId(int playerId,Date startTime,Date endTime,int startIndex,int length);
    public String getGameTypeMsg(int gameType);
}
