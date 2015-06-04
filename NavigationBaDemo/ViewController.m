//
//  ViewController.m
//  NavigationBaDemo
//
//  Created by 植梧培 on 15/6/4.
//  Copyright (c) 2015年 机智的新手( http://zhiwupei.sinaapp.com ). All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UINavigationControllerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.delegate = self;
}


#warning 注册这里是 willShowViewController 不是didShow
- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated {
    if ([viewController isKindOfClass:[self class]]) {
        [navigationController setNavigationBarHidden:YES animated:YES];
    }else {
        [navigationController setNavigationBarHidden:NO animated:YES];
    }
}


@end
