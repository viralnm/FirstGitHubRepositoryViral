//
//  DatingRequestCell.m
//  LOV
//
//  Created by Oneclick IT Solution on 12/28/15.
//  Copyright © 2015 One Click IT Consultancy Pvt Ltd. All rights reserved.
//

#import "DatingRequestCell.h"

@implementation DatingRequestCell

@synthesize lblName,lblSentOn,lblLine,imgProfile,imgArrow,lblScheduledDate,lblScheduledTime;
@synthesize btnAccept,btnReject;

- (void)awakeFromNib
{
    // Initialization code
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor clearColor];
        
        imgProfile = [[AsyncImageView alloc] initWithFrame:CGRectMake(10, 10, 50, 50)];
        [imgProfile setContentMode:UIViewContentModeScaleAspectFill];
        imgProfile.layer.masksToBounds = YES;
        [imgProfile setImage:[UIImage imageNamed:@"profile_1.jpg"]];
        //        imgPlace.layer.shadowColor = [UIColor blackColor].CGColor;
        //        imgPlace.layer.shadowOpacity = 0.6;
        //        imgPlace.layer.shadowRadius = 5;
        //        imgPlace.layer.shadowOffset = CGSizeMake(0.5, 1);
        [self.contentView addSubview:imgProfile];
        
        lblName = [[UILabel alloc] initWithFrame:CGRectMake(70, 10, 220, 20)];
        [lblName setTextColor:[UIColor grayColor]];
        [lblName setBackgroundColor:[UIColor clearColor]];
        [lblName setTextAlignment:NSTextAlignmentLeft];
        [lblName setFont:[UIFont fontWithName:SinkinSansBoldFont size:15]];
        [self.contentView addSubview:lblName];
        
        
        lblScheduledDate = [[UILabel alloc] initWithFrame:CGRectMake(70, 30, 220, 20)];
        [lblScheduledDate setTextColor:[UIColor grayColor]];
        [lblScheduledDate setBackgroundColor:[UIColor clearColor]];
        [lblScheduledDate setTextAlignment:NSTextAlignmentLeft];
        [lblScheduledDate setFont:[UIFont fontWithName:SinkinSansBoldFont size:10]];
        [self.contentView addSubview:lblScheduledDate];
        
        lblScheduledTime = [[UILabel alloc] initWithFrame:CGRectMake(70, 50, 220, 20)];
        [lblScheduledTime setTextColor:[UIColor grayColor]];
        [lblScheduledTime setBackgroundColor:[UIColor clearColor]];
        [lblScheduledTime setTextAlignment:NSTextAlignmentLeft];
        [lblScheduledTime setFont:[UIFont fontWithName:SinkinSansBoldFont size:10]];
        [self.contentView addSubview:lblScheduledTime];
        
        lblSentOn = [[UILabel alloc] initWithFrame:CGRectMake(70, 70, 220, 20)];
        [lblSentOn setTextColor:[UIColor grayColor]];
        [lblSentOn setBackgroundColor:[UIColor clearColor]];
        [lblSentOn setTextAlignment:NSTextAlignmentLeft];
        [lblSentOn setFont:[UIFont fontWithName:SinkinSansRegularFont size:10]];
//        [self.contentView addSubview:lblSentOn];
        
        btnAccept = [UIButton buttonWithType:UIButtonTypeSystem];
        [btnAccept setFrame:CGRectMake(70, 70, 80, 35)];
        [btnAccept setTitle:@"Accept" forState:UIControlStateNormal];
        [btnAccept setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        btnAccept.titleLabel.font = [UIFont fontWithName:SinkinSansBoldFont size:15];
        [btnAccept setBackgroundColor:[APP_DELEGATE colorWithHexString:yellow_color]];
        [self.contentView addSubview:btnAccept];
        
        btnReject = [UIButton buttonWithType:UIButtonTypeSystem];
        [btnReject setFrame:CGRectMake(160, 70, 80, 35)];
        [btnReject setTitle:@"Reject" forState:UIControlStateNormal];
        [btnReject setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        btnReject.titleLabel.font = [UIFont fontWithName:SinkinSansBoldFont size:15];
        [btnReject setBackgroundColor:[APP_DELEGATE colorWithHexString:yellow_color]];
        [self.contentView addSubview:btnReject];
        
        imgArrow = [[UIImageView alloc] initWithFrame:CGRectMake(295, 38, 12, 14)];
        [imgArrow setImage:[UIImage imageNamed:@"gray_arrow_right.png"]];
        [imgArrow setContentMode:UIViewContentModeScaleAspectFit];
        [self.contentView addSubview:imgArrow];
        
        
        lblLine = [[UILabel alloc] initWithFrame:CGRectMake(10, 89, 310, 0.5)];
        [lblLine setBackgroundColor:[APP_DELEGATE colorWithHexString:yellow_color]];
        [self.contentView addSubview:lblLine];
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
