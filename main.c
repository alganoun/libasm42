/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alganoun <alganoun@student.42lyon.fr>      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/01/14 23:42:27 by allanganoun       #+#    #+#             */
/*   Updated: 2021/01/20 08:22:06 by alganoun         ###   ########lyon.fr   */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"

int     main()
{
    int fd;
	char str[24] = "\n";
	char buffer[10];
	char *str3;
	char *str4;
	const char *str2;


	str2 = "\0";
	fd = open("./memo.txt", O_RDONLY);
    /*FT_STRLEN*/
	//printf("str = %lu\n", strlen(str));
    //printf("my str = %zu\n", ft_strlen(str));

	/*FT_STRCMP*/
	//printf("cmp = %d\n", strcmp(str, str2));
    //printf("my cmp = %d\n", ft_strcmp(str, str2));

	/*FT_STRCPY*/
	//printf("Cpy = %s\n", strcpy(str, str2));
	//printf("my cpy = %s\n", ft_strcpy(str, str2));

	/*FT_READ*/
	//printf("read = %zd\n", read(fd, buffer, 10));
	//printf("my read = %zd\n", ft_read(fd, buffer, 10));

	/*FT_WRITE*/
	//write(1,"coucou est ce que ca va\n", 25);
	//ft_write(1,"coucou est ce que ca va\n", 25);

	/*FT_STRDUP*/
	str3 = strdup(str);
	str4 = ft_strdup(str);
	printf("strdup = %s\nmystrdup = %s\n", str3, str4);
	return (0);
}
