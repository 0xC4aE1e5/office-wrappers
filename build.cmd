@echo off
mkdir out
cd out
copy ..\src\Word\*.dll .
echo Word
go build -o Word.old.exe -ldflags -H=windowsgui ..\src\Word\Word.go
ResourceHacker -open Word.old.exe -save Word.exe -action addskip -res ..\src\Word\Word.ico -mask ICONGROUP,MAIN,
echo PowerPoint
go build -o PowerPoint.old.exe -ldflags -H=windowsgui ..\src\PowerPoint\PowerPoint.go
ResourceHacker -open PowerPoint.old.exe -save PowerPoint.exe -action addskip -res ..\src\PowerPoint\PowerPoint.ico -mask ICONGROUP,MAIN,
echo Excel
go build -o Excel.old.exe -ldflags -H=windowsgui ..\src\Excel\Excel.go
ResourceHacker -open Excel.old.exe -save Excel.exe -action addskip -res ..\src\Excel\Excel.ico -mask ICONGROUP,MAIN,
del *.old.exe