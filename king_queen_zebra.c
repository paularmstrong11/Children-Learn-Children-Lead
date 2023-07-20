#include <stdio.h>
#include <string.h>

/* define a struct to hold data about a student*/
typedef struct student 
{ 
    char name[20]; 
    int age; 
    char address[50];
    char grade; 
} Student; 

/* function for allocating a new student*/
Student * allocateStudent(char *name, int age, char *address, char grade)
{
    Student* stud = (Student*)malloc(sizeof(Student)); 
    strcpy(stud->name, name); 
    stud->age = age; 
    strcpy(stud->address, address);
    stud->grade = grade;
    return stud;
};

/* function for printing data on a student */
void printStudentData(Student * stud)
{
    printf("Name: %s \n", stud->name);
    printf("Age: %d \n", stud->age);
    printf("Address: %s \n", stud->address);
    printf("Grade: %c \n", stud->grade);
};

/* function for freeing memory of a student */
void freeStudent(Student * stud)
{
    free(stud);
};

/* main function */
int main() 
{ 
    Student *john = allocateStudent("John", 15, "123 Main St", 'B');
    printStudentData(john);
    freeStudent(john); 
  
    return 0; 
}