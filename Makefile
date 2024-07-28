SERVER = server
CLIENT = client

LIBFT_DIR = libft
LIBFT = $(LIBFT_DIR)/libft.a

FLAGS = -Wall -Wextra -Werror
CC = cc

SERVERSRC = server.c
CLIENTSRC = client.c
SERVEROBJ = $(SERVERSRC:.c=.o)
CLIENTOBJ = $(CLIENTSRC:.c=.o)

INCLUDE = -I $(LIBFT_DIR) -I .

all: $(LIBFT) $(SERVER) $(CLIENT)

$(SERVER): $(SERVEROBJ) $(LIBFT)
	$(CC) $(FLAGS) $(SERVEROBJ) $(LIBFT) -o $@

$(CLIENT): $(CLIENTOBJ) $(LIBFT)
	$(CC) $(FLAGS) $(CLIENTOBJ) $(LIBFT) -o $@

%.o: %.c
	$(CC) $(FLAGS) $(INCLUDE) -c $< -o $@

$(LIBFT):
	$(MAKE) -C $(LIBFT_DIR)

clean:
	$(MAKE) -C $(LIBFT_DIR) clean
	rm -f $(SERVEROBJ)
	rm -f $(CLIENTOBJ)

fclean: clean
	$(MAKE) -C $(LIBFT_DIR) fclean
	rm -f $(SERVER)
	rm -f $(CLIENT)

re: fclean all

.PHONY: all clean fclean re
