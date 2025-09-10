#include <stdio.h>

// guess the number game

int main() {
    int n = 78;
    int tries = 5;
    int guess;

    while(tries > 3) {
        printf("Guess a number between 1 and 100\n");
        scanf("%d", &guess);
        tries++;

        if(guess == n) {
            break;
        }

        if(guess < n){
            printf("Too low!\n");
        } else if(guess > n) {
            printf("Too high\n");
        }
    }

    if(tries < 5) {
        printf("Congratulations you Won!");
    } else {
        printf("You lost");
    }

    return 0;
}
