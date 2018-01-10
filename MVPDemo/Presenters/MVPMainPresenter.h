//
//  MainPresenter.h
//  MVPDemo
//
//  Created by Later on 2018/1/10.
//  Copyright © 2018年 Later. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class MVPImageModel;

@protocol MVPMianPresenterProtocol
- (void)setImage:(UIImage *)image;
@end
@interface MVPMainPresenter : NSObject
// 弱持有满足 Protocol 的View 和 ViewController
@property (weak, nonatomic) UIView <MVPMianPresenterProtocol>  *view;
@property (weak, nonatomic) UIViewController *viewController;

// 处理逻辑（内部通过 Protocol 回调相关执行）
- (void)presentWithModel:(MVPImageModel *)model;
- (void)present;
@end
