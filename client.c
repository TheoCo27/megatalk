/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   client.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tcohen <tcohen@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/07/26 12:10:44 by theog             #+#    #+#             */
/*   Updated: 2024/07/29 13:22:07 by tcohen           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "mini_talk.h"

static void	ft_send_len(pid_t pid, size_t strlen)
{
	size_t	i;
	size_t	mask;

	i = 0;
	mask = 1;
	while (i < 64)
	{
		if (mask & strlen)
			kill(pid, SIGUSR1);
		else
			kill(pid, SIGUSR2);
		mask <<= 1;
		i++;
		usleep(300);
	}
	printf("len %lu sent\n", strlen);
}

static void	ft_send_nullbit(pid_t pid)
{
	int	bit_index;

	bit_index = 0;
	while (bit_index < 8)
	{
		kill(pid, SIGUSR2);
		usleep(300);
		bit_index++;
	}
}

static void	ft_send_str(pid_t pid, char *str)
{
	int		bit_index;
	int		str_index;
	char	mask;

	str_index = 0;
	while (str[str_index])
	{
		bit_index = 0;
		mask = 1;
		while (bit_index < 8)
		{
			if (mask & str[str_index])
				kill(pid, SIGUSR1);
			else
				kill(pid, SIGUSR2);
			mask <<= 1;
			bit_index++;
			usleep(300);
		}
		str_index++;
	}
	ft_send_nullbit(pid);
	ft_putstr_fd("str sent\n", 1);
}

static int	ft_check_error(char **argv)
{
	size_t	i;

	i = 0;
	if (argv[1][0] == '0' && argv[1][1] == '\0')
	{
		ft_putstr_fd("pid always superior to zero\n", 2);
		exit(2);
	}
	while (argv[1][i])
	{
		if (ft_isdigit((int)argv[1][i]) == 0)
		{
			ft_putstr_fd("pid only contains digits\n", 2);
			exit(3);
		}
		i++;
	}
	return (0);
}

int	main(int argc, char **argv)
{
	pid_t	pid;
	int		strlen;

	if (argc != 3)
	{
		ft_putstr_fd("Need argv[1] = server_pid | argv[2] = string\n", 2);
		return (1);
	}
	ft_check_error(argv);
	pid = ft_atoi(argv[1]);
	strlen = ft_strlen(argv[2]);
	ft_send_len(pid, strlen);
	ft_send_str(pid, argv[2]);
	return (0);
}
