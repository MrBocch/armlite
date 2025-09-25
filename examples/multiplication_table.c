#include <stdio.h>

int main() {
    // i have a easier time imagining the
    // code for a while loop, but i imagine the assembly is the same? 
    for(int i = 1; i <= 12; i++){
        for(int j = 1; j <= 12; j++) {
            printf("%d x %2d = %3d\n", i, j, i*j);
        }
        puts("---------------------");
    }


    return 0;
}
