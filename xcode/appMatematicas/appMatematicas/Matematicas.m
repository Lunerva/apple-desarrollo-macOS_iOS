//
//  Matematicas.m
//  appMatematicas
//
//  Created by Luis Barranco on 12/09/24.
//

#import "Matematicas.h"
@implementation Matematicas

-(NSNumber *)multiplyA:(NSNumber *)a withB:(NSNumber *)b {
   float number1 = [a floatValue];
   float number2 = [b floatValue];
   float product = number1 * number2;
   NSNumber *result = [NSNumber numberWithFloat:product];
   return result;
}

-(NSNumber *)factorialIterativo:(NSNumber *)a {
    NSInteger aux = 1;
    for(int i=1;i<=[a integerValue];i++){
        aux*=i;
    }
    return [NSNumber numberWithInteger:aux];
}

-(NSNumber *)factorialRecursivo:(NSNumber *)a{
    int cont = [a integerValue];
    if((cont == 0)||(cont == 1)){
        return [NSNumber numberWithInteger:1];
    }else{
        NSNumber *ant=[self factorialRecursivo:[NSNumber numberWithInteger:cont - 1]];
        return [NSNumber numberWithInteger:cont * [ant integerValue]];
    }
}

-(NSNumber *)sinAngular:(NSNumber *)a{
    CGFloat rad = [a doubleValue] * (M_PI)/180;
    CGFloat res = sinf(rad);
    return [NSNumber numberWithFloat:res];
}

-(int)factorial:(int)n{
    int f=1;
    if(n == 0 || n == 1){
        return f;
    }
    for(int i=n;i>1;i--){
        f*=i;
    }
    return f;
}

-(double)factorialD:(double)n{
    double f=1.0;
    if(n == 0 || n == 1){
        return f;
    }
    for(int i=n;i>1;i--){
        f*=i;
    }
    return f;
}

-(long long)factorialll:(int)n{
    long long f=1;
    if(n == 0 || n == 1){
        return f;
    }
    for(int i=n;i>1;i--){
        f*=i;
    }
    return f;
}

-(int)factorialR:(int)n{
    if(n==0 || n==1){
        return 1;
    }else{
        return n * [self factorialR:n-1];
    }
}

-(double)seno:(double) angulo{
    return sin([self radAGrados:angulo]);
}

-(double)radAGrados:(double) radianes{
    return radianes * M_PI / 180.0;
}

-(int)esPrimo:(int)n{
    if (n <= 1) {
        return 0; // No es primo
    }
    if (n <= 3) {
        return 1; // 2 y 3 son primos
    }
    if (n % 2 == 0 || n % 3 == 0) {
        return 0; // No es primo
    }
    // Verifica desde 5 hasta la raíz cuadrada de n
    for (int i = 5; i * i <= n; i += 6) {
        if (n % i == 0 || n % (i + 2) == 0) {
            return 0; // No es primo
        }
    }
    return 1; // Es primo
}


@end
