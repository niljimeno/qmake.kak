# Qmake.kak
Kakoune plugin to
run commands in a separate terminal window.

Example command:
```kak
qmake "ls -lha"
```

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
