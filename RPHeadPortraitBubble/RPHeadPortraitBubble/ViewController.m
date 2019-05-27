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
    
    NSArray * imgArr_loc = [NSArray arrayWithObjects:@"rpImg_00.jpg",@"rpImg_01.jpg",@"rpImg_02.jpg",@"rpImg_03.jpg",@"rpImg_04.jpg",@"rpImg_05.jpg",@"rpImg_06.jpg",@"rpImg_07.jpg",@"rpImg_08.jpg",@"rpImg_09.jpg", nil];
    
    NSArray * imgArr_net = [NSArray arrayWithObjects:@"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1558968153303&di=433aff77fff2d65db316842fc8cf771c&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201301%2F11%2F20130111200721_h4Ba2.thumb.700_0.jpeg",@"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1558968175242&di=fa1b55d6bbe1af6eed1515771cfea239&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201407%2F02%2F20140702203112_BGFPv.thumb.700_0.jpeg",@"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1558968192561&di=54a5fb80b78f50fcaccf410ea67292ae&imgtype=0&src=http%3A%2F%2Fimg3.duitang.com%2Fuploads%2Fitem%2F201212%2F27%2F20121227182413_LfdWX.thumb.700_0.jpeg",@"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1558968228315&di=d2189052a1495669f9f370bc603fa65d&imgtype=0&src=http%3A%2F%2Fimg4.duitang.com%2Fuploads%2Fitem%2F201301%2F20%2F20130120111214_KsCuf.thumb.700_0.jpeg",@"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1558968223064&di=ad971f70174e6464a618683dd0fd2049&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201212%2F24%2F20121224182211_TjGem.jpeg",@"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1559562936&di=04581e8d1016f9f17b6ac5d3d55bbe0b&imgtype=jpg&er=1&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201212%2F24%2F20121224182143_FZnuP.thumb.700_0.jpeg",@"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1558968207021&di=53b1614593adfc0acc1239ba641277d6&imgtype=0&src=http%3A%2F%2Fimg.duoziwang.com%2F2016%2F10%2F05%2F2025006696.jpg",@"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1558968268346&di=9d181068f67d6ee69b3ad337220010a3&imgtype=0&src=http%3A%2F%2Fimg4.duitang.com%2Fuploads%2Fitem%2F201508%2F26%2F20150826132506_caUGR.thumb.224_0.jpeg", nil];
    
    RPHeadPortraitBubbleView * bubbleView = [[RPHeadPortraitBubbleView alloc]initWithFrame:CGRectMake(0, 200, self.view.frame.size.width, 300)];
    bubbleView.dataArr_net = imgArr_net;
//    bubbleView.dataArr_loc = imgArr_loc;
    [self.view addSubview:bubbleView];

}


@end
