#include <iostream>
#include <iomanip>
#include <fstream>
#include <unistd.h>
#include <cstdlib>
#include <cstdint>
#include <string>
#include <vector>
#include <map>
#include <utility>

#define RED_TEXT "\033[31m"
#define GREEN_TEXT "\033[32m"
#define YELLOW_TEXT "\033[33m"
#define BLUE_TEXT "\033[34m"
#define MAGENTA_TEXT "\033[35m"
#define CYAN_TEXT "\033[36m"
#define RED_BOLD_TEXT "\033[1;31m"
#define GREEN_BOLD_TEXT "\033[1;32m"
#define YELLOW_BOLD_TEXT "\033[1;33m"
#define BLUE_BOLD_TEXT "\033[1;34m"
#define MAGENTA_BOLD_TEXT "\033[1;35m"
#define CYAN_BOLD_TEXT "\033[1;36m"
#define RESET_TEXT "\033[0m"

constexpr unsigned int EVENT_START = 0xFFFFFFFF;
constexpr unsigned short EVENT_END = 0xE000;
constexpr unsigned short FEM_HEADER = 0xFFFF;
constexpr unsigned short WORD_HEADER = 0xF;

const std::map<unsigned short, short> HUFFMAN_TABLE = {
	{0, 0},
	{1, -1},
	{2, 1},
	{3, -2},
	{4, 2},
	{5, -3},
	{6, 3}
};

void displayProgressBar(double progress);
