//
//  ViewController.h
//  Incredible
//
//  Created by broy denty on 13-9-28.
//  Copyright (c) 2013年 denty. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIButton *playButton;
@property (strong, nonatomic) IBOutlet UIButton *recordButton;
- (IBAction)onTouchRecord:(id)sender;
- (IBAction)onTouchPlay:(id)sender;

@end
