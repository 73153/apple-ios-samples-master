//
//  ViewController.m
//  Intend_Demo
//
//  Created by broy denty on 13-8-16.
//  Copyright (c) 2013年 denty. All rights reserved.
//

#import "ViewController.h"
#import "Next_ViewController.h"
@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIButton *traButton;
@property IBOutlet UILabel *label;
-(IBAction)onclick:(id)sender;
@end

@implementation ViewController
@synthesize label = _label;
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _label.text = @"test_intend_implement";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)onclick:(id)sender
{
    Next_ViewController *next = [[Next_ViewController alloc] init];
    next.Datadelegate = self;
    [self.navigationController pushViewController:next animated:YES];
}
- (NSMutableDictionary *)traData
{
    NSMutableDictionary *intend = [[NSMutableDictionary alloc] init];
    [intend setValue:@"test_intend_implement" forKey:@"data"];
    return intend;
}
@end
