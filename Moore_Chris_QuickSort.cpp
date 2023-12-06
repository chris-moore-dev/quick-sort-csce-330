/*  Copyright Chris Moore 2022
    CSCE-350-002 UofSC Fall '22
    22 November 2022
*/

#include <iostream>
#include <fstream>
#include <vector>
#include <string>
#include <chrono>

using std::cout;
using std::cin;
using std::endl;
using std::ifstream;
using std::ofstream;
using std::vector;
using std::string;
using std::swap;
using std::rand;
using std::srand;
using std::to_string;
using namespace std::chrono;
using std::ios;
using std::fstream;

int HoarePartition(vector<float> &array, int left, int right) {
    int pivotPos = left + rand() % (right - left);  // Select random pivot
    float pivot = array.at(pivotPos);
    swap(array.at(pivotPos), array.at(left));  // Swap with leftmost value
    int leftPtr = left;  // i
    int rightPtr = right + 1;  // j
    while (leftPtr < rightPtr) {
        do {  // Search for i > pivot
            leftPtr++;
        } while (array.at(leftPtr) < pivot && leftPtr < right);  // This was giving me out of std::out_of_range issues
        do {  // Search for j < pivot
            rightPtr--;
        } while (array.at(rightPtr) > pivot);
        swap(array.at(leftPtr), array.at(rightPtr));
    }
    swap(array.at(leftPtr), array.at(rightPtr)); // Undo final swap
    swap(array.at(left), array.at(rightPtr));
    return rightPtr;  // Return j
}

void QuickSort(vector<float> &array, int left, int right) {
    if (left < right) {
        int pivotPos = HoarePartition(array, left, right);  // Partition the array
        QuickSort(array, left, pivotPos - 1);  // Recursive sort on left subarray
        QuickSort(array, pivotPos + 1, right);  // Recursive sort on right subarray
    }
}

int main(int argc, char *argv[]) {
    // Check both input and output files have been specified
    if (argc != 3) {
        cout << "Please specify one input and one output file." << endl;
        return 1;
    }
    srand(time(0)); // Seed the pivot rng with current system time
    ifstream input(argv[1]);
    ofstream output(argv[2]);
    vector<float> array;  // Perhaps a misnomer
    // Scan input file and add each number to a vector of floats
    while (input.good()) {
        float x = 0;
        input >> x;
        array.push_back(x);
    }
    input.close();
    // Sort the vector using QuickSort function
    int length = static_cast<int>(array.size());
    auto start = std::chrono::steady_clock::now();
    QuickSort(array, 0, length - 1);
    auto stop = std::chrono::steady_clock::now();
    // Print the array to output file
    if (output.is_open()) {
        for (int i = 0; i < length; i++) {
            output << array.at(i) << " ";
        }
    }
    output.close();
    // Print the execution time
    float exe = static_cast<float>(std::chrono::duration_cast<std::chrono::microseconds>(stop - start).count());
    fstream exeOutput;
    exeOutput.open("Moore_Chris_executionTime.txt",ios::app);
    if (exeOutput.is_open()) {
        exeOutput << "\n" << array.size() << "    " << to_string(exe / 1000);
    }
    exeOutput.close();
    cout << "Success\n";
    return 0;

}