#include <iostream>
#include "book.h"
#include "reader.h"

int main(void)
{
	Book *x = new Book(256, "Ion Druta", "Horodiste");
	Reader *y = new Reader(15, "Ion");

	y -> read(x);
	x -> aboutBook();

	delete x;
	delete y;
	return 0;
}
