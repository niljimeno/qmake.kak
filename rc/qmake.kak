define-command -docstring \
"Run the specified command (passed as an argument, $1)
in a separate terminal.
Pass the command in quotation marks if you want
to add arguments to it." \
qmake -params 1 %{
    %sh{
        output=/tmp/kak-qmake
        rm -f $output

        echo "#!/bin/sh
        $1
        read -p 'Press enter to continue'" \
            > $output

        chmod +x $output
        $kak_opt_termcmd $output
    }
}
