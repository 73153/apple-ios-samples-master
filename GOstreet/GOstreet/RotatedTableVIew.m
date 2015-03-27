//
//  RotatedTableVIew.m
//  GOstreet
//
//  Created by broy denty on 13-12-20.
//  Copyright (c) 2013年 denty. All rights reserved.
//

#import "RotatedTableVIew.h"

@implementation RotatedTableVIew

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.transform = CGAffineTransformRotate(CGAffineTransformIdentity, -M_PI/2);
        self.frame = frame;
    }
    return self;
}

- (void)awakeFromNib
{
    [super awakeFromNib];
    CGRect frame = self.frame;
    self.transform = CGAffineTransformRotate(CGAffineTransformIdentity, -M_PI/2);
    self.frame = frame;
}
@end
