@echo off
chcp 65001 | "C:/build/tools/bin/plug.exe"
echo.

echo CPP COMPILATION | python -u "C:/build/tools/color/cyan.py"
echo.

echo Enter name of file without extension
echo "example", not "example.cpp"
echo.

set /p FILENAME="Enter filename: "
echo.

echo Start compilation of cpp | python -u "C:/build/tools/color/cyan.py"
echo.

clang++ %FILENAME%.cpp -o %FILENAME%
set /a EXITCODE = %ERRORLEVEL%

if %EXITCODE% == 0 (
    echo Successful compilation | python -u "C:/build/tools/color/green.py"
) else (
    echo.
    echo Compilation failed | python -u "C:/build/tools/color/red.py"
    echo.
    exit %EXITCODE%
)

echo.


echo SHOWRESULTS | python -u "C:/build/tools/color/yellow.py"
"./%FILENAME%"
echo ENDRESULTS | python -u "C:/build/tools/color/yellow.py"


@REM pause
