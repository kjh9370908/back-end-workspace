package com.kh.practice;

import java.util.Arrays;
import java.util.Scanner;

import com.kh.practice.controller.BookController;
import com.kh.practice.model.Book;
import com.kh.practice.model.Member;

public class Application {
	
	Scanner sc = new Scanner(System.in);
	Member member = new Member();
	BookController bc = new BookController();
	Book[] books = {new Book("밥을 지어요", true, 0), 
				new Book("오늘은 아무래도 덮밥", false, 0), 
				new Book("원피스 108", false, 15), 
				new Book("귀멸의 칼날 23", false, 19)};
	int count = 0;
	
	public static void main(String[] args) {
		Application app = new Application();
		app.menu();
	}
	
	public void menu() {
		System.out.print("이름 : ");
		String name = sc.nextLine();
		
		System.out.print("나이 : ");
		int age = Integer.parseInt(sc.nextLine());
	
		bc.addMember(name, age);
		
		boolean close = true;
		while(true) {
			System.out.println("==== 메뉴 ====");
			System.out.println("1. 마이페이지");
			System.out.println("2. 도서 대여하기");
			System.out.println("3. 프로그램 종료하기");
			System.out.print("메뉴 번호 : ");
			
			switch(Integer.parseInt(sc.nextLine()) {
				case 1:
					System.out.println(bc);
					break;
				case 2:
					break;
				case 3:
					break;
				
				
			}
			
			
			}
			
			
			if(number == 1) {
				System.out.println(member);
			} else if(number == 2) {
				for(int i = 0; i < books.length; i++) {
					System.out.println((i+1) + "번 도서 : " + books[i]);
				}
				System.out.print("대여할 도서 번호 선택 : ");
				int select = Integer.parseInt(sc.nextLine());
				System.out.println();
					
				// 이미 대여한 책은 대여 불가능하게 만들어야 하는 경우
				for(Book value : member.getBookList()) {
					if(book != null && book.equals(books[select-1])) {
						System.out.println("이미 대여한 책입니다.");
						break;
				 }
				}
					
				// select(index+1) 번호에 따라서 해당 책이 Member - bookList에 추가
				member.getBookList()[count++] = books[select-1];
				
				// 쿠폰을 가지고 있는 경우
				if(books[select-1].isCoupon() ) {
					member.setCoupon(member.getCoupon() + 1);
				}
				System.out.println("성공적으로 대여되었습니다.");
				}
				
				check = true;
				
			}
			
		}
		
		
		
	}
	
	

}
