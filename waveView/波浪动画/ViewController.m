//
//  ViewController.m
//  波浪动画
//
//  Created by 韩志峰 on 2016/12/3.
//  Copyright © 2016年 韩志峰. All rights reserved.
//

#import "ViewController.h"
#import "HZWaveLoadingView.h"
@interface ViewController ()
@property (nonatomic, strong) HZWaveLoadingView  *loadingView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    _loadingView = [HZWaveLoadingView loadingView];
    [self.view addSubview:_loadingView];
    _loadingView.center = self.view.center;
dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
    [_loadingView statLoading];
});
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
