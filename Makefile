##
## EPITECH PROJECT, 2022
## as
## File description:
## as
##

CC	=	nasm

RM	=	rm -f

SRCS	=	strlen.asm\
		strchr.asm\
		strrchr.asm\
		memset.asm\
		memcpy.asm\
		strcmp.asm\
		strncmp.asm\

OBJS	=	$(SRCS:.asm=.o)

NAME	=	libasm.so

ASMFLAGS	=	-f elf64

LDFLAGS=    -fPIC -shared -o

all:	$(NAME)

$(NAME):	$(OBJS)
	ld $(LDFLAGS) $(NAME) $(OBJS)

%.o: %.asm
	$(CC) $(ASMFLAGS) $<

clean:
	$(RM) $(OBJS)
	$(RM) rm -f *.o

fclean:	clean
	$(RM) $(NAME)

re: fclean all
