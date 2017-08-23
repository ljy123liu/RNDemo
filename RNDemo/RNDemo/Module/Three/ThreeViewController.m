//
//  ThreeViewController.m
//  TestTabbarAndNavibar
//
//  Created by LIUYONG on 12/28/15.
//  Copyright © 2015 WanJianTechnology. All rights reserved.
//

#import "ThreeViewController.h"

@interface ThreeViewController ()

@end

@implementation ThreeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 100, 44)];
    button.backgroundColor = [UIColor blueColor];
    UIBarButtonItem *leftButton = [[UIBarButtonItem alloc]initWithCustomView:button];
    self.navigationController.navigationItem.leftBarButtonItem = leftButton;
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(changeTitle) name:@"test" object:nil];
    
}

- (void)changeTitle {
    NSLog(@"123");
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
