//
//  AppleTree.m
//  Tree
//
//  Created by Kozlova Vitaliya on 23.09.15.
//  Copyright (c) 2015 Kozlova Vitaliya. All rights reserved.
//
#import "Apple.h"
#import "AppleTree.h"

@implementation AppleTree
-(id)init {
    self = [super init];
    _appleArray = [[NSMutableArray alloc]init];
    return self;
}
-(void) addApple:(Apple *)a
{
    [_appleArray addObject:a];
}
-(void) removeApple:(NSInteger)index
{
    [_appleArray removeObjectAtIndex:index];
}
-(void) shake {
//    [super shake];
    if([_appleArray count] > 0) {
        Apple* a = [_appleArray lastObject];
        [a fall];
        [_appleArray removeLastObject];
    }
}
@end
