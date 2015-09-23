//
//  Apple.h
//  Tree
//
//  Created by Kozlova Vitaliya on 23.09.15.
//  Copyright (c) 2015 Kozlova Vitaliya. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Apple : NSObject
@property NSInteger stoneCount;
@property NSString* color;
@property Boolean hung;
-(Boolean) fall;
-(void) mature;
-(id) initColor:(NSString*) color_ withStones: (NSInteger) stoneCount_;
@end
