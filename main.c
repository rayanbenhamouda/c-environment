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
    /*
    else if(argv[1] = NULL){
        printf("nice");
    }

    for(int i=0)
    int test = atoi(argv[1]);
    printf("j'affiche %d",test);
    if(test==5){
        printf("\n passsss");
    }
    else{
        printf("\n probleme");
    }
    */
    return 0;
}


/*
#include <stdio.h>

int main()
{
	
	for(int i=1; i<11 ;i++){
		printf("%d\n",i);
	}
	return 0;
}
*/
