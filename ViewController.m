//
//  ViewController.m
//  animatedTableView
//
//  Created by Robin Malhotra on 21/06/14.
//  Copyright (c) 2014 Robin's code kitchen. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell.h"
#import <QuartzCore/QuartzCore.h>
@interface ViewController ()

@end

@implementation ViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"a"]]];



    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
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
    return 6;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    [cell.backgroundView setOpaque:NO];
    cell.backgroundColor=[UIColor clearColor];
    [cell.backgroundView setAlpha:0.35];
    [cell.contentView setOpaque:NO];
    
    //code for rounded corners
    cell.mainView.layer.cornerRadius=5;
    cell.mainView.layer.masksToBounds=YES;
    
    [cell.mainView setBackgroundColor:[UIColor colorWithRed:0.5 green:2 blue:0.3 alpha:0.3]];
    if (indexPath.section%2==0)
    {
        [cell.image setImage:[UIImage imageNamed:@"a"]];
        [cell.textLabel setText:@"something"];
    }
    else
    {
        [cell.image setImage:[UIImage imageNamed:@"b"]];
        [cell.textLabel setText:@"fuck textile"];
        
    }
    // Configure the cell...
    
    return cell;
}

-(void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    //stuff for tranluscent cells
    
    cell.backgroundColor = [UIColor colorWithRed:1 green:1 blue:1 alpha:0.4];
    
    [self.tableView.backgroundView setAlpha:0.5];
    [cell.backgroundView setAlpha:0.8];
    cell.contentView.backgroundColor = [UIColor clearColor];
    
}
//- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
//{
//    UIView *headerView = [[UIView alloc] init];
//    headerView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"c"]];
//    return headerView;
//}

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
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
