SRCS		 = base.c hexa.c libft.c 

OBJS		= ${SRCS:.c=.o}

HEAD		= ft_printf.h

NAME		= libftprintf.a

AR		= ar rc

RM		= /bin/rm -f

LIB		= ranlib

GCC		= cc

CFLAGS		= -Wall -Wextra -Werror

all:		${NAME}

.c.o:		
		${GCC} ${CFLAGS} -c -I ${HEAD} $< -o ${<:.c=.o}

${NAME}:	${OBJS}
		${AR} ${NAME} ${OBJS}
		${LIB} ${NAME}

clean:		
		rm -f ${OBJS}

fclean:		clean
		rm -f ${NAME}

re:		fclean all

.PHONY:		all clean fclean re
