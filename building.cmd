rem Скрипт требует наличие предустановленного python и компилятора visual studio, а также pyinstaller
echo "Building exe from py-scripts"
"C:\Python27\Scripts\pyinstaller" -D -F .\*.py
rem Получаем текущую директорию в переменную
FOR /F "usebackq tokens=*" %%i IN (`cd`) DO set CurrentDir=%%i
move %CurrentDir%\dist\*.exe %CurrentDir%\
rem Удаляем папки с билдовым мусором
rd /s /q %CurrentDir%\dist\
rd /s /q %CurrentDir%\build\
rem Удаляем *.spec файлы
del %CurrentDir%\*.spec
pause
