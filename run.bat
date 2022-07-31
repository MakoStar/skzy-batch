@echo off & pushd %~dp0 & title 深空之眼批处理工具 & color 0a

:_menu

cls

echo =========================说明=========================

echo.

echo 使用前需要把 AssetStudioGUI 解包的 TextAsset 文件夹

echo.

echo 复制到当前目录下，然后按顺序执行 1 到 5 选项即可完成处理

echo.

echo 缺 Python chardet 的话执行选项 6

echo.

echo read.txt(需要对哪些文件进行提取)

echo.

echo 处理完成的文件在output文件夹下

echo.

echo ======================================================

echo.

echo =====菜单=====

echo.

echo 1.清空目录

echo.

echo 2.查找转移

echo.

echo 3.文件改名

echo.

echo 4.解密文件

echo.

echo 5.格式转换

echo.

echo 6.安装chardet

echo.

echo Q.退出工具

echo.

echo ==============

echo.

echo.

set /p input_result=选择执行项:

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

echo 文件改名完成

pause & goto _menu

:_unpack

set working_dir=%~dp0

dir /b .\input\ >files.txt

for /f %%i in (files.txt) do py -3 %working_dir%lib\ljd-master\main.py %working_dir%input\%%i >%working_dir%output\%%i

echo 执行解包完成

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