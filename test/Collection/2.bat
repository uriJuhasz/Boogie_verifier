@echo off
REM %1 is dir

@cd %1

@for %%f in (*.bpl) do @call ..\3.bat %1 %%f

@cd ..

