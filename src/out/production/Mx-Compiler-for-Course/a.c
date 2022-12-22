class foo {
   int a;
   void f() {
      a = 2;
   }
   void g() {
      a = 2;
      this.a = 4;
   }
   foo get_this() {
      return this;
   }
   foo() {
      a = 9;
   }
};

foo g(foo a) {
   a.a = a.a + 1;   
   return a;
}

foo h() {
   foo s;
   s.g();
   foo h;
   h = s;
   foo t = h.get_this();
   return g(t);
}

int main() {
   // foo tmp, t;
   // tmp.a = 10;
   // g(tmp);
   // t = tmp;
   // printlnInt(t.a);
   // t.f();
   // printlnInt(t.a);
   printlnInt(h().a);
   // h();
   // printlnInt(tmp.a);
   // foo a;
   // a.f();
   return 0;
}