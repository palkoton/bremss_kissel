$ ver= 'f$verify(1)'
$!  BSFTST.COM, version June 7, 1990.
$!
$!  VAX/VMS BSF Tester.
$!
$ set noon
$ on control_y then $goto EXIT
$ if f$mode().nes."BATCH" then $goto END_BATCH_SETUP
$   set default sys$login
$   set default [.brem.bsf]
$   set process/name="BSFTST"
$ END_BATCH_SETUP:
$!
$ dir/size/date:modified
$ show process/accounting
$!
$!  Compile and link.
$!
$ fortran/standard/nolist bsf
$ link/nomap bsf
$ delete bsf.obj;
$ dir/size/date:modified
$ show process/accounting
$!
$!  Test run.
$!
$ run bsf
2
1
2
500
47
10
92
1
92
500
0
$ dir/size/date:modified
$ show process/accouting
$!
$!  Compare results with old test.
$!
$ differences bsf.out bsftst.out
$!
$!  Test done.
$!
$EXIT:
$ ver= 'f$verify(ver)'
$ exit
