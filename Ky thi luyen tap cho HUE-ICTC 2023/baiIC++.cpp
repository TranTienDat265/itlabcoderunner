// C++ program for the above approach
#include <iostream>
using namespace std;
 
// Function to count the numbers that
// are divisible by the numbers in
// the array from range 1 to M
int count(int a[], int M, int N)
{
    // Initialize the count variable
    int cnt = 0;
 
    // Iterate over [1, M]
    for (int i = 1; i <= M; i++) {
 
        // Iterate over array elements arr[]
        for (int j = 0; j < N; j++) {
 
            // Check if i is divisible by a[j]
            if (i % a[j] == 0) {
 
                // Increment the count
                cnt++;
                break;
            }
        }
    }
 
    // Return the answer
    return cnt;
}
 
// Driver code
int main()
{
    // Given array arr[]
    int arr[] = { 2, 3, 5, 7 };
 
    // Given Number M
    int m = 100;
    int n = sizeof(arr) / sizeof(arr[0]);
 
    // Function Call
    cout << count(arr, m, n);
    return 0;
}