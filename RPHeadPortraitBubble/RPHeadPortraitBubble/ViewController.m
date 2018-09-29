//
//  ViewController.m
//  RPHeadPortraitBubble
//
//  Created by Tao on 2018/9/27.
//  Copyright © 2018年 Tao. All rights reserved.
//

#import "ViewController.h"
#import "RPHeadPortraitBubbleView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    NSArray * imgArr = [NSArray arrayWithObjects:@"rpImg_00.jpg",@"rpImg_01.jpg",@"rpImg_02.jpg",@"rpImg_03.jpg",@"rpImg_04.jpg",@"rpImg_05.jpg",@"rpImg_06.jpg",@"rpImg_07.jpg",@"rpImg_08.jpg",@"rpImg_09.jpg", nil];
    
    RPHeadPortraitBubbleView * bubbleView = [[RPHeadPortraitBubbleView alloc]initWithFrame:CGRectMake(0, 200, self.view.frame.size.width, 300)];
    bubbleView.dataArr = imgArr;
    [self.view addSubview:bubbleView];

}


@end
