//
//  main.m
//  appMatematicas
//
//  Created by Luis Barranco on 12/09/24.
//

#import <Foundation/Foundation.h>
#import "Matematicas.h"
#import <iostream>

using namespace std;

int main() {
    Matematicas *mat = [[Matematicas alloc]init];

    //NSNumber *a = [NSNumber numberWithFloat:10.5];
    //NSNumber *b = [NSNumber numberWithFloat:10.0];
   
    //NSNumber *result = [mat multiplyA:a withB:b];
    //NSString *resultString = [result stringValue];
    //NSLog(@"The product is %@",resultString);

    
    int n= 13;
    cout<<"NUMERO : "<<n<<endl;
    double fact = [mat factorialD:13.0];
    cout<<"factorial  = "<<fact<<endl;
   
    
    int nn= 13;
    cout<<"NUMERO : "<<nn<<endl;
    int factR = [mat factorialR:nn];
    cout<<"factorial  = "<<factR<<endl;
    
    
    int prim= 9;
    cout<<"NUMERO : "<<prim<<endl;
    int pr = [mat esPrimo:prim];
    cout<<"es primo  = "<<pr<<endl;

    //implementar una aplicacion una app interactiva
    //que cuente con un menu en el que el usuario sleccione la opcion
    //valida todo lo necesario
    int opc;
    //cin>>opc;
    do{
        
        cout<<"Matematicas"<<endl;
        cout<<"0  salir"<<endl;
        cout<<"1  multiplicar"<<endl;
        cout<<"2  factorial iterativo"<<endl;
        cout<<"3  factorial recursivo"<<endl;
        cout<<"4  valor angular"<<endl;
        cout<<"5  es primo"<<endl;
        cin>>opc;
        switch(opc){
            case 0:
                opc=0;
                break;
            case 1:{
                int m1,m2;
                cin>>m1>>m2;
                
                NSNumber *a = [NSNumber numberWithInteger:m1];
                NSNumber *b = [NSNumber numberWithInteger:m2];
                
                NSNumber *result = [mat multiplyA:a withB:b];
                NSString *resultString = [result stringValue];
                NSLog(@"The product is %@",resultString);
            }break;
            case 2:
            {
                int n;
                cin>>n;
                //cout<<"NUMERO : "<<n<<endl;
                int fact = [mat factorial:n];
                cout<<"factorial  = "<<fact<<endl;
            }
                break;
            case 3:
            {
                int n;
                cin>>n;
                //cout<<"NUMERO : "<<n<<endl;
                int fact = [mat factorialR:n];
                cout<<"factorial iterativo  = "<<fact<<endl;
            }
                break;
            case 4:{
                
                    int m;
                    cin>>m;
                    
                    NSNumber *a = [NSNumber numberWithInteger:m];
                    
                    NSNumber *result = [mat sinAngular:a];
                    NSString *resultString = [result stringValue];
                    NSLog(@" valor angular %@",resultString);
                
            }break;
            case 5:
            {
                    int n;
                    cin>>n;
                    //cout<<"NUMERO : "<<n<<endl;
                    int primo = [mat esPrimo:n];
                if (primo==0){cout<<"es primo"<<endl;}else{
                    cout<<"no es primo"<<endl;}
            }break;
        }
        
    }
    while(opc!=0);
    
    return 0;
}
