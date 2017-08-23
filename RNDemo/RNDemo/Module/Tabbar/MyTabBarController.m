//
//  MyTabBarController.m
//  TestTabbarAndNavibar
//
//  Created by LIUYONG on 12/28/15.
//  Copyright © 2015 WanJianTechnology. All rights reserved.
//
#import "ViewController.h"
#import "TwoViewController.h"
#import "ThreeViewController.h"
#import "FourViewController.h"
#import "MyTabBarController.h"
#import "BaseNavigationController.h"
@interface MyTabBarController ()

@end

@implementation MyTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self createViewControllers];
}

-(void)createViewControllers
{
    NSArray *namesArray = @[@"ViewController",@"TwoViewController",@"ThreeViewController",@"FourViewController"];
    
//    NSArray *titleArray = @[@"主页",@"动态",@"位置",@"设置"];
    NSArray *imageArray = @[@"3.7.8shouye",@"3.7.8qingdan",@"3.8.3shenghuo",@"3.7.8wode"];
    NSArray *sImageArray = @[@"3.7.8shouye-up",@"3.7.8qingdan-up",@"3.8.3shenghuo-up",@"3.7.8wode-up"];
    
    for (int i = 0; i < [namesArray count]; i++) {
        //字符串转化为类
        Class cls = NSClassFromString(namesArray[i]);
        UIViewController *vc = [[cls alloc]init];
        BaseNavigationController *nc = [[BaseNavigationController alloc]initWithRootViewController:vc];
        
        
        UIImage *image1  =[UIImage imageNamed:imageArray[i]];
        UIImage *image2 = [[UIImage imageNamed:sImageArray[i]]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        
        nc.tabBarItem = [[UITabBarItem alloc]initWithTitle:nil image:image1 selectedImage:image2];
        
        nc.tabBarItem.imageInsets = UIEdgeInsetsMake(8, 0, -8, 0);
        if (i == 0) {
            
            [nc.tabBarItem setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor redColor], NSForegroundColorAttributeName,nil] forState:UIControlStateSelected];
        }
        
        [self addChildViewController:nc];
    }
}


- (void)setupChildViewController:(NSString *)title viewController:(UIViewController *)controller image:(NSString *)image selectedImage:(NSString *)selectedImage {
    UITabBarItem *item = [[UITabBarItem alloc]init];
    item.image = [UIImage imageNamed:image];
    item.selectedImage = [UIImage imageNamed:selectedImage];;
    item.title = title;
    controller.tabBarItem = item;
    BaseNavigationController *navController = [[BaseNavigationController alloc]initWithRootViewController:controller];
    [self addChildViewController:navController];
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
