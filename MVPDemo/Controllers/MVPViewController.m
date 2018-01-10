//
//  ViewController.m
//  MVPDemo
//
//  Created by Later on 2018/1/10.
//  Copyright © 2018年 Later. All rights reserved.
//

#import "MVPViewController.h"
#import "MVPMainPresenter.h"
#import "MVPImageView.h"


@interface MVPViewController ()
@property (weak, nonatomic) IBOutlet MVPImageView *imageView;
// 持有 Presenter
@property(nonatomic) MVPMainPresenter *presenter;
@end

@implementation MVPViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.presenter = [[MVPMainPresenter alloc] init];
    self.presenter.viewController = self;
    self.presenter.view = self.imageView;
}
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.presenter present];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
