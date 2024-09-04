#include <stdio.h>
#include <stdlib.h>
const int MAX = 255;

int main(int argc, char **argv){
	printf("valo de argc = %d \n",argc);
	printf("NOMBRE DE LA APLICACION : %s \n",argv[0]);
	printf("nombre del archivo a abrir: %s \n",argv[1]);

	FILE *archivo;
	
	if ( (archivo = fopen(argv[1], "r")) == NULL) // NULL es 0
	{
		printf("error, archivo no encontrado \n");
		exit(1);
	}
	char buf[MAX];
	
	while(!feof(archivo)){
		fgets(buf, MAX, archivo);
		printf("%s \n",buf);
	}


	fclose(archivo);
	return 0;

}
