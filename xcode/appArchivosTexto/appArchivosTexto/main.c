//
//  main.c
//  appArchivosTexto
//
//  Created by Luis Barranco on 30/08/24.
//

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
const int MAX = 255;

int main(int argc, char **argv){
        printf("valor de argc = %d \n",argc);
        printf("NOMBRE DE LA APLICACION : %s \n",argv[0]);
        printf("opcion a usar: %s \n",argv[1]);
        printf("nombre del archivo a abrir: %s \n",argv[2]);

        FILE *archivo;

        if ( (archivo = fopen(argv[2], "r")) == NULL) // NULL es 0
        {
                printf("error, archivo no encontrado \n");
                exit(1);
        }
    
        char buf[MAX];
        
        char *opc = argv[1];
    //printf("%s\n",opc);
        if ((strcmp(opc,"-p")) == 0)
        {
            int contador = 0;
            int palabra = 0;
            while (fgets(buf, sizeof(buf), archivo))
            {
                char *cadena = buf;
                for (int i = 0; i < sizeof(cadena)/sizeof(cadena[0]); i++)
                {
                    char c = cadena[i];
                    if (c != ' ' && c != '\t' && c != '\n')
                    {
                        if (palabra==0)
                        {
                            palabra = 1;
                            contador++;
                        }
                    }
                    else
                    {
                        palabra = 0;
                    }
                }
            }
            printf("numero de palabras: %d\n",contador);
            //cout << "numero de palabras: " << contador << endl;
        }else if ((strcmp(opc,"-c")) == 0)
        {
            int contador = 0;
            while (fgets(buf, sizeof(buf), archivo))
            {
                char *cadena = buf;
                for (int i = 0; i < sizeof(cadena)/sizeof(cadena[0]); i++)
                {
                    if ((cadena[i] > 31) && (cadena[i] < 127))
                    {
                        contador++;
                    }
                }
            }
            printf("numero de caracteres: %d\n",contador);
            //cout << "numero de caracteres: " << contador << endl;
        }else if ((strcmp(opc,"-n"))==0)
       {
          int i=1;
          while(fgets(buf,sizeof(buf),archivo))
             {
                 printf("\t %d  %s \n",i,buf);
                //cout<<"\t"<<i<<"   "<<buf;
                i++;
             }
       }else{
           while(!feof(archivo)){
               fgets(buf, MAX, archivo);
               printf("%s \n",buf);
           }
           
       }


        fclose(archivo);
    
    
        return 0;

}
