/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main_multiple.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: vvaltone <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/10/31 16:25:18 by vvaltone          #+#    #+#             */
/*   Updated: 2019/10/31 16:25:33 by vvaltone         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../get_next_line.h"
#include <stdio.h>
#include <fcntl.h>
#include <sys/uio.h>
#include <sys/types.h>

int	main(int argc, char const *argv[]) {
	int fd;
	int fd_2;
	int i;
	char *line;
	int status;

	fd = open(argv[1], O_RDONLY);
	i = 1;
	while ((status = get_next_line(fd, &line)) == 1 && i < 500)
	{
		printf("%s\n ^Return of this line (#%d) was: %d\n", line, i++, status);
		free(line);
	}
	fd_2 = open(argv[2], O_RDONLY);
	close(fd);
	fd = fd_2;
	while ((status = get_next_line(fd, &line)) == 1)
	{
		printf("[%d] %s\n", i++, line);
		free(line);
	}
	return (argc);
}
