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
@property(nonatomic,strong) IBOutlet UITableView *hotTableview;
@property(nonatomic,strong) IBOutlet UITableView *liveTableview;
@property(nonatomic,weak) IBOutlet UIButton *hotButton;
@property(nonatomic,weak) IBOutlet UIButton *liveButton;
@property(nonatomic,weak) IBOutlet UIView *mainView;

-(IBAction)liveButtonClick:(id)sender;
-(IBAction)hotButtonClick:(id)sender;


@end
