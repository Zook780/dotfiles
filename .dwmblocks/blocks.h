//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	{"  ", "top -bn1 | grep load | awk '{printf "%.2f%%\t\t\n", $(NF-2)}'", 15, 0},
	{" ", "free -h | awk '/^Mem: /{ print $3 }'", 15, 0},
	{" ", "pamixer --get-volume", 1, 0},
	{" ", "date '+(%b %d) %I:%M%p '", 5, 0},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = "  ";
static unsigned int delimLen = 5;
