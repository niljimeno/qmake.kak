define-command
qmake -docstring \
"Run the specified command (passed as an argument, $1) in a separate terminal.
Pass the command in quotation marks if you want to add arguments to it." \
-params 1 \
%{
    evaluate-commands %sh{
        # create a script and save it in /tmp
        echo "#!/bin/sh
        $1
        read -p 'Press enter to continue'" \
            > /tmp/kak-qmake

        chmod +x $output
    }

    # run the script
    terminal /tmp/kak-qmake
}
