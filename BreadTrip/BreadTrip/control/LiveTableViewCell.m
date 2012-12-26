//
//  LiveTableViewCell.m
//  BreadTrip
//
//  Created by LI Haiyun on 12/21/12.
//  Copyright (c) 2012 LI Haiyun. All rights reserved.
//

#import "LiveTableViewCell.h"
#import <QuartzCore/QuartzCore.h>

@implementation LiveTableViewCell
@synthesize liveLabel;
@synthesize liveImage;
@synthesize userIcon;
@synthesize userIconButton;



- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
