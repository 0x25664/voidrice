#include "iostream"
#include "reader.h"
#include "book.h"
Reader::Reader(int age, std::string name)
{
	this->age = age;
	this->name = name;
}
void Reader::read(Book *book)
{
	std::cout << (name + " is reading Book " + book -> bookname) << std::endl;
}
