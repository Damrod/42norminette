#!/bin/bash
/usr/local/bin/norminette $@ | grep --invert-match "KO" | sed 's@^[^(]*(line: \([0-9]\+\), col: \([0-9]\+\)):[ |\t]*\(.*\)@Error (line \1, col \2): \3 @g'
