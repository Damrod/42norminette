#!/bin/sh
/home/linuxbrew/.linuxbrew/lib/ruby/gems/2.7.0/bin/norminette $1| grep Error| sed 's@line \([0-9]\+\))@line \1, col 0)@g;s@\(^Error: \)@Error (line 0, col 0): @g'
