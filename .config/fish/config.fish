function fish_greeting
    echo -s (set_color D7C483) "Hello" (set_color 9D0006)" Human"
end

function fish_prompt
	echo -s (set_color 685742) '[' (set_color D7C483) (date +%T) (set_color 685742) ']' (set_color 5F875F) ' ' $USER (set_color 685742) '@' (set_color D7C483) $hostname ' ' (set_color 78824B) (prompt_pwd) ' ' (set_color 685742) '> '
end
