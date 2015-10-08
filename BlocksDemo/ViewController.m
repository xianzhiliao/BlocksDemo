//
//  ViewController.m
//  BlocksDemo
//
//  Created by xianzhiliao on 15/10/8.
//  Copyright © 2015年 Putao. All rights reserved.
//

#import "ViewController.h"
#import "NextViewController.h"
@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"A";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

- (void)dealloc
{
    NSLog(@"%@ dealloc",NSStringFromClass([self class]));
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    self.title = ((UIButton *)sender).currentTitle;
    NextViewController *vc = segue.destinationViewController;
    // 1.基于事件操作一般用blocks属性
    vc.shouldUpdateToTitle = ^(NSString *newTitle){
        self.title = newTitle;
    };
    
    // 2.程序自动执行一般以blocks参数的形式
//    [vc shouldUpdateToTitle:^(NSString *newTitle) {
//        self.title = newTitle;
//    }];
    

}

@end
