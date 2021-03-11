# Template for C++ Projects

My own template (on development) for C++ projects.

The principles of design are:

- Unified style code: clang-format (YES)
- Portatiblity: Unix, Windows (not jet)
- Static analysis: clang-tidy (in progress)
- Multi-compiler support: GCC, CLANG, MVSC (in progress)
- Dependencies manager: CONAN (not jet)
- others...

Compilation Linux:

```
git clone [url-repository]
cd template_cpp_project
mkdir build
cmake ..
cmake --build .
```


Samuel Espin Tolosa, 2021
Thanks!
