//
//  Matematicas.h
//  appMatematicas
//
//  Created by Luis Barranco on 12/09/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN


@interface Matematicas:NSObject
-(NSNumber *)multiplyA:(NSNumber *)a withB:(NSNumber *)b;

//implementar un metodo para calcular factorial modo iterativo
// y factorial modo recursivo
-(NSNumber *)factorialIterativo:(NSNumber *)a;
-(NSNumber *)factorialRecursivo:(NSNumber *)a;

-(int)factorial:(int)n;
-(long long)factorialll:(int)n;
-(double)factorialD:(double)n;
-(int)factorialR:(int)n;
//usando la funcion seno calcular el valor
//angular de un numero en grados
-(NSNumber *)sinAngular:(NSNumber *)a;



//implemente un metodo para determinar si un numero es o no primo
-(int)esPrimo:(int)n;

@end

NS_ASSUME_NONNULL_END
