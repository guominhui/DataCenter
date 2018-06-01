package com.dictionary;

public enum OperateConstant {
   add(1),edit(2),clearCard(3),delete(4);
	private int operate;

	private OperateConstant(int operate) {
		this.operate = operate;
	}

	public int getValue() {
		return operate;
	}
	
	 
}
