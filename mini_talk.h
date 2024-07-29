/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   mini_talk.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: theog <theog@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/07/27 11:14:30 by theog             #+#    #+#             */
/*   Updated: 2024/07/29 21:44:20 by theog            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef MINI_TALK_H
# define MINI_TALK_H

# include "libft/libft.h"
# include <signal.h>

typedef struct sig_state{
	int		bit_index;
	size_t	len;
	char	letter;
	char	*str;
	int		str_index;
	int		malloc_state;
}			t_sig_state;

#endif