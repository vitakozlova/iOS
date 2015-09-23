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

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *Status;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    AppDelegate * appdelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    self.tree = appdelegate.tree;
}
- (IBAction)growTree:(void *)sender {
    [self.tree addApple: [[Apple alloc]initColor:@"green" withStones:14]];
    [_Status setText:[NSString stringWithFormat:@"Tree grew!Count of apple=%d", [self.tree.appleArray count]]];
}
- (IBAction)shakeTree:(void *)sender {
    [_Status setText:@"Tree shaked!"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
