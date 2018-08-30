//
//  PBMineController.m
//  PBMine
//
//  Created by DaMaiIOS on 17/9/16.
//  Copyright © 2017年 DaMaiIOS. All rights reserved.
//

#import "PBMineController.h"


@interface PBMineController ()

@end

@implementation PBMineController

- (void)viewDidLoad {
    [super viewDidLoad];

    //imageView
    UIImageView *imageView = [[UIImageView alloc]init];
    [self.view addSubview:imageView];
    imageView.frame = CGRectMake(([UIScreen mainScreen].bounds.size.width-20)/2.0, 200, 20, 20);
    imageView.image = [UIImage imageNamed:@"Resource.bundle/pbmine_circle"];
    
    //YYLabel
    YYLabel *lab = [[YYLabel alloc]init];
    [self.view addSubview:lab];
    lab.frame = CGRectMake(20, 250, [UIScreen mainScreen].bounds.size.width-40, 20);
    lab.font = [UIFont systemFontOfSize:15];
    lab.textAlignment = NSTextAlignmentCenter;
    lab.text = @"点我,测试拉拉啊--";
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapClick:)];
    [self.view addGestureRecognizer:tap];
    
    
    
    
}

-(void)tapClick:(UITapGestureRecognizer *)tap {
    
    {
        PBList *list = [[PBList alloc]init];
        list.summaryText = @"我是来自PBHome Bundle的模型!";
        list.cellHeight = 100;
        NSLog(@"%@", list.summaryText);
    }
    
    
    
//    PBListController *vc = [[PBListController alloc]init];
//    vc.hidesBottomBarWhenPushed = YES;
//
//    vc.title = @"哈哈";
//
//    [self.navigationController pushViewController:vc animated:YES];
//    vc.view.backgroundColor = [UIColor whiteColor];
    
    
    

    
    
//    Class class = NSClassFromString(PAGE_HOME_LIST);
//    UIViewController *vc = [[class alloc]init];
//    vc.hidesBottomBarWhenPushed = YES;
//
//    //[vc setValue:@"world" forKey:@"desc"];
//
//    if ([vc respondsToSelector:@selector(reciveData:)]) {
//        [vc performSelector:@selector(reciveData:) withObject:@{@"xxx":@"world"}];
//    }
//
//    vc.title = @"哈哈";
//
//    [self.navigationController pushViewController:vc animated:YES];
//    vc.view.backgroundColor = [UIColor whiteColor];
    
    
    [PBRouter routerWithGoPageName:PAGE_HOME_LIST andParas:@{@"xxx":@"world"}];
    //[PBRouter routerWithGoPageName:@"xx" andParas:@{@"xxx":@"world"}];
}




@end
