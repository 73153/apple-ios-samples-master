//
//  Next_ViewController.m
//  Intend_Demo
//
//  Created by broy denty on 13-8-16.
//  Copyright (c) 2013年 denty. All rights reserved.
//

#import "Next_ViewController.h"
#import "ViewController.h"
@interface Next_ViewController ()
@property IBOutlet UILabel *label;

@end

@implementation Next_ViewController
@synthesize Datadelegate;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Do any additional setup after loading the view from its nib.
    NSMutableDictionary *getdata =[[NSMutableDictionary alloc] init];
    getdata =[self.Datadelegate traData];
    self.label.text = [getdata valueForKey:@"data"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
