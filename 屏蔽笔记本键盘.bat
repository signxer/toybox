@echo off
:s1
cls
echo ╔══════════════════════════════════════════════╗
echo ║       KeyWiz 笔记本键盘屏蔽/激活小助手       ║
echo ╠══════════════════════════════════════════════╣
echo ║                  1 屏蔽键盘                  ║
echo ╠══════════════════════════════════════════════╣
echo ║                  2 激活键盘                  ║
echo ╠══════════════════════════════════════════════╣
echo ║                  0 退出菜单                  ║
echo ╚══════════════════════════════════════════════╝
set /p input=请输入序号，按ENTER确定：
IF %input% LSS 3 (
IF %input% GEQ 0 (
GOTO cho)
)
ECHO 您输入有误，请再次输入！
PAUSE>NUL
GOTO s1
:cho
if "%input%"=="1" goto 1 
if "%input%"=="2" goto 2 
if "%input%"=="0" exit
:1
sc config i8042prt start= disabled
shutdown /r
pause>nul 
goto s1
:2
sc config i8042prt start= auto
shutdown /r
pause>nul 
goto s1