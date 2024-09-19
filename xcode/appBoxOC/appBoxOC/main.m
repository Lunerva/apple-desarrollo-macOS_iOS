//
//  main.m
//  appBoxOC
//
//  Created by Luis Barranco on 04/09/24.
//
#import <Foundation/Foundation.h>
#import "Box.h"

#include <iostream>
#include "Box.h"

int main() {
   //NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
   //Box *box1 = [[Box alloc]init];    // Create box1 object of type Box
   //Box *box2 = [[Box alloc]init];    // Create box2 object of type Box

   double volume = 0.0;             // Store the volume of a box here
 
   // box 1 specification
   //box1.height = 5.0;

   // box 2 specification
   //box2.height = 10.0;
    
    int n1,n2,n3,n4;
    //SOLICITAR LOS VALORES AL USUARIO
    //printf("N1: ");
    //scanf("%d",&n1);
    
    //printf("N2: ");
    //scanf("%d",&n2);
    
    //printf("N3: ");
    //scanf("%d",&n3);
    
    //printf("N4: ");
    //scanf("%i",&n4);
    
    std::cout<<"n1: ";
    std::cin>>n1;
    std::cout<<"n2: ";
    std::cin>>n2;
    std::cout<<"n3: ";
    std::cin>>n3;
    std::cout<<"n4: ";
    std::cin>>n4;
    
    Box *box1 = [[Box alloc] initWithInt:n1 y:n2];
    Box *box2 = [[Box alloc] initWithInt:n3 y:n4];
    box1.height = 5.0;
    box2.height = 10.0;
  
   // volume of box 1
   volume = [box1 volume];
   NSLog(@"Volume of Box1 : %f", volume);
   
   // volume of box 2
   volume = [box2 volume];
   NSLog(@"Volume of Box2 : %f", volume);
   
   //[pool drain];
   return 0;
}


/*@interface Box:NSObject {
   double length;    // Length of a box
   double breadth;   // Breadth of a box
   double height;    // Height of a box
}

@property(nonatomic, readwrite) double height;  // Property
-(double) volume;
@end*/
/*
@implementation Box

@synthesize height;

-(id)init {
   self = [super init];
   length = 1.0;
   breadth = 1.0;
   return self;
}

-(id)initWithInt:(int)n1 y:(int)n2{
    self=[super init];
    length = n1;
    breadth = n2;
    return self;
}

-(double) volume {
   return length*breadth*height;
}

@end
*/
