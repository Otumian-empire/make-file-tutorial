files = hello.* test.cpp
bin = app
cc = g++ -Wall

all: compile run

compile:
	@clear
	@$(cc) $(files) -o $(bin)

run:
	@./$(bin)

clean:
	@rm $(bin) 
	
git-am:
	@git add $(files)
	@git commit -m "$(files)"

git-push:
	@git push -u origin master
