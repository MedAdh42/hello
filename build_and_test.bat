:: Creat build directory
mkdir build 
cd build

:: Generate build files and compile 
cmake --config Release --build .

:: Testing
ctest -C Debug

