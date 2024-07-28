/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   mini_talk.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tcohen <tcohen@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/07/27 11:14:30 by theog             #+#    #+#             */
/*   Updated: 2024/07/28 14:28:48 by tcohen           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef MINI_TALK_H
# define MINI_TALK_H

# include "libft/libft.h"
# include "signal.h"

typedef struct sig_state{
	int		bit_index;
	size_t	len;
	char	letter;
	char	*str;
	int		str_index;
}			t_sig_state;

#endif