/*
** EPITECH PROJECT, 2022
** ma
** File description:
** ma
*/
#include <stdio.h>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <dlfcn.h>


// C++ program to demonstrate working strchr()

//int main()
//{
//char str[] = "This is a string";
//char * ch = strrchr(str,'a');
//cout << ch - str + 1;
//return 0;
//}

int main(void)
{
   char str[50] = "GeeksForGeeks is for programming geeks.";
   printf("\nBefore memset(): %s\n", str);

   // Fill 8 characters starting from str[13] with '.'
   memset(str + 4, 1, 5*sizeof(char));

   printf("After memset():  %s", str);
   return 0;
  //char str1[10] = "aksh";
  //  char str2[10] = "akash";
  //
  //  // Compare strings using strncmp()
  //  int result = strncmp(str1, str2, 4);
  //
  //  if (result == 0) {
  //      // num is the 3rd parameter of strncmp() function
  //      printf("str1 is equal to str2 upto num characters\n");
  //  }
  //  else if (result > 0)
  //      printf("str1 is greater than str2\n");
  //  else
  //      printf("str2 is greater than str1\n");
  //
  //  printf("Value returned by strncmp() is: %d", result);
  //
  //return 0;
}