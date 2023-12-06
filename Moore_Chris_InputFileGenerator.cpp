/*  Copyright Chris Moore 2022
    CSCE-350-002 UofSC Fall '22
    22 November 2022
*/

#include <iostream>
#include <string>
#include <fstream>

using std::cin;
using std::cout;
using std::endl;
using std::string;
using std::to_string;
using std::ifstream;
using std::ofstream;
using std::rand;
using std::srand;

void Generate(int inputSize, int numFiles, string prefix) {
    for (int i = 0; i < numFiles; i++) {
        ofstream file(prefix + "num" + to_string(i+1) + ".txt");
        if (file.is_open()) {
            for (int i = 0; i < inputSize; i++) {
                float hundred = rand() % 100;
                float decimal = rand() % 10;
                float random = hundred + (decimal/10);
                file << random << (i == inputSize-1 ? "" : " ");
            }
        }
        file.close();
    }
}

int main() {
    srand(time(0));
    Generate(10, 25, "input10");
    Generate(100, 25, "input100");
    Generate(1000, 25, "input1000");
    return 0;
}