CCP=${CROSS_COMPILE}
CC= gcc
OBJ= max.o min.o var.o

ifeq (${DEBUG},yes)
	CC_OPTIONS=-g -Wall
	MODE= Mode Debug
else
	CC_OPTIONS= 
	MODE= Mode Release
endif
mode : test.exe
	@echo "$(MODE)"

max.o : max.c	
	$(addsuffix ${CC} ,${CCP}) ${CC_OPTIONS} -c $^

min.o : min.c
	 $(addsuffix ${CC} ,${CCP}) ${CC_OPTIONS} -c $^

var.o : var.c
	 $(addsuffix ${CC} ,${CCP}) ${CC_OPTIONS} -c $^

test.o : test.c
	 $(addsuffix ${CC} ,${CCP}) ${CC_OPTIONS} -c $^

test.exe : test.o ${OBJ}
	 $(addsuffix ${CC} ,${CCP}) ${CC_OPTIONS} -o $@ $< ${OBJ} 

install : test.exe
	mv test.exe ${HOME}

clean: 
	rm ${OBJ}
