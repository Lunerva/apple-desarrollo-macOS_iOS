//
//  Box.h
//  appBoxOC
//
//  Created by Luis Barranco on 06/09/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Box:NSObject {
   double length;    // Length of a box
   double breadth;   // Breadth of a box
   double height;    // Height of a box
}
@property(nonatomic, readwrite) double height;  // Property
-(id)initWithInt:(int)n1 y:(int)n2;
-(double) volume;

@end

NS_ASSUME_NONNULL_END
