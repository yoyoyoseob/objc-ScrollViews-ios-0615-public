//
//  FISScrollViewTableViewCell.m
//  advanced-views-scrollviews
//
//  Created by Yoseob Lee on 7/22/15.
//  Copyright (c) 2015 Yoseob Lee. All rights reserved.
//

#import "FISScrollViewTableViewCell.h"
#import <Masonry/Masonry.h>

@implementation FISScrollViewTableViewCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self)
    {
        UIScrollView *scrollView = [[UIScrollView alloc]init];
        scrollView.backgroundColor = [UIColor whiteColor];
        scrollView.pagingEnabled = YES;
        [self addSubview:scrollView];
        
        [scrollView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(self);
        }];
        
        UIView *containerView = [[UIView alloc]init];
        containerView.backgroundColor = [UIColor blueColor];
        [scrollView addSubview:containerView];
        
        [containerView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(@0);
            make.height.equalTo(scrollView.mas_height);
            make.width.equalTo(scrollView.mas_width).multipliedBy(5);
        }];
        
        NSArray *imagesArray = @[ [UIImage imageNamed:@"0.jpg"],
                                  [UIImage imageNamed:@"1.jpg"],
                                  [UIImage imageNamed:@"2.jpg"],
                                  [UIImage imageNamed:@"3.jpg"],
                                  [UIImage imageNamed:@"4.jpg"] ];
        
        id leftSideConstraint = containerView.mas_left;
        for (UIImage *image in imagesArray)
        {
            UIImageView *imageView = [[UIImageView alloc]initWithImage:image];
            imageView.contentMode = UIViewContentModeScaleAspectFill;
            imageView.clipsToBounds = YES;
            [containerView addSubview:imageView];
            
            [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
                make.width.equalTo(scrollView);
                make.height.equalTo(containerView.mas_height);
                make.left.equalTo(leftSideConstraint);
            }];
            leftSideConstraint = imageView.mas_right;
        }
    }
    return self;
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

@end
