/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   server.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: theog <theog@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/07/26 12:23:37 by theog             #+#    #+#             */
/*   Updated: 2024/07/29 22:19:50 by theog            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "mini_talk.h"

t_sig_state	state = {0, 0, 0, NULL, 0, 0};

static void	ft_reset_state(t_sig_state *state)
{
	free(state->str);
	state->str = NULL;
	state->len = 0;
	state->str_index = 0;
	state->letter = 0;
	state->bit_index = 0;
	state->malloc_state = 0;
}

static int	ft_bit2int(t_sig_state *state, int signal)
{
	if (signal == SIGUSR1)
	{
		state->len |= (1 << state->bit_index);
	}
	state->bit_index++;
	if (state->bit_index == 64)
	{
		state->bit_index = 0;
		printf("len received %zu\n", state->len);
		state->str = (char *)malloc((state->len + 1) * sizeof(char));
		if (!state->str)
			state->malloc_state = 1;
	}
	return (0);
}

static void	ft_handle_sig(int signal)
{
	if (state.str == NULL)
		ft_bit2int(&state, signal);
	else
	{
		if (signal == SIGUSR1)
			state.letter |= (1 << state.bit_index);
		state.bit_index++;
		if (state.bit_index == 8)
		{
			state.str[state.str_index] = state.letter;
			state.str_index++;
			if (state.letter == '\0')
			{
				ft_putendl_fd(state.str, 1);
				ft_reset_state(&state);
				return ;
			}
			state.letter = 0;
			state.bit_index = 0;
		}
	}
}

int	main(int argc, char **argv)
{
	struct sigaction sa;

	(void)argv;
	if (argc > 1)
	{
		ft_putstr_fd("Juste write ./server\n", 2);
		return (0);
	}
	ft_putnbr_fd(getpid(), 1);
	ft_putstr_fd("\n", 1);
	sa.sa_handler = ft_handle_sig;
	sa.sa_flags = SA_RESTART;
	sigemptyset(&sa.sa_mask);
	sigaddset(&sa.sa_mask, SIGUSR1);
	sigaddset(&sa.sa_mask, SIGUSR2);
	sigaction(SIGUSR1, &sa, NULL);
	sigaction(SIGUSR2, &sa, NULL);
	while (state.malloc_state != 1)
	{
		pause();
	}
	if (state.malloc_state == 1)
	{
		ft_putstr_fd("Malloc failed", 2);
		ft_reset_state(&state);
		exit(1);
	}
	return (0);
}
