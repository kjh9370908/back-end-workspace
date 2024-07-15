package com.kh.step1;

/*
 * 스레드 생성하는 방법
 * 
 * 1. Thread 클래스를 상속박는다
 * 2. run() 메서드를 오버라이딩 한다.
 * 3. Thread 클래스를 상속한 자식 클래스의 객체 생성 후 start() 메서드 호출한다
 * */

public class GoThread  extends Thread {
	
	public GoThread(String name) {
		super(name);
	}
	
	
	// 스레드가 작동하는 부분
	public void run() {
		for(int i = 0; 1 < 20; i++) {
			
			try {
				Thread.sleep(1000);
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
			
			String name = Thread.currentThread().getName();
			System.out.println("CurrentThread : " + name + " , " + i);
		}
	}
		
}



