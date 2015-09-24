//
//  ViewController.m
//  Tree
//
//  Created by Kozlova Vitaliya on 21.09.15.
//  Copyright (c) 2015 Kozlova Vitaliya. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "Apple.h"
#import <stdlib.h>

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *Action;
@property (weak, nonatomic) IBOutlet UILabel *Status;
@property (weak, nonatomic) IBOutlet UILabel *CountApple;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    AppDelegate * appdelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    self.tree = appdelegate.tree;
    [_Action setText:@"Tree is planted!"];
    [_Status setText:[NSString stringWithFormat: @"Count of apples is = %d", [self.tree.appleArray count]]];
}
- (IBAction)growTree:(void *)sender {
    int r = arc4random_uniform(5);
    for(int i = 0;i < r;i++)
        [self.tree addApple];
    [_Action setText:@"Tree grew!"];
    [_Status setText:[NSString stringWithFormat:@"Count of apples is = %d", [self.tree.appleArray count]]];
    [_CountApple setText: [NSString stringWithFormat:@"+%d apples", r]];
}
- (IBAction)shakeTree:(void *)sender {
    int r = arc4random_uniform(5);
    if([self.tree.appleArray count] >= r)
        for(int i = 0;i < r;i++)
            [self.tree removeApple];
    else
        for(int i = 0;i < [self.tree.appleArray count];i++)
            [self.tree removeApple];
    [_Action setText:@"Tree shaked!"];
    [_Status setText:[NSString stringWithFormat:@"Count of apples is = %d", [self.tree.appleArray count]]];
    [_CountApple setText: [NSString stringWithFormat:@"-%d apples", r]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
