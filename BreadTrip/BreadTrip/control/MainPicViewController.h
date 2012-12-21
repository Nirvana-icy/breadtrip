//
//  MainPicViewController.h
//  BreadTrip
//
//  Created by LI Haiyun on 12/21/12.
//  Copyright (c) 2012 LI Haiyun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainPicViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>{
    
}
@property(nonatomic,weak) IBOutlet UITableView *dataView;

@end
