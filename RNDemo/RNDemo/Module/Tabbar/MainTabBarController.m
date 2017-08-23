//
//  MainTabBarController.m
//  LoveFreshBeen_OC
//
//  Created by 江科 on 16/3/1.
//  Copyright © 2016年 江科. All rights reserved.
//

#import "MainTabBarController.h"
#import "ViewController.h"
#import "TwoViewController.h"
#import "ThreeViewController.h"
#import "FourViewController.h"
#import "BaseNavigationController.h"
//#import "FreshReservationController.h"
//#import "UserShopCarTool.h"
@interface MainTabBarController ()

@end

@implementation MainTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
//    [self addNotification];
//    [self buildMainTabbarController];
    [self createViewControllers];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(void)createViewControllers
{
    NSArray *namesArray = @[@"ViewController",@"TwoViewController",@"ThreeViewController",@"FourViewController"];
    
    NSArray *titleArray = @[@"主页",@"动态",@"位置",@"设置"];
    NSArray *imageArray = @[@"tab_0",@"tab_1",@"tab_2",@"tab_3"];
    NSArray *sImageArray = @[@"tab_c0",@"tab_c1",@"tab_c2",@"tab_c3"];
    
    for (int i = 0; i < [namesArray count]; i++) {
        //字符串转化为类
        Class cls = NSClassFromString(namesArray[i]);
        UIViewController *vc = [[cls alloc]init];
        UINavigationController *nc = [[UINavigationController alloc]initWithRootViewController:vc];
        
        
        UIImage *image1  =[UIImage imageNamed:imageArray[i]];
        UIImage *image2 = [[UIImage imageNamed:sImageArray[i]]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        
        nc.tabBarItem = [[UITabBarItem alloc]initWithTitle:titleArray[i] image:image1 selectedImage:image2];
        
        if (i == 0) {
            
            [nc.tabBarItem setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor redColor], NSForegroundColorAttributeName,nil] forState:UIControlStateSelected];
        }
        
        [self addChildViewController:nc];
    }
}


- (void)buildMainTabbarController {
    [self setupChildViewController:@"首页" viewController:[ViewController new] image:@"Home_unselected" selectedImage:@"Home_selected@2x"];
    [self setupChildViewController:@"闪电超市" viewController:[TwoViewController new] image:@"Message_normal" selectedImage:@"Message_selected"];
    [self setupChildViewController:@"购物车" viewController:[ThreeViewController new] image:@"Show_normal" selectedImage:@""];
    [self setupChildViewController:@"" viewController:[FourViewController new] image:@"Square_normal" selectedImage:@"Square_selected"];
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

//- (void)addNotification{
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(shopCarBuyNumberChanged) name:LFBShopCarBuyNumberDidChangeNotification object:nil];
//}
//- (void)shopCarBuyNumberChanged {
//    UIViewController *controller = self.childViewControllers[2];
//    UITabBarItem *item = controller.tabBarItem;
//    NSInteger goodsNumer = [[UserShopCarTool sharedInstance] getShopCarGoodsNumber];
//    if (goodsNumer == 0) {
//        item.badgeValue = nil;
//        return;
//    }
//    item.badgeValue = [NSString stringWithFormat:@"%ld",goodsNumer];
//    
//}
- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}
@end
