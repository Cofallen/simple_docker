#include <iostream>
#include <unistd.h>

int main()
{
    int numbers[50] = {0};
    std::cout << "hello world!" << std::endl;

    for (int i = 0; i < 50; i++)
    {
        std::cout << numbers[i] << std::endl;
        sleep(4);
    }
    return 0;
}