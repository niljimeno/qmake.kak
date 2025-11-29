define-command
qmake -docstring \
"Run the specified command (passed as an argument, $1)
in a separate terminal.
Pass the command in quotation marks
if you want to add arguments to it." \
-params 1 \
%{
    evaluate-commands %sh{
        output=/tmp/kak-qmake
        rm -f $output

        echo "#!/bin/sh
    $1
        read -p 'Press enter to continue'" \
            > $output

        chmod +x $output
    }

    terminal /tmp/kak-qmake
}
