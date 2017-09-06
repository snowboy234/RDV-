//
//  NaviViewController.m
//  RDVTabBarController的使用
//
//  Created by 田伟 on 2017/9/6.
//  Copyright © 2017年 田伟. All rights reserved.
//

#import "NaviViewController.h"

@interface NaviViewController ()<UIGestureRecognizerDelegate>

@end

@implementation NaviViewController

+ (void)load{
    // 拿到所有使用当前类作为导航栏的外观
    UINavigationBar * navBar = [UINavigationBar appearanceWhenContainedIn:self, nil];
    // ios9.0 以后使用
//    UINavigationBar * navBar = [UINavigationBar appearanceWhenContainedInInstancesOfClasses:@[[UINavigationBar class]]];
    // 设置导航栏上文字的大小
    NSMutableDictionary * dict = [NSMutableDictionary dictionary];
    dict[NSFontAttributeName] = [UIFont boldSystemFontOfSize:50];
    dict[NSForegroundColorAttributeName] = [UIColor cyanColor];
    [navBar setTitleTextAttributes:dict];
    navBar.barTintColor = [UIColor orangeColor];
}

//// ⭐️拦截导航栏的Push操作——会导致自带手势失效
//- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
//    if (self.childViewControllers.count > 0) {
//        // 1统一设置返回按钮修改样式
//        UIButton * backButton = [UIButton buttonWithType:UIButtonTypeCustom];
//        [backButton setImage:[UIImage imageNamed:@"back"] forState:UIControlStateNormal];
//        backButton.frame = CGRectMake(0, 0, 44, 44);
//        [backButton setContentEdgeInsets:UIEdgeInsetsMake(0, -30, 0, 0)];
//        [backButton addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
//        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:backButton];
//    }
//    // 真正在跳转
//    [super pushViewController:viewController animated:animated];
//}
//
//- (void)back{
//    [self popViewControllerAnimated:YES];
//}
//
//
//- (void)viewDidLoad {
//    [super viewDidLoad];
//    
//    // 修复手势
//    UIPanGestureRecognizer * pan = [[UIPanGestureRecognizer alloc]initWithTarget:self.interactivePopGestureRecognizer.delegate action:@selector(handleNavigationTransition:)];
//    // 控制手势什么时候触发
//    pan.delegate = self;
//    [self.view addGestureRecognizer:pan];
//    
//    // 禁用掉之前的边缘滑动的手势
//    self.interactivePopGestureRecognizer.enabled = NO;
//    
//}
//
//#pragma mark -- UIGestureRecognizerDelegate
//// 用来觉得是否触发这个手势，返回NO，永远不会触发
//- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch{
//    // 只有在非根控制器下才需要触发，根控制器下不需要触发
//    return self.childViewControllers.count > 1;
//}


@end
