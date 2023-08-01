#include <stdio.h> //biblioteca de comunica��o com o usu�rio
#include <stdlib.h> //biblioteca de aloca��o de espa�o na mem�ria
#include <locale.h> //biblioteca de aloca��es de texto por regi�ao
#include <string.h> //biblioteca responsavel por armazenar as strings

int registro() //cria��o da fun��o (n�o tem ;). Essa fun��ocadastra os usu�rios no sistema 
{		
		//inicio da cria��o das strings (string � um conjunto de variaveis)
		char arquivo[40]; //variavel tipo string - char
		char cpf[40]; 
		char nome[40];
		char sobrenome[40];
		char cargo[40];
		//final da cria��o das strings
		
		printf("Digite o CPF a ser cadastrado: "); //coletando informa��o do usu�rio
		scanf("%s", cpf); // %s salva dentro da string 
			
		strcpy(arquivo, cpf); //copia, no caso vai copiar o valor da string cpf para a string arquivo
		
		FILE *file; //FILE busca nas bibliocas *cria o arquivo
		file = fopen(arquivo, "w"); //fopen abri o arquivo "write" //cria o arquivo
		fprintf(file,cpf); //� um printf dentro do arquivo, salva no caso a variavel cpf dentro do arquivo
		fclose(file); //fecha o arquivo
		
		file = fopen(arquivo, "a"); //abre o arquivo "a" atualiza a informa��o
		fprintf(file, ","); //salva uma informa��o dentro do arquivo no caso a virgula
		fclose(file);
		
		printf("Digite o nome a ser cadastrado: ");
		scanf("%s",nome);
		
		file = fopen(arquivo, "a");
		fprintf(file,nome);
		fclose(file);
		
		file = fopen(arquivo, "a"); 
		fprintf(file, ","); 
		fclose(file);
		
		printf("Digite o sobrenome a ser cadastrado: ");
		scanf("%s",sobrenome);
		
		file = fopen(arquivo, "a");
		fprintf(file,sobrenome);
		fclose(file);
		
		file = fopen(arquivo, "a"); 
		fprintf(file, ","); 
		fclose(file);
		
		printf("Digite o cargo a ser cadastrado: ");
		scanf("%s",cargo);
		
		file = fopen(arquivo, "a");
		fprintf(file,cargo);
		fclose(file);
		
		system("pause");
		
}

int consulta()
{
		setlocale(LC_ALL, "Portuguese");
	
		char cpf[40];
		char conteudo[200];
	
		printf("Digite o CPF a ser consultado: ");
		scanf("%s",cpf);
	
		FILE *file;
		file = fopen(cpf,"r"); //"r" read
		
		if(file == NULL)
		{
		printf("Arquivo n�o localizado!\n");
		}
		
		while(fgets(conteudo, 200, file) != NULL) //la�o de repeti��o enquanto
		{
		printf("\nEssas s�o as informa��es do usu�rio: ");	
		printf("%s", conteudo);
		printf("\n\n");
		}
		
		system("pause");
		
	
}

int deletar()
{
		char cpf[40];
		
		printf("Digite o CPF a ser delatado: ");
		scanf("%s", cpf);
		
		remove(cpf);
		
		FILE *file;
		file = fopen(cpf,"r");
		
		if(file == NULL)
		{
		printf("O usu�rio n�o se encontra no sistema!\n");
		system("pause");	
		
		}
		
} 

int main() //fun��o principal - Ser� sempre a primeira a ser executada
{
	int opcao=0; //definindo as variaveis
	int laco=1; //=representa atribui��o. ==representa compara��o
	
	for(laco=1;laco=1;) //laco de repeticao
	{
		system("cls"); //limpa a tela
		 
		setlocale(LC_ALL, "Portuguese"); //definindo a linguagem
	
		printf("### Cart�rio da EBAC ###"); //inicio do menu
		printf("Escolha a op��o desejada do menu:\n\n");
		printf("\t1 - Registrar nomes\n");
		printf("\t2 - Consultar nomes\n");
		printf("\t3 - Deletar nomes\n\n"); 
		printf("Digite a op��o desejada:"); //fim do menu
	
		scanf("%d", &opcao); //%d armazena o que foi digitado pelo usuario na variavel opcao
	
		system("cls"); //limpa a tela
		
		switch(opcao)
		{	//inciio da sele��o
			case 1: //case abre com :
			registro(); //chamada da fun��o (tem ; para chamar a fun��o)
			break; //break fecha com ;
	
			case 2:
			consulta();
			break;
			
			case 3:
			deletar();
			break;
			
			default:
			printf("Essa op��o n�o est� disponivel!\n");
			system("pause");
			break;
		}   //fim da sele��o
			
		
	}
}
