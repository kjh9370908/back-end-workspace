package com.kh.operator;

import java.util.Scanner;

public class F_tirple {
	Scanner sc = new Scanner(Syseml)
			
			/*
			 * 삼항 연산자
			 * 조건식? 값1 : 값2
			 * 
			 * 
			 * -조건식의 결과가 false 이면
			 * 
			 * */

	public static void main(String[] args) {
		F_tirple f = new F_tirple();
		f.method 1

	
	public void method1() {
			// 입력받은 정수가 양수인지 음수인지 판단
			System.out.print("정수값 >>");
			int number = sc.nextInt();
			
			String result = number > 0 ? "양수" : "음수";
			System.out.println(result);
			
			// 0이다 포함
			result = number == 0 ? "0이다" : number > 0? "양수": "음수";
			System.out.println(result);
		
			
			
			// (CJH)System.out.print("양수>=0=>음수");
			
			/*
			 * 실습문제 1
			 * 사용자한테 두 개의 정수값을 입력받아서 두 정수의 곱셈 결과 100보다 크거나
			 * 같은 경우 "결과가 100 이상입니다." 아닌 경우 "결과가 100보다 작습니다." 출력 
			 * */
			public void practice1() {
				System.out.ptint("정수값 1 >");
				int num1 = sc.nextInt();
				
				
			}
			
			} 
		//(CJH)public void practice1() {
	    // System.out.print("정수 * 정수 == >=100");
	    // int number = sc.nextInt();
	     
	     //(CJH)String result = number >= 100 ? "100 이상입니다" : "100 이하입니다.";
	     //System.out.println(result);
			
			
			/*
			 * 실습문제 2
			 * 사용자한테 문자를 하나 입력받아서 입력한 문자가 대문자이면
			 * "알파벳 대문자이다." 아닌 경우 "알파벳 대문자가 아니다." 출력
			 * */
			public void practice2() {
			 System.out.print("알파벳 대문자이다"  :"알파벳 대문자가 아니다.");
			 int eng = sc.nextInt();
			 
			 String result = eng=(A~Z="알파벳 대문자이다." a~z"알파벳 대문자가 아니다.");
			 System.out.println(result);
			 }
			
			
			/*
			 * 실습문제 3
			 * 두 정수를 입력받고 + 또는 -를 입력받아서 계산을 출력
			 * 단, + 또는 - 이외의 문자를 입력하는 경우 "잘못 입력했습니다. 출력
			 * 
			 * 예시)
			 * 첫번째 수 > 3
			 * 두번째 수 > 4
			 * 
			 * 연산자 입력(+ 또는 -) > +
			 * 3 + 4 = 7
			 * 
			 * 연산자 입력(+ 또는 -) > -
			 * 3 - 4 = -1
			 * 
			 * 연산자 입력(+ 또는 -) > *
			 * 잘못 입력했습니다.
			 * 
			 * 
			 * */
		public void practice3()
		System.out.print("연산자 입력(+ 또는 -) >");
		char op = sc.nextLine().charAt(0);
		
		String result =
					   op == '+'
					   ? num1 + "+" + num2 + "=" + (num1 + num2)
					   : op == '-'
					   		? num1 + "-" + num2 + "=" + (num1 - num2)
					   		: "잘못 입력했습니다";
		//System.out.println(result);
		
		// 또 다른 방법 1 : 조건문 사용(이건 다음주 월요일! 24.7.1)
		if(op == '+' || op == '-')
		
		System.out.printf("%d %c %d = %d", num1, op, num2, op=='+'? (num1+num2)
				: (num1-num2));
		// 또 다른 방법 2
		result = op == '+'
				   ? String.format("%d %d = %d", num1, 
				   : op == '-'
				   		? num1 + "-" + num2 + "=" + (num1 - num2)
				   		: "잘못 입력했습니다";
			
			
			
		/* (CH+JH)ublic void practice3() {
			System.out.print("정수값" : "정수값", "+,-");
			int number =sc.nextINt();
			
			String result = number
		*/ 



	
	
	}

}
