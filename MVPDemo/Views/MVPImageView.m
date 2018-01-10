//
//  MVPImageView.m
//  MVPDemo
//
//  Created by Later on 2018/1/10.
//  Copyright © 2018年 Later. All rights reserved.
//

#import "MVPImageView.h"

@interface MVPImageView()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) IBOutlet MVPImageView *contentView;

@end
@implementation MVPImageView

- (void)awakeFromNib {
    [super awakeFromNib];
    [[NSBundle mainBundle] loadNibNamed:@"MVPImageView" owner:self options:nil];
    self.contentView.frame = self.bounds;
    [self addSubview:self.contentView];
}

#pragma mark MVPMianPresenterProtocol
// 执行协议方法，处理 Presenter 逻辑回调
- (void)setImage:(UIImage *)image {
    self.imageView.image = image;
}
@end
