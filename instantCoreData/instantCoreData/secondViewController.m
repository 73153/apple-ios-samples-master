//
//  secondViewController.m
//  instantCoreData
//
//  Created by broy denty on 14-1-24.
//  Copyright (c) 2014年 denty. All rights reserved.
//

#import "secondViewController.h"
#import "AppDelegate.h"
#import "Testone.h"
@interface secondViewController ()
@property NSManagedObjectContext *context;
@end

@implementation secondViewController

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
    self.delegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    self.context = [self.delegate managedObjectContext];
    NSFetchRequest *requestHolder = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Testone" inManagedObjectContext:self.context];
    [requestHolder setEntity:entity];
    NSError *error;
     NSArray *fetchObject = [self.context executeFetchRequest:requestHolder error:&error];
    for (NSManagedObject *infomation in fetchObject) {
        [self.myIdlabel setText:[infomation valueForKey:@"myid"]];
        [self.nameLabel setText:[infomation valueForKey:@"name"]];
    }
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
