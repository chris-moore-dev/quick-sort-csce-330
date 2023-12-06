/*  Copyright Chris Moore 2022
    CSCE-350-002 UofSC Fall '22
    22 November 2022
*/

#include <iostream>
#include <fstream>
#include <vector>
#include <string>

using std::cin;
using std::cout;
using std::endl;
using std::ifstream;
using std::ofstream;
using std::vector;
using std::string;

void FindAverage() {
    float total10 = 0;
    int num10 = 0;
    float total100 = 0;
    int num100 = 0;
    float total1000 = 0;
    int num1000 = 0;
    float time = 0;
    ifstream input ("Moore_Chris_executionTime.txt");
    for (string size; getline(input, size);) {
       input >> size;
       if (size == "10") {
          input >> time;
          total10 += time;
          num10++;
       } else if (size == "100") {
          input >> time;
          total100 += time;
          num100++;
       } else if (size == "1000") {
          input >> time;
          total1000 += time;
          num1000++;
       }
    }
    input.close();
    ofstream output ("Moore_Chris_averageExecutionTime.txt");
    if (output.is_open()) {
         output << "Input Size    Average Execution Time\n" << "10\t" << total10 / num10
         << "\n100\t" << total100 / num100 << "\n1000\t" << total1000 / num1000 << endl;
    }
    output.close();
}

int main() {
  FindAverage();
  return 0;
}