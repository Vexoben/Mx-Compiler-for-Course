// int a[10][10];

class foo {
   // int a = 1;
   int b = 1;

   foo() {
      b = 1;
      // printlnInt(a);
      printlnInt(b);
   }

   foo f(int x) {
      this.b = b + x;
      return this;
   }
};

int f(int a) {
   return 0;
}

int a;

int main() {
   foo tmp;
   a = 1;
   a = 1 + a;
   foo g = tmp.f(a);
   printlnInt(g.b);
   printlnInt(a);
   // int*c = null;
   // tmp.a = 1;
   // printInt(tmp.a);
}