//
//  MainPicViewController.m
//  BreadTrip
//
//  Created by LI Haiyun on 12/21/12.
//  Copyright (c) 2012 LI Haiyun. All rights reserved.
//

#import "MainPicViewController.h"
#import "LiveTableViewCell.h"
#import "HotTableViewCell.h"
#import <QuartzCore/QuartzCore.h>

@interface MainPicViewController (){
    NSString *initBySelf;
    NSString *hotOrLive;
    NSMutableArray *images;
}

@end

@implementation MainPicViewController
@synthesize hotTableview;
@synthesize liveTableview;
@synthesize hotButton;
@synthesize liveButton;
@synthesize mainView;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    initBySelf=@"YES";
    hotOrLive=@"HOT";
    
    self.hotTableview.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"background_normal_gray.png"]];
    self.liveTableview.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"background_normal_gray.png"]];
    
    NSArray * paths = [NSBundle pathsForResourcesOfType: @"JPG" inDirectory: [[NSBundle mainBundle] bundlePath]];
    images = [[NSMutableArray alloc] init];
    
    for ( NSString * path in paths )
    {
        if ( [[path lastPathComponent] hasPrefix: @"IMG_"] ){
            [images addObject: [path lastPathComponent]];
            
        }
        continue;
        
        
    }
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
}
-(void) viewWillAppear:(BOOL)animated{
    
}

-(IBAction)hotButtonClick:(id)sender{
    
    
    UIImage *hotEditPNG=[UIImage imageNamed:@"wishes_list_been_to_hl.png"];
    
    [hotButton setBackgroundImage:hotEditPNG forState:UIControlStateNormal];
    UIImage *liveEditPNG=[UIImage imageNamed:@"wishes_list_want_to_go.png"];
    [liveButton setBackgroundImage:liveEditPNG forState:UIControlStateNormal];
    
    initBySelf=@"NO";
    hotOrLive=@"HOT";
    [self.mainView addSubview:hotTableview];
    [self.liveTableview removeFromSuperview];
    
}

-(IBAction)liveButtonClick:(id)sender{
    initBySelf=@"NO";
    hotOrLive=@"LIVE";
    
    UIImage *hotEditPNG=[UIImage imageNamed:@"wishes_list_been_to.png"];
    
    [hotButton setBackgroundImage:hotEditPNG forState:UIControlStateNormal];
    UIImage *liveEditPNG=[UIImage imageNamed:@"wishes_list_want_to_go_hl.png"];
    [liveButton setBackgroundImage:liveEditPNG forState:UIControlStateNormal];
    
    [self.mainView addSubview:liveTableview];
    [self.hotTableview removeFromSuperview];
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    // Return the number of rows in the section.
    if (tableView.tag==0) {
        return [images count];
    }else{
        return 6;
    }
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier1= @"HotCell";
    static NSString *CellIdentifier2= @"LiveCell";
    
    UIImage *hotEditPNG=[UIImage imageNamed: [images objectAtIndex:indexPath.row] ];
    if (tableView.tag==0) {
        
        HotTableViewCell *cell= [tableView dequeueReusableCellWithIdentifier:CellIdentifier1 forIndexPath:indexPath];
        [cell.hotImage setImage:hotEditPNG];
        return cell;
    }else if(tableView.tag==1){
        LiveTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:CellIdentifier2 forIndexPath:indexPath];
        [cell.liveImage setImage:hotEditPNG];
        double imageSize = 20;
        cell.userIconButton.layer.masksToBounds = YES;
        
        // 其實就是設定圓角，只是圓角的弧度剛好就是圖片尺寸的一半
        cell.userIconButton.layer.cornerRadius = imageSize / 2.0;
        return cell;
    }
    return nil;
    
    // Configure the cell...
}

/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
 {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 }
 else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
 {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

@end
