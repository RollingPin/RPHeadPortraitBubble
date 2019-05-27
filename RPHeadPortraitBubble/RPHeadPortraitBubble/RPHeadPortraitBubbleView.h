//
//  RPHeadPortraitBubbleView.h
//  RPHeadPortraitBubble
//
//  Created by Tao on 2018/9/27.
//  Copyright © 2018年 Tao. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface RPHeadPortraitBubbleView : UIView

//下面两个数据源只能取其中一个

//@property (nonatomic, strong) NSArray * dataArr;

@property (nonatomic, strong) NSArray * dataArr_loc; //加载本地图片

@property (nonatomic, strong) NSArray * dataArr_net; //加载网络图片地址;



@end

NS_ASSUME_NONNULL_END
