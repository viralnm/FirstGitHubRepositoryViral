//
//  DatingRequestCell.h
//  LOV
//
//  Created by Oneclick IT Solution on 12/28/15.
//  Copyright © 2015 One Click IT Consultancy Pvt Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AsyncImageView.h"

@interface DatingRequestCell : UITableViewCell
{

}

@property(nonatomic,strong)UILabel * lblName;
@property(nonatomic,strong)UILabel * lblLine;
@property(nonatomic,strong)UILabel * lblSentOn;
@property(nonatomic,strong)UILabel * lblScheduledDate;
@property(nonatomic,strong)UILabel * lblScheduledTime;

@property(nonatomic,strong)UIButton * btnAccept;
@property(nonatomic,strong)UIButton * btnReject;

@property(nonatomic,strong)AsyncImageView * imgProfile;

@property(nonatomic,strong)UIImageView * imgArrow;

@end
