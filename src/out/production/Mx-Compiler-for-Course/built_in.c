#include <stdbool.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

// malloc
char* __built_in_malloc(int length) {
   return (char*) malloc(length);
}

// string built in function
int __built_in_length(char* str) {
   return strlen(str);
}

// char** __built_in_substring(char *str, int left, int right) {
//    char **tmp;
//    char *ret = malloc(sizeof(char) * (right - left + 1));
//    memcpy(ret, str + left, right - left);
//    ret[right - left] = 0;
//    *tmp = ret;
//    return tmp;
// }

char** __built_in_substring(char *str, int left, int right) {
   char **tmp = (char**) malloc(sizeof(char*));
   *tmp = (char*) malloc(sizeof(char) * (right - left + 1));
   memcpy(*tmp, str + left, right - left);
   (*tmp)[right - left] = 0;
   return tmp;
}

int __built_in_parseInt(char *str) {
   int ret;
   sscanf(str, "%d", &ret);
   return ret;
}

int __built_in_ord(char *str, int pos) {
   return str[pos];
}

// string operator
char** __build_in_str_add(char *s1, char *s2) {
   int n = strlen(s1), m = strlen(s2);
   char **tmp = (char**) malloc(sizeof(char*));
   *tmp = (char*) malloc(sizeof(char) * (n + m + 1));
   memcpy(*tmp, s1, n);
   memcpy(*tmp + n, s2, m);
   (*tmp)[n + m] = 0;
   return tmp;
}

bool __build_in_str_eq(char *s1, char *s2) {
   return strcmp(s1, s2) == 0;
}

bool __build_in_str_neq(char *s1, char *s2) {
   return strcmp(s1, s2) != 0;
}

bool __build_in_str_slt(char *s1, char *s2) {
   return strcmp(s1, s2) < 0;
}

bool __build_in_str_sle(char *s1, char *s2) {
   return strcmp(s1, s2) <= 0;
}

bool __build_in_str_sgt(char *s1, char *s2) {
   return strcmp(s1, s2) > 0;
}

bool __build_in_str_sge(char *s1, char *s2) {
   return strcmp(s1, s2) == 0;
}

//built in function

void print(char* str) {
   printf("%s", str);
}

void println(char* str) {
   printf("%s\n", str);
}

void printInt(int n) {
   printf("%d", n);
}

void printlnInt(int n) {
   printf("%d\n", n);
}

char** getString() {
   char **tmp = (char**) malloc(sizeof(char*));
   *tmp = (char*) malloc(256);
   scanf("%s", *tmp);
   return tmp;
}

int getInt() {
   int ret;
   scanf("%d", &ret);
   return ret;
}

char** toString(int x) {
   char **ret = (char**) malloc(sizeof(char*));
   *ret = (char*) malloc(256);
   sprintf(*ret, "%d", x);
   return ret;
}