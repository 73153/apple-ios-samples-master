//
//  ViewController.h
//  instantCoreData
//
//  Created by broy denty on 14-1-24.
//  Copyright (c) 2014年 denty. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *myIDtextField;
@property (strong, nonatomic) IBOutlet UITextField *nameTextField;
@property (strong, nonatomic) IBOutlet UIButton *ensure;
@property (strong, nonatomic) NSManagedObjectContext *context;
- (IBAction)ensureAction:(id)sender;
- (IBAction)inputOver:(id)sender;

@end
