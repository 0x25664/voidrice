#include <stdio.h>

int fst();
int snd();
void main() {
	int first, second;
	first = fst();
	second = snd();
	printf("%f\n%f", first, second);
};
int fst() {
	float fahr, celsius;
	float lower, upper, step;

	lower = 0;
	upper = 300;
	step = 20;

	fahr = lower;
	while (fahr <= upper) {
		celsius = (5.0/9.0) * (fahr-32.0);
		printf("%3.0f %6.1f", fahr, celsius);
		fahr = fahr + step;
	return fahr;
	};
};
int snd() {
	int fahr;

	for (fahr = 300; fahr >= 0, fahr = fahr - 20;) {
		printf("%3d %6.1f\n", fahr, (5.0/9.0)*(fahr-32));
	};
	return fahr;
};
