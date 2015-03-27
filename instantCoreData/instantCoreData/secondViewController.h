//
//  secondViewController.h
//  instantCoreData
//
//  Created by broy denty on 14-1-24.
//  Copyright (c) 2014年 denty. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
@interface secondViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *myIdlabel;
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) AppDelegate *delegate;
@end
