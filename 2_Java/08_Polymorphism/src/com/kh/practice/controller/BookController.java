package com.kh.practice.controller;

import com.kh.practice.model.Member;

public class BookController {


	private Member member = new Member();
	
	
	// 내 정보 추가
	public void addMember(String name, int age) {
		member.setName(name);
		member.setAge(age);
		
	}
	
	// 마이페이지
	public void myPage() {
		return member;
	}

	
	// 책 대여
	public String rentBook(Book book) {
	 ArrayList<Book> bookList = member.getBookList();				
	}
	
	if(bookList.size( < 2 ) {
		if member.getAge() < book.getAccessAge()){
		return "나이 제한으로 대여 불가능입니다.";
		}
	}
			bookList.add(book);
			
			if(book)
	
	
	
	
	
	
}


