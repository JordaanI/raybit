logExe () {
    echo "$1"
    eval "$1"
}

root=$(realpath ..)

if [ -e "$root/lib/loader.o" ]; then
    echo "Removing previous loader"
    logExe "rm $root/lib/loader.o"
fi

echo "Compiling Raybit.."
logExe "gsc -obj -cc-options \"-I/opt/homebrew/Cellar/raylib/5.5/include -L/opt/homebrew/Cellar/raylib/5.5/lib -lraylib -D___SHARED -D___DYNAMIC -D___LIBRARY\" ../lib/loader.scm"
logExe "mv $root/lib/loader.o $root/bin"
echo "Done: compiled to $root/bin/loader.o"
