//
//  MainPresenter.m
//  MVPDemo
//
//  Created by Later on 2018/1/10.
//  Copyright © 2018年 Later. All rights reserved.
//

#import "MVPMainPresenter.h"
#import "MVPImageModel.h"

@interface MVPMainPresenter()
@property (strong, nonatomic) MVPImageModel *imageModel;
@end
@implementation MVPMainPresenter
- (instancetype)init {
    if (self = [super init]) {
        self.imageModel = [[MVPImageModel alloc] init];
    }
    return self;
}
- (void)presentWithModel:(MVPImageModel *)model {
    self.imageModel = model;
    [self present];
}
- (void)present {
    [self.view setImage:self.imageModel.image];
}
@end
