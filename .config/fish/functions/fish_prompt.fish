function fish_prompt
    set -l last_command_status $status
    set -g __fish_git_prompt_describe_style branch
    # set -g __fish_git_prompt_show_informative_status true
    # set -g __fish_git_prompt_showdirtystate true
    # set -g __fish_git_prompt_showuntrackedfiles true
    # set -g __fish_git_prompt_use_informative_chars false

    set -l retc red
    test $last_command_status = 0; and set retc green

    set_color $retc
    echo -n '╔══ '
    set_color -o white
    echo -n (prompt_pwd)

    # Git
    set_color yellow
    echo -n (fish_git_prompt)

    # New Line
    echo

    # Background Jobs
    set_color normal
    for job in (jobs)
        set_color $retc
        echo -n '╟╼ '
        set_color brown
        echo $job
    end

    set_color $retc
    echo -n '╚══'
    if test $last_command_status -ne 0
        echo -n ' ['
        echo -n $last_command_status
        echo -n '] '
    end
    set_color -o green
    echo -n '>>> '
    set_color normal
end
