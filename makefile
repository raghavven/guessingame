entry:readme.md

readme.md: guessingame.sh
			echo "The name of the project is GuessingGame by Sean Kross on Coursera" > readme.md
			echo "Date and time when the make was ran: $(shell date)" >> readme.md
			echo "The no. of lines in the guessingame.sh: $(shell cat guessingame.sh | wc -l)" >> readme.md
