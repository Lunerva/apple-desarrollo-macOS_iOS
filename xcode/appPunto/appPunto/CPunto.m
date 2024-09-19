//
//  CPunto.m
//  appPunto
//
//  Created by Luis Barranco on 06/09/24.
//

#import "CPunto.h"

@implementation CPunto

static NSInteger nPuntos = 0;
//LAS Variables static se comparten en entre los objetos creados
+ (NSString *)sistema{
    
    return  @"Cartesiano";
}

+ (NSInteger)numDePuntos{
    return nPuntos;
}

- (id)init{
    if( (self = [super init]) ){
        nPuntos++;
    }
    return self;
}

- (NSInteger)x{
    return x;
}

- (NSInteger)y{
    return y;
}

-(void) setX:(NSInteger)paramX{
    x =paramX;
}

-(void)setX:(NSInteger)paramX conIncremento:(NSInteger)paramIncrementar{
    x=paramX + paramIncrementar;
}

-(void)setX:(NSInteger)paramX yY:(NSInteger)paramY{
    x=paramX;
    y=paramY;
}

-(void) setY:(NSInteger)paramY{
    y=paramY;
}

-(void)setY:(NSInteger)paramY conIncremento:(NSInteger)paramIncrementar{
    y=paramY + paramIncrementar;
}


//metodo de clase
+(CPunto *) sumar :(CPunto *)p1 mas:(CPunto *)p2{
    CPunto *aux = [CPunto new];
    aux->x = [p1 x] + [p2 x];
    aux->y = [p1 y] + [p2 y];
    return aux;
}

//metodo de isntancia
-(CPunto *)sumar:(CPunto *)p{
    CPunto *aux = [CPunto new];
    aux->x = [self x] + p->x;
    aux->y = y + [p y];
    return aux;
}


+(CPunto *) sumar:(NSInteger) n,...{
    CPunto *aux = [CPunto new];
    va_list parametros;
    va_start(parametros, n);
    CPunto *p;
    while (n-- > 0){
        p = va_arg(parametros, CPunto *);
        aux->x += p->x;
        aux->y += p->y;
    }
    va_end(parametros);
    return aux;
}

//implementar un metodo para calcular la distancia entre dos puntos, utilice el parametro
// implicito

-(CGFloat) distDosPuntos:(CPunto *)p{
    return sqrt( (pow( (p->x - x) , 2.0 )) + (pow( (p->y - y) , 2.0 )) );
}
@end



