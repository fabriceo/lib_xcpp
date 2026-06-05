echo "cmake and xmake"
cmake -G "Unix Makefiles" -B build
xmake -j -C build
echo "done"