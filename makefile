# COMPILING

compile: Moore_Chris_QuickSort.cpp Moore_Chris_InputFileGenerator.cpp Moore_Chris_AverageCalc.cpp
		g++ -Wall -I . -std=c++17 -o Moore_Chris_QuickSort Moore_Chris_QuickSort.cpp
		g++ -Wall -I . -std=c++17 -o Moore_Chris_InputFileGenerator Moore_Chris_InputFileGenerator.cpp
		g++ -Wall -I . -std=c++17 -o Moore_Chris_AverageCalc Moore_Chris_AverageCalc.cpp


compile_quicksort: Moore_Chris_QuickSort.cpp
		g++ -Wall -I . -std=c++17 -o Moore_Chris_QuickSort Moore_Chris_QuickSort.cpp

compile_inputgen: Moore_Chris_InputFileGenerator.cpp
		g++ -Wall -I . -std=c++17 -o Moore_Chris_InputFileGenerator Moore_Chris_InputFileGenerator.cpp

compile_avgcalc: Moore_Chris_AverageCalc.cpp
		g++ -Wall -I . -std=c++17 -o Moore_Chris_AverageCalc Moore_Chris_AverageCalc.cpp

# CLEANING

clean:
		rm input*.txt output*.txt

cleantimes:
		truncate -s 28 Moore_Chris_executionTime.txt
		truncate -s 36 Moore_Chris_average_ExecutionTime.txt

cleancompiled:
		rm Moore_Chris_QuickSort
		rm Moore_Chris_InputFileGenerator
		rm Moore_Chris_AverageCalc

# TESTING

generate: Moore_Chris_InputFileGenerator
		./Moore_Chris_InputFileGenerator

findavg: Moore_Chris_AverageCalc
		./Moore_Chris_AverageCalc

testall: Moore_Chris_QuickSort Moore_Chris_AverageCalc
	./Moore_Chris_QuickSort input10num1.txt output10num1.txt # input size = 10
	./Moore_Chris_QuickSort input10num2.txt output10num2.txt
	./Moore_Chris_QuickSort input10num3.txt output10num3.txt
	./Moore_Chris_QuickSort input10num4.txt output10num4.txt
	./Moore_Chris_QuickSort input10num5.txt output10num5.txt
	./Moore_Chris_QuickSort input10num6.txt output10num6.txt
	./Moore_Chris_QuickSort input10num7.txt output10num7.txt
	./Moore_Chris_QuickSort input10num8.txt output10num8.txt
	./Moore_Chris_QuickSort input10num9.txt output10num9.txt
	./Moore_Chris_QuickSort input10num10.txt output10num10.txt
	./Moore_Chris_QuickSort input10num11.txt output10num11.txt
	./Moore_Chris_QuickSort input10num12.txt output10num12.txt
	./Moore_Chris_QuickSort input10num13.txt output10num13.txt
	./Moore_Chris_QuickSort input10num14.txt output10num14.txt
	./Moore_Chris_QuickSort input10num15.txt output10num15.txt
	./Moore_Chris_QuickSort input10num16.txt output10num16.txt
	./Moore_Chris_QuickSort input10num17.txt output10num17.txt
	./Moore_Chris_QuickSort input10num18.txt output10num18.txt
	./Moore_Chris_QuickSort input10num19.txt output10num19.txt
	./Moore_Chris_QuickSort input10num20.txt output10num20.txt
	./Moore_Chris_QuickSort input10num21.txt output10num21.txt
	./Moore_Chris_QuickSort input10num22.txt output10num22.txt
	./Moore_Chris_QuickSort input10num23.txt output10num23.txt
	./Moore_Chris_QuickSort input10num24.txt output10num24.txt
	./Moore_Chris_QuickSort input10num25.txt output10num25.txt
	./Moore_Chris_QuickSort input100num1.txt output100num1.txt # input size = 100
	./Moore_Chris_QuickSort input100num2.txt output100num2.txt
	./Moore_Chris_QuickSort input100num3.txt output100num3.txt
	./Moore_Chris_QuickSort input100num4.txt output100num4.txt
	./Moore_Chris_QuickSort input100num5.txt output100num5.txt
	./Moore_Chris_QuickSort input100num6.txt output100num6.txt
	./Moore_Chris_QuickSort input100num7.txt output100num7.txt
	./Moore_Chris_QuickSort input100num8.txt output100num8.txt
	./Moore_Chris_QuickSort input100num9.txt output100num9.txt
	./Moore_Chris_QuickSort input100num10.txt output100num10.txt
	./Moore_Chris_QuickSort input100num11.txt output100num11.txt
	./Moore_Chris_QuickSort input100num12.txt output100num12.txt
	./Moore_Chris_QuickSort input100num13.txt output100num13.txt
	./Moore_Chris_QuickSort input100num14.txt output100num14.txt
	./Moore_Chris_QuickSort input100num15.txt output100num15.txt
	./Moore_Chris_QuickSort input100num16.txt output100num16.txt
	./Moore_Chris_QuickSort input100num17.txt output100num17.txt
	./Moore_Chris_QuickSort input100num18.txt output100num18.txt
	./Moore_Chris_QuickSort input100num19.txt output100num19.txt
	./Moore_Chris_QuickSort input100num20.txt output100num20.txt
	./Moore_Chris_QuickSort input100num21.txt output100num21.txt
	./Moore_Chris_QuickSort input100num22.txt output100num22.txt
	./Moore_Chris_QuickSort input100num23.txt output100num23.txt
	./Moore_Chris_QuickSort input100num24.txt output100num24.txt
	./Moore_Chris_QuickSort input100num25.txt output100num25.txt
	./Moore_Chris_QuickSort input1000num1.txt output1000num1.txt # input size = 1000
	./Moore_Chris_QuickSort input1000num2.txt output1000num2.txt
	./Moore_Chris_QuickSort input1000num3.txt output1000num3.txt
	./Moore_Chris_QuickSort input1000num4.txt output1000num4.txt
	./Moore_Chris_QuickSort input1000num5.txt output1000num5.txt
	./Moore_Chris_QuickSort input1000num6.txt output1000num6.txt
	./Moore_Chris_QuickSort input1000num7.txt output1000num7.txt
	./Moore_Chris_QuickSort input1000num8.txt output1000num8.txt
	./Moore_Chris_QuickSort input1000num9.txt output1000num9.txt
	./Moore_Chris_QuickSort input1000num10.txt output1000num10.txt
	./Moore_Chris_QuickSort input1000num11.txt output1000num11.txt
	./Moore_Chris_QuickSort input1000num12.txt output1000num12.txt
	./Moore_Chris_QuickSort input1000num13.txt output1000num13.txt
	./Moore_Chris_QuickSort input1000num14.txt output1000num14.txt
	./Moore_Chris_QuickSort input1000num15.txt output1000num15.txt
	./Moore_Chris_QuickSort input1000num16.txt output1000num16.txt
	./Moore_Chris_QuickSort input1000num17.txt output1000num17.txt
	./Moore_Chris_QuickSort input1000num18.txt output1000num18.txt
	./Moore_Chris_QuickSort input1000num19.txt output1000num19.txt
	./Moore_Chris_QuickSort input1000num20.txt output1000num20.txt
	./Moore_Chris_QuickSort input1000num21.txt output1000num21.txt
	./Moore_Chris_QuickSort input1000num22.txt output1000num22.txt
	./Moore_Chris_QuickSort input1000num23.txt output1000num23.txt
	./Moore_Chris_QuickSort input1000num24.txt output1000num24.txt
	./Moore_Chris_QuickSort input1000num25.txt output1000num25.txt