if [ -e ../lib/loader.o1 ]; then
    echo "Removing previous loader"
    rm ../lib/loader.o1
fi

echo "Compiling Raybit.."
gsc -cc-options "-I/opt/homebrew/Cellar/raylib/5.5/include -L/opt/homebrew/Cellar/raylib/5.5/lib -lraylib" ../lib/loader.scm
mv ../lib/loader.o1 .
echo "Done: compiled to loader.o1"
