//
//  ViewController.m
//  instantCoreData
//
//  Created by broy denty on 14-1-24.
//  Copyright (c) 2014年 denty. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "Testone.h"
#import "secondViewController.h"
@interface ViewController ()

@end

@implementation ViewController
UINavigationController *nav;
AppDelegate *m_delegate;
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    m_delegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)ensureAction:(id)sender {
    self.context = m_delegate.managedObjectContext;
    Testone * testOne = [NSEntityDescription insertNewObjectForEntityForName:@"Testone" inManagedObjectContext:self.context];
    testOne.myid = self.myIDtextField.text;
    testOne.name = self.nameTextField.text;
    NSError *error;
    if (![self.context save:&error]) {
        NSLog(@"%@",[error localizedDescription]);
    }
    secondViewController *seconVC = [[secondViewController alloc] init];
    NSManagedObjectContext *context = m_delegate.managedObjectContext;
    //    获取数据
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc]init];
    //    创建数据容器
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Testone"inManagedObjectContext:context];
    [fetchRequest setEntity:entity];
    //    获取coredata中的entry放入数据容器中
    NSArray *fetchObject = [self.context executeFetchRequest:fetchRequest error:&error];
    //    获取数据对象读取数据
    for (NSManagedObject *info in fetchObject) {
        NSLog(@"id:%@",[info valueForKey:@"myid"]);
        NSLog(@"name:%@",[info valueForKey:@"name"]);
    }

    [self.navigationController pushViewController: seconVC animated:YES];
}

- (IBAction)inputOver:(id)sender {
    [sender resignFirstResponder];
}
@end
