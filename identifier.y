%{

    #include<stdio.h>
    int valid =0;
%}

%token digit letter

%%


start : letter s
s : letter s
 | digit s
 |
 ;
%%

void yyerror(){
    printf("Invalid"); 
    valid =1;
}

void main(){
    printf("enter value:");
    yyparse();
    if(valid==0){
        printf("valid");
    }
}