//
//  NextViewController.m
//  BlocksDemo
//
//  Created by xianzhiliao on 15/10/8.
//  Copyright © 2015年 Putao. All rights reserved.
//

#import "NextViewController.h"

@interface NextViewController ()

@end

@implementation NextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

- (void)dealloc
{
    NSLog(@"%@ dealloc",NSStringFromClass([self class]));
}

- (IBAction)touchAction:(UIButton *)sender {
    if (_shouldUpdateToTitle) {
        _shouldUpdateToTitle(sender.currentTitle);
        [self.navigationController popViewControllerAnimated:YES];
    }
    
    
}

- (void)shouldUpdateToTitle:(void (^)(NSString *newTitle))update
{
    if (update) {
        update(@"B");
    }
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
