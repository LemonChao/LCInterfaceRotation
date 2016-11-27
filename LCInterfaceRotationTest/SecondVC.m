//
//  SecondVC.m
//  LCInterfaceRotationTest
//
//  Created by Lemon on 16/11/27.
//  Copyright © 2016年 LemonChao. All rights reserved.
//

#import "SecondVC.h"

#import "LCLandscapeVC.h"

@interface SecondVC ()

@end

@implementation SecondVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];
    // Do any additional setup after loading the view
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(100, 300, self.view.bounds.size.width, 40)];
    label.text = @"Touch Into Landscape";
    label.textColor = [UIColor blackColor];
    [self.view addSubview:label];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    LCLandscapeVC *landVC = [[LCLandscapeVC alloc] init];
    [self presentViewController:landVC animated:YES completion:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
