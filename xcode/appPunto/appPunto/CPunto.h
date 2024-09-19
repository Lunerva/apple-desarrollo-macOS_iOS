//
//  CPunto.h
//  appPunto
//
//  Created by Luis Barranco on 06/09/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CPunto : NSObject
{
    //Los atributos de las cases se colocan entre llaves y
    //por default son protected
    NSInteger x;
    NSInteger y;
}
//los metodos de instancia utilizan " - " equivalente
//al static de java

+(NSString *)sistema;
+(NSInteger) numDePuntos;

//metodos de instancia
-init;

-(NSInteger)x;//es equivalente a un getter de java
-(void)setX:(NSInteger)paramX;
-(void)setX:(NSInteger)paramX conIncremento:(NSInteger)paramIncrementar;

-(NSInteger)y;//es equivalente a un getter de java
-(void)setY:(NSInteger)paramY;
-(void)setY:(NSInteger)paramY conIncremento:(NSInteger)paramIncrementar;

-(void) setX:(NSInteger)paramX yY:(NSInteger)paramY;

//metodo de clase
+(CPunto *) sumar:(CPunto *) p1 mas:(CPunto *)p2;

-(CPunto *) sumar:(CPunto *) p;
                            /// parametros variables
+(CPunto *) sumar:(NSInteger) n,...;

-(CGFloat) distDosPuntos:(CPunto *)p;


@end

NS_ASSUME_NONNULL_END
