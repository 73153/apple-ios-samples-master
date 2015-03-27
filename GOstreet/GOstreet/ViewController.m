//
//  ViewController.m
//  GOstreet
//
//  Created by broy denty on 13-12-20.
//  Copyright (c) 2013年 denty. All rights reserved.
//

#import "ViewController.h"
#import "RotatedTableVIew.h"
#import "RotatedTableViewCell.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    RotatedTableVIew *rotatedTableView = [[RotatedTableVIew alloc] initWithFrame:CGRectMake(0, 0, 320, self.view.frame.size.height)];
    [rotatedTableView setDelegate:self];
    [rotatedTableView setDataSource:self];
    [rotatedTableView setPagingEnabled:YES];
    [self.view addSubview:rotatedTableView];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 320;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * identfy = @"rotatedCell";
    RotatedTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:identfy];
    if (cell == nil) {
        cell = [[RotatedTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identfy];
    }
    [cell.textLabel setText:[NSString stringWithFormat:@"%d",indexPath.row]];
    return cell;
}
@end
