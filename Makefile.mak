
#################################################
# Makefile format
# target: dependencies
# <tab>	 Command to generate target
#################################################

# -----------------------------------------------
# Super useful shortcuts:
#   $@ matches the target; 
#   $< matches the first dependent
#   $^ Matches all dependencies
# -----------------------------------------------

# -----------------------------------------------
# But first, some definitions.

# -----------------------------------------------
# Flag to replace gcc,  $(CC) = gcc
CC= gcc
# -----------------------------------------------
# CLEAN definition - git rid of compiled stuff
CLEAN= rm -rf *.o story 
# -----------------------------------------------
# TEST definition - write to file and cat file
TEST= (./story > the_story.txt) ; cat the_story.txt

# -----------------------------------------------
# The standard default target is 'all'
# This target has no command, only a dependency.
# We will execute test though, when it's built.
# -----------------------------------------------

all: story

test:
	@$(TEST)

# -----------------------------------------------
# When you type 'make clean', you get rid of
# all of the *.0 and the 'story' file.
# -----------------------------------------------

clean:
	$(CLEAN)


# -----------------------------------------------
# Now we bring in our dependencies.
# 'all' needs 'story.0'. What does story need?
# And how do we make it?
# -----------------------------------------------

story: story.o bpbkt7.o bmwr84.o tnrn9b.o
#pawprint.o - where is your .c derived object file - where is your file

# -----------------------------------------------

story.o: story.c 
	$(CC) -c $^

# -----------------------------------------------
bpbkt7.o: sentences/bpbkt7.c
	$(CC) -c $< 

tnrn9b.o: sentences/tnrn9b.c
