#include <stdio.h>
#include <stdlib.h>
#include <string.h>
int main(int argc ,char **argv){
    
    
    if(argc == 1){
        for(int i=1; i<=10 ; i++){
            printf("%d\n",i);
        }
        return 0;
    }
    int nbr = strlen(argv[1]);
    
    for(int i=0; i<nbr ; i++){
        if(argv[1][i]<48 || argv[1][i]>57){
            return 0;
        }
        
    }
    int test = atoi(argv[1]);
    if(test>0 && test<=10){
        for(int i=1; i<=test ; i++){
            printf("%d\n",i);
        }
        return 0;
    }
    else{
	    return 0;
    }
}
