# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lacruype <lacruype@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/10/10 11:44:06 by lacruype          #+#    #+#              #
#    Updated: 2020/02/17 15:32:09 by lacruype         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

HEADER = libft.h

SRCS =	ft_atoi.c			ft_bzero.c				ft_isalnum.c			ft_strlcat.c	\
		ft_isalpha.c		ft_isascii.c			ft_isdigit.c			ft_isprint.c	\
		ft_itoa.c			ft_putstr_fd.c 			ft_putnbr_fd.c 			ft_putendl_fd.c	\
		ft_memcmp.c			ft_memcpy.c				ft_strtrim.c			ft_memset.c		\
		ft_split.c			ft_strchr.c				ft_strdup.c								\
		ft_strjoin.c		ft_strlcpy.c 			ft_putchar_fd.c 		ft_memchr.c		\
		ft_strlen.c			ft_strmapi.c			ft_strncmp.c			ft_strnstr.c	\
		ft_strrchr.c		ft_substr.c				ft_tolower.c 							\
		ft_toupper.c		ft_calloc.c				ft_memccpy.c 			ft_memmove.c	\
		ft_putstrstr.c		get_next_line.c				get_next_line_utils.c \

OBJS = $(SRCS:.c=.o)

FLAGS = -Wall -Wextra -Werror

RM = /bin/rm -f

.c.o:
	gcc $(FLAGS) -I $(HEADER) -c $< -o $(<:.c=.o)

all: $(NAME)

$(NAME): $(OBJS)
	ar rc $(NAME) $(OBJS)
	ranlib $(NAME)

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY:	all clean fclean
