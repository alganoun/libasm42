# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alganoun <alganoun@student.42lyon.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/01/20 09:54:14 by alganoun          #+#    #+#              #
#    Updated: 2021/01/21 13:51:14 by alganoun         ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

NAME	= 	libasm.a

HEAD	=	./includes//libasm.h

SRCS	=	./srcs/ft_read.s \
			./srcs/ft_write.s \
			./srcs/ft_strlen.s \
			./srcs/ft_strcmp.s \
			./srcs/ft_strcpy.s \
			./srcs/ft_strdup.s

OBJS	= ${SRCS:.s=.o}

RM		=	rm -rf

%.o		:	%.s
			nasm -f macho64 $< -o $@


all		:	${NAME}

${NAME}	:	${OBJS} ${HEAD}
			@echo '\x1b[32m'"Compiling LIBASM Library..."'\x1b[37m'
			ar rc ${NAME} ${OBJS}
			@echo '\x1b[32m'"Done."


clean	:
			@echo '\x1b[31m'"Deleting all object files..."'\x1b[37m'
			${RM} ${OBJS}
			@echo '\x1b[31m'"Done."

fclean	:	clean
			@echo '\x1b[31m'"Deleting Library..."'\x1b[37m'
			${RM} ${NAME}
			@echo '\x1b[31m'"Done."

re		:	fclean all

.PHONY	:	re all clean fclean

