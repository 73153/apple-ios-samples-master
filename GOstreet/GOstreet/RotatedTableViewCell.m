//
//  RotatedTableViewCell.m
//  GOstreet
//
//  Created by broy denty on 13-12-20.
//  Copyright (c) 2013年 denty. All rights reserved.
//

#import "RotatedTableViewCell.h"

@implementation RotatedTableViewCell
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        CGRect frame = self.frame;
        self.transform = CGAffineTransformRotate(CGAffineTransformIdentity, M_PI/2);
        self.frame = frame;
    }
    return self;
}


- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        CGRect frame = self.frame;
        self.transform = CGAffineTransformRotate(CGAffineTransformIdentity, M_PI/2);
        self.frame = frame;
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)awakeFromNib
{
    [super awakeFromNib];
    CGRect frame = self.frame;
    self.transform = CGAffineTransformRotate(CGAffineTransformIdentity, M_PI/2);
    self.frame = frame;
}
@end
