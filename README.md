#Follow these steps *in order* to test QuickSort:#

###1. To compile all 3 source files at once, run:###

make compile

(To compile them separately, please refer to makefile)


###2. To run QuickSort on a single input and single output file, run:###

./Moore_Chris_QuickSort exampleinput.txt output.txt (works with provided sample input)


###3. To generate 25 input files for each input size (total = 75), run:###

make generate

(Generated input files have the format input(inputsize)num(1-25).txt)


###4. Once you have generated the 75 input files, run QuickSort on all of them at once using:###

make testall

(Generated output files similarly have the format output(inputsize)num(1-25).txt)


###5. To calculate the average of all execution times listed in Moore_Chris_ExecutionTime.txt, run:###

make findavg


###6. If you need to clear the input/output at any time, run:###

make clean


###7. If you need to clear the execution time and average execution time files, run:###

make cleantimes


###8. If you need to remove the compiled .cpp code at any time, run:###

make cleancompiled