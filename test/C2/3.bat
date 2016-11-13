rem @echo off
rem %1 - dir
rem %2 - file.bpl
@echo %1 - %2
@set SAVESTAMP=%DATE:/=-%@%TIME::=-%
@set SAVESTAMP=%SAVESTAMP: =%
@set DIRR=run-%SAVESTAMP%
echo Timestamp %SAVESTAMP%
@mkdir %DIRR%
@cd %DIRR%
@copy ..\%2 .
@z3 --version >> slicer.z3.log
@echo Running Boogie slicer on %2
@..\..\..\..\src\Binaries\Boogie /slice /noProver %2 | mtee /+ slicer.log
@echo Running z3
@for %%f in (*.smt2) do @call ..\..\4.bat %%f

@cd ..
rem @echo Boogie done