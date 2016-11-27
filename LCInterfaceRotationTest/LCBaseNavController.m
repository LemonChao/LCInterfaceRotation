//
//  LCBaseNavController.m
//  LCInterfaceRotationTest
//
//  Created by Lemon on 16/11/27.
//  Copyright © 2016年 LemonChao. All rights reserved.
//

#import "LCBaseNavController.h"

@interface LCBaseNavController ()

@end

@implementation LCBaseNavController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationBar.barTintColor = [UIColor cyanColor];
    self.navigationBar.translucent = NO;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//self.topViewController是当前导航显示的UIViewController，这样就可以控制每个UIViewController所支持的方向啦！

-(BOOL)shouldAutorotate{
    
    return [self.topViewController shouldAutorotate];
    
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    
    return [self.topViewController supportedInterfaceOrientations];
    
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
