//
//  AppleTree.h
//  Tree
//
//  Created by Kozlova Vitaliya on 23.09.15.
//  Copyright (c) 2015 Kozlova Vitaliya. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Apple.h"

@interface AppleTree : NSObject
@property NSMutableArray* appleArray;
-(id)init;
-(void) addApple:(Apple*) a;
-(void) removeApple:(NSInteger) index;
-(void) shake;
@end
