install make
create a file, makefile or Makefile in the directory of the said project

<!-- Project/Makefile -->
say_hello:
        echo "Hello World"

then,
cd Project
make

say_hello behaves like a function name, as in any programming language.
This is called the target. The prerequisites or dependencies follow the
 target. For the sake of simplicity, we have not defined any prerequisites
 in this example. The command echo "Hello World" is called the recipe.
 The recipe uses prerequisites to make a target. The target, prerequisites,
 and recipes together make a rule.

<!-- makefile rule (generally written) -->
target: prerequisites
<TAB> recipe

After the first make, the recipe was displayed, and to suppress that, preceed
recipe with @

<!-- Project/Makefile (adding @ to echo) -->
say_hello:
	@echo "Hello world!"


We can add more targets

It will happen that only the first target will be executed and that is
 because the it is the default target known as the default goal. 
 Change it by setting
.DEFAULT_GOAL := another_target

This will only run a single target

To run many targets, add the target all, as a target that can call as
 many targets as needed.

SO lets say that there is a target that removes/deletes/destroys something,
 you don't add it to the all. Instead you can call it, say as we have 
 the clean target with removes the file, make clean and this will call the
  clean target


<!-- advanced concepts -->
Before we hard coded most of the targets but now we shall make use of 
variables and the basic way is to say, var = command

<!-- Project1/Makefile -->
cc = gcc

Now lets use this knowledge to compile some c++ programs

<!-- Project1/Makefile -->
cc=g++

compile_hello_world: hello_world.cpp
	${cc} hello_world.cpp -o hello_world


Now assigning a variable to itself may lead to an infinite loop but to
avoid that use := instead of =.
