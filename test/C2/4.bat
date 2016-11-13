@echo off
@echo Running z3 on %1
@echo %1 >> slicer.z3.log
@z3 -smt2 -st -v:1 timeout=700000 %1 | mtee /+ slicer.z3.log
@echo done %1 >> slicer.z3.log


