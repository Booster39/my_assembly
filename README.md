# My_assembly on Linux
Recoding 7 functions of the C laguage in Assembly Language: strlen, strchr, strrchr, memset, memcpy, strcmp, strncmp

What is the Assembly language?

```link
https://www.investopedia.com/terms/a/assembly-language.asp
```

# Get it
You can download the zip folder when pressing the green button or you can clone the repository in your pc by this commandin your CLI:

```bash
git@github.com:Booster39/my_assembly.git
```
# Usage

You will choose the function you want to test among the 7
strlen, strchr, strrchr, memset, memcpy, strcmp and strncmp

Once you have made your decision, I invite you to tap the name of the function on the site GeeksForGeeks.com where you will find the corresponding "main" of your function.

Example:
I am choosing memset, so I will go to the GeeksForGeeks site in order to copy the testing code:

```link
https://www.geeksforgeeks.org/memset-c-example/
```

And I just copy the main function:
![main](https://user-images.githubusercontent.com/84536283/177006007-c04bcf1f-df28-4500-bebd-e805ff374923.png)

Then I paste it this "main" function in the "main.c" project file:
![mai](https://user-images.githubusercontent.com/84536283/177006165-08f7b9cd-6ae5-4168-8eb9-ebea7c0c7049.png)

Now let's move on to the next step

# Execution

First, we are using make re to compile the project:

```
make re
```
Then, Tap the following command in your shell CLI:

```bash
gcc main.c [name of the choosed function].o
```

So I take my example again:

```bash
gcc main.c memset.o
```

Final step, a "a.out" file will be generated. So you have finally to tap:

```bash
./a.out
```

Yes, the code is executed and now you an see the result !

# Go
All is right? oh yeah, Let's test and taste !
