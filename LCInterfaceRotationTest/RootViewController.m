//
//  RootViewController.m
//  LCInterfaceRotationTest
//
//  Created by Lemon on 16/11/27.
//  Copyright © 2016年 LemonChao. All rights reserved.
//

#import "RootViewController.h"

#import "ViewController.h"
#import "SecondVC.h"
#import "LCBaseNavController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    ViewController *viewC = [[ViewController alloc] init];
    SecondVC *senVC = [[SecondVC alloc] init];
    
    LCBaseNavController *nav1 = [[LCBaseNavController alloc] initWithRootViewController:viewC];
    nav1.title = @"首页";
    LCBaseNavController *nav2 = [[LCBaseNavController alloc] initWithRootViewController:senVC];
    nav2.title = @"个人中心";
    self.viewControllers = @[nav1, nav2];
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark 转屏方法重写
//返回支持的方向 
-(UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    return [self.viewControllers.firstObject supportedInterfaceOrientations];
}
//是否自动旋转,返回YES可以自动旋转
-(BOOL)shouldAutorotate{
    return self.viewControllers.firstObject.shouldAutorotate;
}

@end
