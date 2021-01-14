/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: allanganoun <allanganoun@student.42.fr>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/01/14 23:42:27 by allanganoun       #+#    #+#             */
/*   Updated: 2021/01/15 00:08:34 by allanganoun      ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <string.h>

size_t  ft_strlen(const char *str);

int     main()
{
    char *str = "coucou est ce que ca va";

    printf("str = %lu\n", strlen(str));
    printf("my str = %zu\n", ft_strlen(str));
    return (0);
}