//
//  Cadena.h
//  appNSString
//
//  Created by Luis Barranco on 18/09/24.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface Cadena : NSObject
{
    __weak IBOutlet NSTextField *texto1;
    
    __weak IBOutlet NSTextField *label1;
    
    __weak IBOutlet NSTextField *labContar;
    
    __weak IBOutlet NSTextField *labMayusculas;
    
    __weak IBOutlet NSTextField *labNcadena;
    
}
@property (weak) IBOutlet NSButton *boton1Propiedad;
- (IBAction)boton1:(NSButton *)sender;

@property (weak) IBOutlet NSTextField *label1Propiedad;

@property (weak) IBOutlet NSButton *botonContar;
- (IBAction)botonContar:(id *)sender;

- (IBAction)botonCMayusculas:(id)sender;

- (IBAction)botonConvMayusculas:(id)sender;


// implementar metodo para convertir una cadena a mayusculas
-(NSMutableString *)aMayusculas:(NSMutableString *) cadena;

@end

NS_ASSUME_NONNULL_END
