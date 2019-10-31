# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    compile_multiple.sh                                :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vvaltone <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/10/31 16:27:48 by vvaltone          #+#    #+#              #
#    Updated: 2019/10/31 16:28:42 by vvaltone         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/sh

make -C ../libft/ fclean && make -C ../libft/
clang -Wall -Wextra -Werror -g -I ../libft/includes -o ../get_next_line.o -c ../get_next_line.c
clang -Wall -Wextra -Werror -g -I ../libft/includes -o main_multiple.o -c main_multiple.c
clang -o test_gnl_multiple main_multiple.o ../get_next_line.o -I ../libft/includes -L ../libft/ -lft
