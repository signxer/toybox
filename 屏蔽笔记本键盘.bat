@echo off
:s1
cls
echo �X�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�[
echo �U       KeyWiz �ʼǱ���������/����С����       �U
echo �d�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�g
echo �U                  1 ���μ���                  �U
echo �d�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�g
echo �U                  2 �������                  �U
echo �d�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�g
echo �U                  0 �˳��˵�                  �U
echo �^�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�a
set /p input=��������ţ���ENTERȷ����
IF %input% LSS 3 (
IF %input% GEQ 0 (
GOTO cho)
)
ECHO �������������ٴ����룡
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