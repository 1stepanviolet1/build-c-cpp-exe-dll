@echo off
chcp 65001 | "C:/build/tools/bin/plug.exe"
echo.

echo DLL COMPILATION(from CPP) | python -u "C:/build/tools/color/cyan.py"
echo.

echo Enter name of file without extension
echo "example", not "example.cpp"
echo.

set /p FILENAME="Enter filename: "
echo.

echo Start compilation of dll | python -u "C:/build/tools/color/cyan.py"
echo.

clang++ %FILENAME%.cpp -fPIC -shared -o %FILENAME%.dll
set /a EXITCODE = %ERRORLEVEL%

if %EXITCODE% == 0 (
    echo Successful compilation | python -u "C:/build/tools/color/green.py"
) else (
    echo.
    echo Compilation failed | python -u "C:/build/tools/color/red.py"
    exit %EXITCODE%
)

echo.


@REM pause
