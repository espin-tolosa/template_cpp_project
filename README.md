# template_cpp_project

Building my own C++ template step-by-step.

The principles of design are:

- Unified style code: clang-format (YES)
- Portatiblity: Unix, Windows (not jet)
- Static analysis: clang-tidy (not jet)
- Multi-compiler support: GCC, CLANG, MVSC (not jet)
- Dependencies manager: CONAN (not jet)
- others...

Compilation Linux:

git clone https://github.com/leftyset/template_cpp_project.git
cd template_cpp_project
mkdir build
cmake ..
cmake --build .

Thanks!
