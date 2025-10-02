#include <stdio.h>

int binary_search(int *array, int array_size, int target);

int main(){
    int size = 5;
    int array[size];
    for(int i = 0; i < size; i++){
        array[i] = i+1;
    }

    int target;
    printf("Enter target: ");
    scanf("%d", &target);
    
    int indx = binary_search(array, size, target); 

    if(indx == -1){
        printf("Could not find %d\n", target);
        return 0;
    }

    printf("Target index: %d\n", indx);
    return 0;
}

int binary_search(int *array, int array_size, int target){
    int low = 0;
    int high = array_size -1; 
    int mid;
    while(low <= high) {
        mid = (low + high) / 2;
        if(array[mid] == target) { return mid; }


        low  = array[mid] < target ? mid+1 : low;
        high = array[mid] > target ? mid-1 : high;

        // if(array[mid] > target) {
            // high = mid -1;    
        // } else {
            // low = mid +1;
        // }
    }


    return -1; 
}
