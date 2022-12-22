#include <iostream>
#include <bits/stdc++.h>
using namespace std;

class foo{
public:
   int a, b, c;

   foo(foo tmp) {
      this = tmp;
   }
};

int g(foo a) {
   a.a = a.a + 1;
   // for (int i = 1; i <= 10; i += i) {
      // a.a += i;
   // }
   return a.a;
}

int main() {
   foo f1, f2;
   f1 = f2;
   g(f1);
}