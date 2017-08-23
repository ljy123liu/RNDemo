//
//  TwoViewController.m
//  TestTabbarAndNavibar
//
//  Created by LIUYONG on 12/28/15.
//  Copyright © 2015 WanJianTechnology. All rights reserved.
//

#import "TwoViewController.h"
#import "AppDelegate.h"

@interface TwoViewController ()

@end

@implementation TwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor blueColor];
//    self.title = @"vc2";
//    UIWindow *myWindow = [UIApplication sharedApplication].keyWindow;
//    AppDelegate *app = (AppDelegate *)[UIApplication sharedApplication].delegate;
//    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
//    view.backgroundColor = [UIColor redColor];
//    [app.window addSubview:view];
//    [MBProgressHUD showHUDAddedTo:app.window animated:YES];
    UISlider *slider = [[UISlider alloc]initWithFrame:CGRectMake(50, 300, 200, 20)];
    [self.view addSubview:slider];
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        [MBProgressHUD hideHUDForView:app.window animated:YES];
//    });
    
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    button.backgroundColor = [UIColor purpleColor];
    [self.view addSubview:button];
    [button addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
}

- (void)click {
    AppDelegate *app = (AppDelegate *)[UIApplication sharedApplication].delegate;
//    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(300, 100, 100, 100)];
//    view.backgroundColor = [UIColor redColor];
////    [app.window addSubview:view];
//    
////    [MBProgressHUD showHUDAddedTo:app.window animated:YES];
//    [MBProgressHUD showHUDAddedTo:self.view animated:YES];
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
////        [MBProgressHUD hideHUDForView:app.window animated:YES];
//        [MBProgressHUD hideHUDForView:self.view animated:YES];
//    });
    
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
