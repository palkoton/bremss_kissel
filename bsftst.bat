@echo off
echo BSFTST: Test of BSF code, version Feb. 12, 1991.
copy BSFTST.OUT BSFOLD.OUT
del  BSFTST.OUT
copy BSFTST.LOG BSFOLD.LOG
del  BSFTST.LOG
del  BSF.OUT
BSF <BSFTST.INP >BSFTST.LOG
copy BSF.OUT    BSFTST.OUT
del  BSF.OUT
