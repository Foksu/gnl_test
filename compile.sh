# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    compile.sh                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vvaltone <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/10/31 16:26:51 by vvaltone          #+#    #+#              #
#    Updated: 2019/10/31 16:26:55 by vvaltone         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/sh

make -C libft/ fclean && make -C libft/
clang -Wall -Wextra -Werror -g -I libft/includes -o get_next_line.o -c get_next_line.c
clang -Wall -Wextra -Werror -g -I libft/includes -o main.o -c main.c
clang -o test_gnl main.o get_next_line.o -I libft/includes -L libft/ -lft
