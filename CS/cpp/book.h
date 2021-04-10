#pragma once
#ifndef BOOK_H
#define BOOK_H
#include <iostream>
class Book
{
	protected:
		int pages;
		std::string author;
	public:
		std::string bookname;
		Book(int pages, std::string author, std::string bookname);
		void aboutBook();
		auto getPages();
		auto getAuthor();
		void setPages(int pages);
		void setAuthor(std::string author);
};
#endif
