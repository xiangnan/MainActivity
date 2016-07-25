#APP_STL := stlport_static #在application.mk中指明STL库

# 这里选STL库时有三个选项： 

# system -> Use the default minimal C++ runtime library. 
# stlport_static -> Use STLport built as a static library.
# stlport_shared -> Use STLport built as a shared library. 


APP_ABI   := armeabi
APP_OPTIM := debug
APP_STL   := stlport_static