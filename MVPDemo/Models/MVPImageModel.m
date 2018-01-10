//
//  MVPImageModel.m
//  MVPDemo
//
//  Created by Later on 2018/1/10.
//  Copyright © 2018年 Later. All rights reserved.
//

#import "MVPImageModel.h"

@implementation MVPImageModel
- (instancetype)init {
    if (self = [super init]) {
        self.image = [UIImage imageNamed:@"image"];
    }
    return self;
}
@end
