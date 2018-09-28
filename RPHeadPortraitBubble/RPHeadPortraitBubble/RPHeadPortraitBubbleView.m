//
//  RPHeadPortraitBubbleView.m
//  RPHeadPortraitBubble
//
//  Created by Tao on 2018/9/27.
//  Copyright © 2018年 Tao. All rights reserved.
//

#import "RPHeadPortraitBubbleView.h"
#import "UIView+Ext.h"

#define WTWeakSelf __weak typeof(self) weakSelf = self;
#define randomColor [UIColor colorWithRed:arc4random()%255/255.0 green:arc4random()%255/255.0 blue:arc4random()%255/255.0 alpha:1.0f]
#define WTWidth [UIScreen mainScreen].bounds.size.width
#define WTHeight [UIScreen mainScreen].bounds.size.height

@interface RPHeadPortraitBubbleView ()

@property (nonatomic, strong) UIImageView * activeImg;

@property (nonatomic, assign) int jsh_index;
@property (nonatomic, assign) int jsh_img;

@end

@implementation RPHeadPortraitBubbleView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        
        [self createUI];
    }
    return self;
}

- (void)createUI
{
    for (int i = 0; i<5; i++) {
        
        UIImageView * imgv = [[UIImageView alloc]initWithFrame:CGRectMake(WTWidth-80-40*i, 0, 50, 50)];
        imgv.tag = 10+i;
        imgv.centerY = self.height/2;
        imgv.layer.cornerRadius = 25;
        imgv.layer.masksToBounds = YES;
        imgv.layer.borderColor = [UIColor orangeColor].CGColor;
        imgv.layer.borderWidth = 3;
        imgv.backgroundColor = randomColor;
        [self addSubview:imgv];
        if (i == 0) {
            self.jsh_index = 0;
            self.activeImg = imgv;
        }
    }
}

- (void)setDataArr:(NSArray *)dataArr
{
    if (_dataArr != dataArr) {
        _dataArr = dataArr;
    }
    for (int i = 0; i<5; i++) {
        UIImageView * imgv = [self viewWithTag:10+i];
        imgv.image = [UIImage imageNamed:dataArr[i]];
    }
    self.jsh_img = 4;
    [self startAnimation];
}

- (void)startAnimation
{
    WTWeakSelf;
    [UIView animateWithDuration:1 animations:^{
        
        NSInteger activeTag = weakSelf.activeImg.tag;
        for (int i = 0; i<5; i++) {
            NSInteger aTag = 10+i;
            if (aTag != activeTag) {
                UIImageView * imgg = [weakSelf viewWithTag:10+i];
                imgg.centerX = imgg.centerX+40;
            }
        }
    } completion:^(BOOL finished) {
        
        weakSelf.activeImg.centerX = WTWidth-80-40*5;
        weakSelf.activeImg.transform = CGAffineTransformScale(weakSelf.activeImg.transform, 0.1, 0.1);
        if (weakSelf.jsh_img<weakSelf.dataArr.count-1) {
            weakSelf.jsh_img = weakSelf.jsh_img+1;
        }else{
            weakSelf.jsh_img = 0;
        }
        weakSelf.activeImg.image = [UIImage imageNamed:weakSelf.dataArr[weakSelf.jsh_img]];
        
        [UIView animateWithDuration:1 animations:^{
            weakSelf.activeImg.transform = CGAffineTransformScale(weakSelf.activeImg.transform, 10, 10);
        } completion:^(BOOL finished) {
            
            [weakSelf bringSubviewToFront:weakSelf.activeImg];
            [UIView animateWithDuration:1 animations:^{
                weakSelf.activeImg.X = WTWidth-80-40*4;
            } completion:^(BOOL finished) {
                weakSelf.jsh_index = weakSelf.jsh_index+1;
                if (weakSelf.jsh_index >4) {
                    weakSelf.jsh_index = 0;
                }
                weakSelf.activeImg = [weakSelf viewWithTag:10+weakSelf.jsh_index];
                [weakSelf startAnimation];
            }];
        }];
    }];
}

@end

//示例图片来自网络,如有不妥,请联系
