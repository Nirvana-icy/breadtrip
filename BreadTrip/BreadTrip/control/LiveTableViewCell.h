//
//  LiveTableViewCell.h
//  BreadTrip
//
//  Created by LI Haiyun on 12/21/12.
//  Copyright (c) 2012 LI Haiyun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LiveTableViewCell : UITableViewCell{
    
}
@property(nonatomic,weak) IBOutlet UILabel *liveLabel;
@property(nonatomic,weak) IBOutlet UIImageView *liveImage;
@property(nonatomic,weak) IBOutlet UIImageView *userIcon;
@property(nonatomic,weak) IBOutlet UIButton *userIconButton;

@end
