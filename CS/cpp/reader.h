#pragma once
#ifndef READER_H
#define READER_H
#include <iostream>

class Book;
class Reader
{
	protected:
		std::string name;
		int    age;
	public:
		Reader(int age, std::string name);
		void read(Book *book);
};
#endif
