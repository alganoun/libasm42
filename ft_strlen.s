# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strlen.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alganoun <alganoun@student.42lyon.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/01/12 14:18:53 by alganoun          #+#    #+#              #
#    Updated: 2021/01/12 15:14:39 by alganoun         ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

section .text
	global _start
_start

asm -f macho64 test.s && ld -e _start -macosx_version_min 10.12 -lSystem -o test test.o
