#include <stdio.h>

#define SIZE 10

void print_arr(int *arr);
void swap(int *p1, int*p2);
void bubble_sort(int *arr);

int main() {

    int arr[] = {5, 4, 3, 1, 5, 6, 9, 10, 15, -1};

    puts("before sorting");
    print_arr(arr);

    bubble_sort(arr);

    puts("\nAfter sorting");
    print_arr(arr);
    
    return 0;
}

void print_arr(int *arr){
    for(int i = 0; i < SIZE; i++){
        printf("%d ", arr[i]);
    }
}

void swap(int *p1, int*p2){
    int temp = *p2;
    *p2 = *p1;
    *p1 = temp; 
}

void selection_sort(int *arr){
    for(int i = 0; i < SIZE; i++){
        for(int j = i; j < SIZE; j++){
            if(arr[i] > arr[j]) { swap(&arr[i], &arr[j]); }
        }
    }
}
