# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tcohen <tcohen@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/06/10 12:10:54 by tcohen            #+#    #+#              #
#    Updated: 2024/06/10 20:33:04 by tcohen           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


NAME = libft.a

CC = cc

CFLAGS = -Wall -Wextra -Werror

INCLUDES = -I .

FUNC = ft_atoi.c ft_bzero.c ft_calloc.c ft_isalnum.c ft_isalpha.c \
		ft_isascii.c ft_isdigit.c ft_isprint.c ft_memchr.c \
		ft_memcmp.c ft_memcpy.c ft_memmove.c ft_memset.c ft_strchr.c \
		ft_strdup.c ft_strlcat.c ft_strlcpy.c ft_strlen.c ft_strncmp.c \
		ft_strnstr.c ft_strrchr.c ft_tolower.c ft_toupper.c

FUNCADDITIONAL =	ft_substr.c ft_strjoin.c ft_strtrim.c ft_split.c \
			ft_itoa.c ft_strmapi.c ft_striteri.c ft_putchar_fd.c \
			ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c

BONUS =	$(addprefix ft_, $(addsuffix _bonus.c, lstadd_back \
		lstadd_front \
		lstclear \
		lstdelone \
		lstiter \
		lstlast \
		lstmap \
		lstnew \
		lstsize))

SRCS = $(FUNC) $(FUNCADDITIONAL)

SRCSALL = $(SRCS) $(BONUS)

OBJS = $(SRCS:.c=.o)

OBJSALL = $(SRCSALL:.c=.o)

%.o : %.c
	$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@ 


$(NAME) : $(OBJS)
	ar -rsc $(NAME) $(OBJS)

all : $(NAME)

bonus : $(OBJSALL)
	ar -rsc $(NAME) $(OBJSALL)

clean : 
	rm -rf $(OBJSALL)

fclean : clean
	rm -rf $(NAME)

re : fclean all

.PHONY : all bonus clean fclean re
