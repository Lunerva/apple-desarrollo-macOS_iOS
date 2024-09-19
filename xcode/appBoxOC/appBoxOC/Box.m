//
//  Box.m
//  appBoxOC
//
//  Created by Luis Barranco on 06/09/24.
//

#import "Box.h"


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
