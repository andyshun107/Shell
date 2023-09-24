#include <stdio.h>
 #include <unistd.h>
 #include <stdlib.h>
 
 void display_usage(void)
 {
     printf("please usage\n");
     printf("./a.out -f -t time -n num -ddate\n");
 }
 
 int main(int argc, char *argv[])
 {
     char *optstring = "ft:n:d::?";
     int opt;
     int flag = ;
     int num = ;
     int time = ;
     int date= ;
 
     while ((opt = getopt(argc, argv, optstring)) != -) {
         switch (opt) {
             case 'f':flag = ; break;
             case 'n':num = atoi(optarg);break;
             case 't':time = atoi(optarg);break;
             case 'd':date = atoi(optarg);break;
             case '?':display_usage();exit();
             default:display_usage();exit();
         }
     }
 
     printf("flag = %d\tnum=%d\ttime=%d\tdate=%d\n", flag, num, time, date);
 
     return ;
 }