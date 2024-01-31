#include <stdio.h>
#include <string.h>

char str[50]={0};
char *exit_= "exit";
char flag;
int main(){
	printf("start my femto shell\n");
	while(1){
		printf(" i am ready>\n");
		scanf("%[^\n]%*c",str);
		flag = strcmp(exit_,str);
		if((!flag)){
			printf("you are wilcome\n");
			flag =1;
			break;
		}
		else{
			printf("you said : %s\n",str);
		}
	}
	return 0;
}
