@echo off & pushd %~dp0 & title ���֮���������� & color 0a

:_menu

cls

echo =========================˵��=========================

echo.

echo ʹ��ǰ��Ҫ�� AssetStudioGUI ����� TextAsset �ļ���

echo.

echo ���Ƶ���ǰĿ¼�£�Ȼ��˳��ִ�� 1 �� 5 ѡ�����ɴ���

echo.

echo ȱ Python chardet �Ļ�ִ��ѡ�� 6

echo.

echo read.txt(��Ҫ����Щ�ļ�������ȡ)

echo.

echo ������ɵ��ļ���output�ļ�����

echo.

echo ======================================================

echo.

echo =====�˵�=====

echo.

echo 1.���Ŀ¼

echo.

echo 2.����ת��

echo.

echo 3.�ļ�����

echo.

echo 4.�����ļ�

echo.

echo 5.��ʽת��

echo.

echo 6.��װchardet

echo.

echo Q.�˳�����

echo.

echo ==============

echo.

echo.

set /p input_result=ѡ��ִ����:

if %input_result% equ 1 goto _delfile

if %input_result% equ 2 goto _movefile

if %input_result% equ 3 goto _rename

if %input_result% equ 4 goto _unpack

if %input_result% equ 5 goto _conversion

if %input_result% equ 6 goto _install

if /i %input_result% equ Q goto _exited

pause

goto _menu

:_delfile

set working_dir=%~dp0

for /r %working_dir%input %%i in (*) do del %%i

for /r %working_dir%output %%i in (*) do del %%i

echo clear complete

pause & goto _menu

:_rename

py -3 ./lib/py-script/rename.py

echo �ļ��������

pause & goto _menu

:_unpack

set working_dir=%~dp0

dir /b .\input\ >files.txt

for /f %%i in (files.txt) do py -3 %working_dir%lib\ljd-master\main.py %working_dir%input\%%i >%working_dir%output\%%i

echo ִ�н�����

pause & goto _menu

:_conversion

set working_dir=%~dp0

py -3 %working_dir%lib\py-script\conversion.py %working_dir%\output

pause & goto _menu

:_movefile

set working_dir=%~dp0

if exist "%working_dir%TextAsset" (

for /f %%i in (read.txt) do (

if exist "%working_dir%TextAsset\%%i" (

move %working_dir%TextAsset\%%i %working_dir%input\%%i

) else (

echo Finding file errors

)

)

) else (

echo 'directory does not exist'

)

pause & goto _menu

:_install

pip install chardet

pause & goto _menu

:_exited
exit