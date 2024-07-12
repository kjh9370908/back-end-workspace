package com.kh.lamda;

/*
 * 람다식(Lamda Expressions) = > 자바스크립트의 화살표 함수!
 *  - 자바에서 함수적 프로그래밍을 위해서 자바 8부터 람다식을 지원
 *  - 람다식은 매개변수를 가지는 함수와 같은 코드 블록이지만 
 *    런타임 시에는 인터페이스의 익명 구현 객체를 생성한다.
 *  - 람다식을 사용하면 코드가 간결해지고, 컬렉션 요소들을 필터링하거나 매핑해서
 *    원하는 결과를 쉽게 가져올 수 있다.
 * */

public class Application {

	public static void main(String[] args) {
			
		int a = 10;
		int b = 3;
		
		Application app = new Application();
		System.out.println(app.plus(a, b));
		System.out.println(app.minus(a, b));
		System.out.println(app.multple(a, b));
		System.out.println(app.divide(a, b));
		
		System.out.println();
		
		// 람다식으로 바꿔보기!
		MathInterface plusLamda = (int x, int y) -> {
			return x + y;
		};
		MathInterface minusLamda = (int x, int y) -> x - y;
		MathInterface multipleLamda = (int x, int y) -> x * y;
		MathInterface divideLamda = (int x, int y) -> x / y;
		
		System.out.println(plusLamda.calc(a, b));
		System.out.println(minusLamda.calc(a, b));
		System.out.println(multipleLamda.calc(a, b));
		System.out.println(divideLamda.calc(a, b));
		
	}
	
	public int plus(int a, int b) {
		return a + b;
	}
	
	public int minus(int a, int b) {
		return a - b;
	}
	
	public int multple(int a, int b) {
		return a * b;
	}	
	public int divide(int a, int b) {
		return a / b;
	}
	
}
