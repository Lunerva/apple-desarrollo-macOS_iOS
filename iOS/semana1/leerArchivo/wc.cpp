#include <iostream>

using namespace std;

int main(int argc, char **argv)
{
    ///                  ///     ////////////////
     ///                ///     ////////////////
      ///              ///     //////
       ///    /////   ///     //////
        ///  //  //  ///     //////
         /////    /////     ///////////////////
          //       ///     ///////////////////

    ////////devolvemos el nombre del archivo
    cout << "archivo: " << argv[2] << endl;
    cout << "opcion: " << argv[1] << endl;
    ///////abrimos archivo
    FILE *fichero;
    string fileName = argv[2];
    string path = "/Users/luisbarranco/Documents/code/iOS/semana1/leerArchivo/" + fileName;
    fichero = fopen(path.c_str(), "r");
    ///////// error con el archivo
    if (fichero == nullptr)
    {
        cout << "error con el archivo" << endl;
    }
    ///////inspeccionamos la opcion a usar
    char cad[350];
    string opc = argv[1];
    if (opc.compare("-p") == 0)
    {
        int contador = 0;
        bool palabra = false;
        while (fgets(cad, sizeof(cad), fichero))
        {
            string cadena = cad;
            for (int i = 0; i < cadena.length(); i++)
            {
                char c = cadena.at(i);
                if (c != ' ' && c != '\t' && c != '\n')
                {
                    if (!palabra)
                    {
                        palabra = true;
                        contador++;
                    }
                }
                else
                {
                    palabra = false;
                }
            }
        }
        cout << "numero de palabras: " << contador << endl;
    }
    if (opc.compare("-c") == 0)
    {
        int contador = 0;
        while (fgets(cad, sizeof(cad), fichero))
        {
            string cadena = cad;
            for (int i = 0; i < cadena.length(); i++)
            {
                if ((cadena.at(i) > 31) && (cadena.at(i) < 127))
                {
                    contador++;
                }
            }
        }
        cout << "numero de caracteres: " << contador << endl;
    }

    ///////cerramos el archivo
    fclose(fichero);
    return 0;
}