package com.kh.loop;

import java.util.Scanner;

public class C_For {
	Scanner sc = new Scanner(System.in);
	
	/*
	 * for문
	 * 
	 * for(초기식; 조건식; 증감식) {
	 * 		실행 코드
	 * }
	 * 
	 * - 주어진 횟수만큼 코드를 반복 실행하는 구문
	 * - 초기식 : 반복문이 수행될 때 단 한번만 실행,
	 * 			 반복문 안에서 사용할 변수를 선언하고 초기값 대입
	 * - 조건식 : 결과가 true이면 실행 코드를 실행,
	 * 			false이면 실행하지 않고 반복문을 빠져나감
	 * - 증감식 : 반복문에서 사용하는 변수의 값을 증감, 주로 증감 연산자 사용
	 * 
	 * 
	 * */
	
	// 1 ~ 5 출력
	public void method1() {
		for(int i = 1; i <= 5; i >= 1; i--{{ 
	}
	
	// 1 ~ 5 반대로 출력
	public void method2()
	
	// 1~10사이의 홀수만 출력
	public void method3()
		for(int i = 1; 1<=10; i++) {
			if(i % 2 != 0) {
				System.out.println(i);
			}
		}
		
		for(int i = 1; i<=10; i+=2) {
			System.out.println(i);
		}
		
		System.out.println();
		/*
		 * continue 문
		 * - continue문은 반복문 안에서 사용
		 * - 반복문 안에서 continue를 만나면 "현재 구문" 종료
		 * - 반복문을 빠져나가는 건 아님! 다음 반복을 계속 수행
		 * */
		
		
		for(int i = 1; i<=10; i++) {
			if(i % 2 == 0) {
				continue;
			}
			System.out.println(i);
		}
		
	}
		
}
	// 1~10까지의 합계
	public void method4() {
		int sum = 0;
		for(int i = 1; i<=10; i++) {
			sum += i;
			
		}
	}
	// 1부터 사용자가 입력한 수까지의 합계
	public void method5() {
		System.out.print("수 입력 : ");
		int number = sc.nextInt();
		
		int sum = 0;
		for
	}
	
	
	// 1부터 랜덤값까지의 합계
	public void method6() {
		
		/*
		 * java.lang.Math 클래스에 제공하는 random() 메서드

 		 * 호출할 때마다 매번 다른 랜덤값을 얻어낼 수 있음
		 * */
		double random = Math.random(); // 0.0 <= random < 1.0
		random = Math.random() * 10; // 0.0<= random < 10.0
		random = Math.random() * 10 + 1; // 1.0 <= random < 11.0
		
	    int num = (int)random;
		System.out.println(random);
		
		/*
		 * 사용자한테 입력받은 문자열을 세로로 출력
		 * 사용자 입력 : HELLO
		 * H => str.charAt(0)
		 * e => str.charAt(1)
		 * l => str.charAt(2)
		 * o
		 *
		 * */
		public void method7() {
			System.out.println("사용자 입력 : ");
			String str = sc.nextLine();
		}	
		
		 for(int i = 0; i < str.length(); i++)
		
		System.out.println()
		
		/*
		 * 향상된 for문
		 * for(데이터타입 변수 : 배열) {
		 * 		변수 : 베열의 값을 하나씩 가지고 옴
		 * }
	     * 
	     * 
	     * 
	     * 문자열 : 문자의 배열, 여러 개의 문자가 배열을 이룬 것이 문자열 
	     * - String.charAt(int index) : 인덱스에 있는 문자를 char 형식으로 반환
	     * - String.tocharArray() : 모든 문자가 들어 있는 char[] 형식의 데이터 반환
		 * */
		char[] arr = str.toCharArray();
		for(char ch : str) {
			System.out.println(ch);
			
			
		}
		
		
		
		
	}
	
	
	public static void main(String[] args) {
		C_For c = new C_For();
//		c.method1();
//		c.method2();
//		c.method3();
		c.method4();
	}

}
