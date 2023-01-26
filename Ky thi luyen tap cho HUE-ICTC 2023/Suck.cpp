typedef unsigned long long ull;
typedef unsigned int uint;
uint p = { 2, 3, 5, 7, 11, 13, 17, 19, 23 }; //T?m th?i ch? c?n 9 s? nguyên t? v? n <= 1000;
uint c[9];
uint remain; // = n/((c0+1)*(c1+1)*...*(c(i-1) + 1))
ull result; // k?t q?a, s? nh? nh?t có n ý?c

void find(int i, ull m) {
m *= p[i];
uint min = min(c[i-1], remain-1);
for( uint j = 1; j <= min && m < result; ++j, m*=p[i]) {
if(!(remain % (j+1))) {
c[i] = j;
remain /= (j+1);
if(1 == remain) {
result = m; // c?p nh?t s? nh? nhât
} else find(i+1, m);
// tr? l?i tr?ng thái
remain *= (j+1);
}
}
}