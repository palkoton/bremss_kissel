#  Makefile, version Mar. 29, 1994.

#  Creates/tests bremsstrahlung BSF program.

#  all (default) - compile, link and test program
all: bsf test1
	@true

#  Executable program
bsf: bsf.o
	f77 -o bsf bsf.o

#  test1 - perform confidence tests.
test1: bsf
	-rm bsf.out
	-bsf < bsftst1.inp
	-diff -b -i -w -c bsftst1.out bsf.out
