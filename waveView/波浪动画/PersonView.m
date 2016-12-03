//
//  PersonView.m
//  波浪动画
//
//  Created by 韩志峰 on 2016/12/3.
//  Copyright © 2016年 韩志峰. All rights reserved.
//

#import "PersonView.h"

@implementation PersonView

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self setupSubViews];
    }
    return self;
}
- (void)setupSubViews{
    //UIBezierPath绘制路径，CAShapeLayer设置绘图的各种属性
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:self.bounds.origin];
    [path addLineToPoint:CGPointMake(CGRectGetWidth(self.bounds), CGRectGetHeight(self.bounds))];
    [path addLineToPoint:CGPointMake(CGRectGetWidth(self.bounds),self.bounds.origin.y)];
    [path addLineToPoint:self.bounds.origin];
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];

    shapeLayer.strokeColor = [UIColor redColor].CGColor;
    shapeLayer.fillColor = [UIColor grayColor].CGColor;
    shapeLayer.lineWidth = 3;
    shapeLayer.lineJoin = kCALineJoinRound;
    shapeLayer.lineCap = kCALineCapButt;
    shapeLayer.path = path.CGPath;
    [self.layer addSublayer:shapeLayer];
}
@end
