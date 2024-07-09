package com.kh.set.model;

import com.kh.set.model.Person;

public class Person {
	
	private String name;
	private int age;
	public Person(String name, int age) {
		this.name = name;
		this.age = age;
	}
	@Override
	public String toString() {
		return "person [name=" + name + ", age=" + age + "]";
	}
	
	public int compareTo(Person o) {
		// return this.age - o.age;
		return (o.age - this.age) * -1;
	}
	

}
