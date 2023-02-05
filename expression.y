%{

    #include<stdio.h>
    int valid = 0;

%}
%token NUMBER
%left '+' '-'
%left '*' '/' '%'
%left '(' ')'
%%
ArithematicExpression: E{
        return 0;
};
E:E'+'E {$$=$1+$3;}
|E'-'E {$$=$1-$3;}
|E'*'E {$$=$1*$3;}
|E'/'E {$$=$1/$3;}
|E'%'E {$$=$1%$3;}
|'('E')' {$$=$2;}
| NUMBER {$$=$1;}
;
%%

void main()
{
    printf("Enter value");
    yyparse();
    if(valid ==0){
        printf("\n valid");
    }

}
void yyerror(){
    printf("Invalid");
    valid =1;
}