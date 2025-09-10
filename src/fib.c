#include <stdio.h>

int main(){

    int a1 = 0;
    int a2 = 1;
    printf("%d\n", a1);
    for(int i = 0; i <= 15; i++){
        printf("%d\n", a2);
        int temp = a2;
        a2 = a1 + a2;
        a1 = temp;
    }

    return 0;
}
