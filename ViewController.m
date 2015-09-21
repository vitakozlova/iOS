//
//  ViewController.m
//  Tree
//
//  Created by Kozlova Vitaliya on 21.09.15.
//  Copyright (c) 2015 Kozlova Vitaliya. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *Status;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)growTree:(void *)sender {
    [_Status setText:@"Tree grew!"];
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
