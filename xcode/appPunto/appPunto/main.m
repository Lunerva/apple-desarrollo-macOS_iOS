//
//  main.m
//  appPunto
//
//  Created by Luis Barranco on 06/09/24.
//

#import <Foundation/Foundation.h>
#import "CPunto.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        CPunto *punto1 = [[CPunto alloc]init];
        CPunto *punto2 = [CPunto new];
        
        int x1,x2,y1,y2;
        x1=10;
        y1=10;
        x2=100;
        y2=100;
        //capturar los valores para los puntos
        punto1.x = x1;
        punto1.y = y1;
        
        [punto2 setX:x2 yY:y2];
        
        CPunto *pResult = [CPunto new];
        pResult = [CPunto sumar:punto1 mas:punto2];
        NSLog(@"Suma: X %ld, Y %ld",[pResult x],pResult.y);
        
        CPunto *suma3Puntos = [CPunto new];
        suma3Puntos = [CPunto sumar:3, punto1, punto2,pResult];
        NSLog(@"Suma de 3 puntos: X %ld, Y %ld",[suma3Puntos x],suma3Puntos.y);
        
        //calcular la distancia
        
        
        NSString *cadena = [CPunto sistema];
        NSLog(@"Cadena de la clase: %@",cadena);
        NSLog(@"Cadena de la clase: %@",[CPunto sistema]);
        
        CGFloat dist = [punto1 distDosPuntos:punto2];
        NSLog(@"Distancia  de %@ hasta %@ = %0.2f",punto1,punto2,dist);
        
        NSInteger npuntos = [CPunto numDePuntos];
        NSLog(@"Puntos creados = %ld",npuntos);
    }
    return 0;
}
// TAREA
//implementar esta aplicacion de forma interactiva
//presentando la opcion de sumar (3)
//agregar la operacion de restar
// y utilizar el metodo de calcular distancia.


