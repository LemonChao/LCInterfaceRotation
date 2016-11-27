//
//  LCLandscapeVC.m
//  LCInterfaceRotationTest
//
//  Created by Lemon on 16/11/27.
//  Copyright © 2016年 LemonChao. All rights reserved.
//

#import "LCLandscapeVC.h"

@interface LCLandscapeVC ()

@end

@implementation LCLandscapeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor cyanColor];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, self.view.bounds.size.width, 40)];
    label.text = @"Touch Back To Portrait";
    label.textColor = [UIColor blackColor];
    [self.view addSubview:label];


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self dismissViewControllerAnimated:YES completion:nil];
}

// 是否支持屏幕旋转
- (BOOL)shouldAutorotate {
    return YES;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskLandscape;
}


-(UIInterfaceOrientation)preferredInterfaceOrientationForPresentation {
    return UIInterfaceOrientationLandscapeRight;
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
