rem Скрипт требует наличие предустановленного python2 и компилятора visual studio
echo "Building exe from py-scripts"
"C:\Python27\Scripts\pyinstaller" -D -F .\ntrip_server.py
"C:\Python27\Scripts\pyinstaller" -D -F .\ntrip_caster.py
rem Получаем текущую директорию в переменную
FOR /F "usebackq tokens=*" %%i IN (`cd`) DO set CurrentDir=%%i
move %CurrentDir%\dist\*.exe %CurrentDir%\
rem Удаляем папки с билдовым мусором
rd /s /q %CurrentDir%\dist\
rd /s /q %CurrentDir%\build\
rem Удаляем *.spec файлы
del %CurrentDir%\*.spec
pause