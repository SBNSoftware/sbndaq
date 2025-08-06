#include "utility.hh"

void displayProgressBar(double progress) {
  const int barWidth = 50;
  int pos = static_cast<int>(barWidth * progress);
  int percent = static_cast<int>(progress * 100.0);

	std::cout << "Progress: " << GREEN_BOLD_TEXT << std::setw(3) << percent << "%" << RESET_TEXT;
	std::cout << " [";
	for (int i = 0; i < barWidth; ++i) {
		if (i < pos) std::cout << "=";
		else if (i == pos) std::cout << ">";
		else std::cout << " ";
	}
	std::cout << "]\r";
	std::cout.flush();
}
