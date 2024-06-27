/*
 * * 자바의 특징
 *	 - 객체지향 프로그래밍(Object-Oriented Programming, oop) 언어다.
 *	 - 자동으로 메모리를 관리한다. (Garbage Collection)
 *	 - 운영체제에 독립적이다.(JVM)
 *   - 네트워크와 분산처리를 지원한다. (Java API)
 *   - 멀티 스레드를 지원한다. (Java API)
 *   - 동적 로딩을 지원한다.
 * 
 * * JDK > JRE > JVM
 * 		-JDK(Java Development kit) : 자바 개발 도구
 * 			= JRE + 실행파일(bin/javac.exe, java.exe 등)
 * 
 * 	 	-JRE(Java Runtime Environment) : 자바 실행 환경
 * 			= JVM + Java API(lib/src.zip)
 * 			
 *		-JVM(Java Virtual Machine) : 자바 가상 머신
 *
 * * 자바 프로그램 실행 단계
 * 		- 확장자가 .java인 소스파일을 작성한다.
 *		- 작성된 소스파일을 자바 컴파일러(javac.exe)로 컴파일하여
 *			확장자가 .class인 바이트코드(기계어)로 번역한다.
 *		- 번역된 바이트코드(기계어)를 JVM의 자바 인터프리터(java.exe)를 이용해 실행한다
 *		- 모든 클래스는 하나의 패키지에 속하며, 패키지가 선언되지 않는 클래스는 자동적으로
 *		- 이름 없는 패키지(default)에 속하게된다
 * */	


package com.kh;

/* 클래스(calss)
 * - 자바에서 모든 코드는 반드시 클래스 안에 존재해야 하며
 * 	 서로 관련된 코드들을 그룹으로 나누어 별도의 클래스를  구성한다.
 * 	
 * */

public class Hello { // 클래스명은 클래스 파일명과 동일해야 한다.
	/*
	 * 매서드(method)	
	 *  - 클래스의 기능(동작)에 해당되는 구현 부분이다.
	 * 
	 * */
	// 실행 메서드 (main 메서드) : ㅈ
    // 모든 클래스가 main 메서드를 가지고 있어야 하는건 X
	// 하나의 Java 애플리케이션에는 main 메서드를 포함한 클래스가 반드시 하나는있어야 한다
	public static void main(String[] args) {
		
		System.out.println("Hello, Java!"); // ctrl + F11
	
	
	
	}
	/*
	 * 네이밍 규칙
	 * - 패키지 : 소문자로 작성, 회사들 간에 패키지가 서로 중복되지 않도록
	 * 						 회사의 도메인 이름으로 패키지를 만든다.
	 * */
	
	
	
	
}
