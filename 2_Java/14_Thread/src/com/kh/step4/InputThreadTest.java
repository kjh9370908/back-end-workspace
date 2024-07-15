package com.kh.step4;

public class InputThreadTest {

	boolean check = false;
	
	public static void main(String[] args) {
		
		InputThreadTest process = new InputThreadTest();

		InputThread input = new InputThread(process);
		input.start();
		
		CountThread count = new CountThread(process);
		count.start();
		
	}

}
