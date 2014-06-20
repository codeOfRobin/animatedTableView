//
//  TableViewCell.m
//  animatedTableView
//
//  Created by Robin Malhotra on 21/06/14.
//  Copyright (c) 2014 Robin's code kitchen. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell
@synthesize textLabel;
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"c"]]];
    }
    return self;
}
- (IBAction)websiteButton:(id)sender
{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.google.com"]];
    
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
