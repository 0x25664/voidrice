#include <iostream>
#include "book.h"

Book::Book(int pages, std::string author, std::string bookname) {
	this->pages = pages;
	this->author = author;
	this->bookname = bookname;
}
void Book::aboutBook()
{
	std::cout << "Book has " << pages << " pages" << std::endl;
	std::cout << "Book was written by " << author << std::endl;
}
auto Book::getPages() { return pages; }
auto Book::getAuthor() { return author; }
void Book::setPages(int pages) { this->pages = pages; }
void Book::setAuthor(std::string author) { this->author = author; }
