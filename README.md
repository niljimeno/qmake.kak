# Qmake.kak
Kakoune plugin to
run commands in a separate terminal window.

Example command:
```kak
qmake "ls -lha"
```

### How is this different from :terminal?
The difference is that there is always a
`read` at the end of the script.

That means that for tasks where you want to see the output of a process
instead of immediately closing the terminal when it's done,
you can use qmake.


### Installation:
With plug.kak:
```kak
plug "niljimeno/qmake.kak"
```

From source:
```sh
cd <your kakoune directory>
git clone github.com/niljimeno/qmake.kak

echo 'source "%val{config}/qmake.kak/rc/qmake.kak"' >> kakrc
```

### Configuration:
New commands can be easily mapped:
```kak
map \
    -docstring "Example qmake call to run cargo" \
    global user r ':qmake "cargo run"<ret>'
```
