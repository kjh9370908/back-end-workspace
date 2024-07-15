package com.kh.step4;

public class CountThread extends Thread {
	
	InputThreadTest process;
	
	public CountThread(InputThreadTest process) {
		this.process = process;
	}

	
	public void run() {
		
		// 2. 카운팅 작업
		for(int i = 10; i > 0; i--) {
			if(process.check) break;
			System.out.println(i);
			try {
				Thread.sleep(1000);
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
			
		}
		if(!process.check) {
			System.out.println("10초 경과! 종료시키겠습니다");
			System.exit(0); // <--- 강제 종료!
		}
		
		
	}
	
	
}

