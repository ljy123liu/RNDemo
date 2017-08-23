//
//  FourViewController.m
//  TestTabbarAndNavibar
//
//  Created by LIUYONG on 12/28/15.
//  Copyright © 2015 WanJianTechnology. All rights reserved.
//

#import "FourViewController.h"

@interface FourViewController ()

@end

@implementation FourViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor greenColor];
//    self.title = @"vc4";
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(changeTitle) name:@"test" object:nil];
}

- (void)changeTitle {
    NSLog(@"999");
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
