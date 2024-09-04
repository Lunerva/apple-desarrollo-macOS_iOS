#include<iostream>

using namespace std;

int main(int argc, char **argv)
{
       /////////////////           /////            ///////////////////
     //////////////////          ///////           ///////////////////
    ///////                     //    //          ///////////////////
   ///////                    ///     //                ///////
   //////                    ///////////               ///////
   /////                    //        //              ///////
   //////////////////      //         //             ///////
    ////////////////      //          //            ///////
////////devolvemos el nombre del archivo
   cout<<"archivo: "<<argv[2]<<endl;
   cout<<"opcion: "<<argv[1]<<endl;
///////abrimos archivo
   FILE *fichero;
   string fileName = argv[2];
   string path = "/Users/luisbarranco/Documents/code/iOS/semana1/leerArchivo/"+fileName;
   fichero = fopen(path.c_str(), "r");
///////// error con el archivo
   if (fichero==nullptr)
   {
    cout<<"error con el archivo"<<endl;
   }
///////inspeccionamos la opcion a usar
   char cad[350];
   string opc = argv[1];
   if (opc.compare("-n")==0)//esta opcion enumera las lineas del archivo de texto
   {//ej:   1 lorem ipsium
      int i=1;
      while(fgets(cad,sizeof(cad),fichero))
         {
            cout<<"\t"<<i<<"   "<<cad;
            i++;
         }       
   }
   else{
         while(fgets(cad,sizeof(cad),fichero))
            {
               cout<<cad;
            } 
   }

///////cerramos el archivo
   fclose(fichero);
   return 0;
}