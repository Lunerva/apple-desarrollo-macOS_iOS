//
//  Cadena.m
//  appNSString
//
//  Created by Luis Barranco on 18/09/24.
//

#import "Cadena.h"

@implementation Cadena

- (IBAction)boton1:(NSButton *)sender {
    NSString *saludo = @"Hola ";
    NSString *cad1 = [saludo stringByAppendingString:texto1.stringValue];
    //[label1 stringValue:cad1];
    [_label1Propiedad setStringValue:cad1];
    label1.stringValue =cad1;
}
- (IBAction)botonConvMayusculas:(id)sender {
    //labNcadena.stringValue = texto1.stringValue.uppercaseString;
    
    labNcadena.stringValue = [self aMayusculas:texto1.stringValue];
}

- (IBAction)botonCMayusculas:(id)sender {
    //contar la cantidad de letras mayusculas en el texto 1
    NSString *cad = texto1.stringValue;
    int cont = 0;
    for(int i=0;i<cad.length;i++){
        char car = [cad characterAtIndex:i];
        if(car>64 && car<91){
            cont++;
        }
    }
    labMayusculas.intValue = cont;
}

- (IBAction)botonContar:(id *)sender {
    _botonContar.font = [NSFont fontWithName:@"Arial" size:18];
    _botonContar.title = @"contar";
    
    long int leng = texto1.stringValue.length;
    labContar.intValue = (int)leng;
}

-(NSMutableString *)aMayusculas:(NSMutableString *) cadena{
    NSMutableString *res = [[NSMutableString alloc]init];
    NSString *cad = texto1.stringValue;
    int cont = 0;
    for(int i=0;i<cad.length;i++){
        char car = [cad characterAtIndex:i];
        if(!(car>64 && car<91)){
            car-=32;
        }
        [res appendFormat:@"%C",car];
    }
    return res;
}


@end
