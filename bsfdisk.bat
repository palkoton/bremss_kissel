@echo off
echo BSFDISK.BAT, version Feb. 12, 1991.
echo BSFDISK: Creating BSF distribution disk on A:
echo BSFDISK: Insert formatted diskette in drive A:
pause
echo on
copy bsf.for    a:
copy bsf.exe    a:
copy espec.dat  a:
copy bmdata.dat a:
copy bsftst.bat a:
copy bsftst.inp a:
copy bsftst.out a:
copy bsftst.log a:
copy bsftst.doc a:
