//
//  Apple.m
//  Tree
//
//  Created by Kozlova Vitaliya on 23.09.15.
//  Copyright (c) 2015 Kozlova Vitaliya. All rights reserved.
//

#import "Apple.h"

@implementation Apple
-(id)initColor:(NSString *)color_ withStones:(NSInteger)stoneCount_
{
    self = [super init];
    _hung = true;
    _stoneCount = stoneCount_;
    _color = color_;
    return self;
}
-(Boolean) fall
{
    _hung = false;
    NSLog(@"Apple is fallen");
    return _hung;
}
-(void) mature
{
    _color = @"red";
    NSLog(@"Apple is now mature");
}
@end
