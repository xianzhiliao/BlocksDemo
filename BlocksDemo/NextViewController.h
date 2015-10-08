//
//  NextViewController.h
//  BlocksDemo
//
//  Created by xianzhiliao on 15/10/8.
//  Copyright © 2015年 Putao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NextViewController : UIViewController

// blocks属性形式
typedef void (^ShouldUpdateToTitle)(NSString *newTitle);
@property (nonatomic,copy)ShouldUpdateToTitle shouldUpdateToTitle;
// blocks参数形式
- (void)shouldUpdateToTitle:(void (^)(NSString *newTitle))update;
@end
