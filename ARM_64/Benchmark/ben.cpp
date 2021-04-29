#include <cstdlib>
#include <iostream>
#include <fstream>
#include <cstdio>
#include <chrono>

//-----------------------------------------------------------------------------

int main(int argc, char* argv[]) {
    // Check is the file provided for benchmark
    if (argc < 2) {
        printf("Usage: ben \'path_to_exefile\'");
        exit(EXIT_FAILURE);
    }

    // Decrare variables and constatns
    constexpr unsigned int num_of_tests = 10;
    unsigned int durations[num_of_tests];
    double average_duration = 0;
    int ret_value;
    std::chrono::time_point<std::chrono::high_resolution_clock> t0, t1;
    char CSV_file_name[] = "exec_bench.csv";

    // Check if the processor is avaiable
    printf("Checking if processor is available... ");
    
    if (system(NULL)) {
        puts ("Ok");
    }
    else {
        exit(EXIT_FAILURE);
    }

    //---------------------------- Create CSV File ----------------------------

    {
        std::ofstream out (CSV_file_name);
        for (auto i = 0; i != num_of_tests; ++i) {
            out << "Time " << (i+1) << ",";
        }
        out << "Avg Time" << std::endl;
        out.close ();
    }

    //-------------------------------------------------------------------------

    // Execute examined file
    printf ("Executing %s...\n",argv[1]);

    ret_value = system (argv[1]);                       // Discart first measurement

    for (auto i = 0; i != num_of_tests; ++i) {
        t0 = std::chrono::high_resolution_clock::now();

        ret_value = system (argv[1]);

        t1 = std::chrono::high_resolution_clock::now();

        durations[i] = std::chrono::duration_cast<std::chrono::microseconds>(t1-t0).count();

        // Append to the CSV file
        {
            std::ofstream out (CSV_file_name, std::ios::app);
            out << durations[i] << ",";
            out.close ();
        }

        printf("Test: %d finished...\n",(i+1));
    }

    // Calculate average time
    for (auto i = 0; i != num_of_tests; ++i) {
        average_duration += durations[i];
    }

    average_duration /= num_of_tests;

    // Append to the CVS file
    {
        std::ofstream out (CSV_file_name, std::ios::app);
        out << average_duration << std::endl;
        out.close ();
    }
    

    // Display results
    printf("\nDuration: %f msec\n",(average_duration / 1000));
    printf ("The value returned was: %d.\n",ret_value);

    return EXIT_SUCCESS;
}

//-----------------------------------------------------------------------------