//
//  BaseAnimationViewController.m
//  CAAnimation
//
//  Created by YangY on 2017/2/9.
//  Copyright © 2017年 yangyang. All rights reserved.
//

#import "BaseAnimationViewController.h"
#define kScreen_Width               [UIScreen mainScreen].bounds.size.width
#define kScreen_Height              [UIScreen mainScreen].bounds.size.height

#define k_width                     (kScreen_Width-160)/3
#define k_height                    (kScreen_Width-160)/3

#define k_x(k)                  40+(k_width+40)*(k-1)
#define k_y(k)                  40+(k_width+40)*(k-1)+64
@interface BaseAnimationViewController ()

@end

@implementation BaseAnimationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
#pragma mark-----------沿着x轴旋转
    UIView * view = [[UIView alloc] initWithFrame:CGRectMake(k_x(1), k_y(1), k_width, k_height)];
    view.backgroundColor = [UIColor purpleColor ];
    [self.view addSubview:view];

    CABasicAnimation * a1 = [CABasicAnimation animationWithKeyPath:@"transform.rotation.x"];
    a1.beginTime = 0.0;
    a1.toValue = @(2 * M_PI);
    a1.duration = 2.0;
    a1.repeatCount = MAXFLOAT;
    [view.layer addAnimation:a1 forKey:@"a1"];
    
#pragma mark-----------沿着y轴旋转
    UIView * view1 = [[UIView alloc] initWithFrame:CGRectMake(k_x(2), k_y(1), k_width, k_height)];
    view1.backgroundColor = [UIColor purpleColor ];
    [self.view addSubview:view1];
    
    CABasicAnimation * a2 = [CABasicAnimation animationWithKeyPath:@"transform.rotation.y"];
    a2.beginTime = 0.0;
    a2.toValue = @(2 * M_PI);
    a2.duration = 2.0;
    a2.repeatCount = MAXFLOAT;
    [view1.layer addAnimation:a2 forKey:@"a2"];
    
#pragma mark-----------沿着z轴旋转
    UIView * view2 = [[UIView alloc] initWithFrame:CGRectMake(k_x(3), k_y(1), k_width, k_height)];
    view2.backgroundColor = [UIColor purpleColor ];
    [self.view addSubview:view2];
    
    CABasicAnimation * a3 = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    a3.beginTime = 0.0;
    a3.toValue = @(2 * M_PI);
    a3.duration = 2.0;
    a3.repeatCount = MAXFLOAT;
    [view2.layer addAnimation:a3 forKey:@"a3"];
    
#pragma mark-----------移动
    UIView * view3 = [[UIView alloc] initWithFrame:CGRectMake(k_x(1), k_y(2), k_width, k_height)];
    view3.backgroundColor = [UIColor purpleColor ];
    [self.view addSubview:view3];
    
    CABasicAnimation * a4 = [CABasicAnimation animationWithKeyPath:@"position"];
    a4.beginTime = 0.0;
    a4.fromValue = [NSValue valueWithCGPoint:CGPointMake(k_x(1)+k_width/2, k_y(2)+k_width/2)];
    a4.toValue = [NSValue valueWithCGPoint:CGPointMake(k_x(3)+k_width/2, k_y(2)+k_width/2)];
    a4.duration = 2.0;
    a4.autoreverses = true;
    a4.repeatCount = MAXFLOAT;
    [view3.layer addAnimation:a4 forKey:@"a4"];

#pragma mark-----------背景颜色
    UIView * view4 = [[UIView alloc] initWithFrame:CGRectMake(k_x(1), k_y(3), k_width, k_height)];
    view4.backgroundColor = [UIColor purpleColor ];
    [self.view addSubview:view4];
    
    CABasicAnimation * a5 = [CABasicAnimation animationWithKeyPath:@"backgroundColor"];
    a5.beginTime = 0.0;
    a5.fromValue = (__bridge id _Nullable)([UIColor purpleColor].CGColor);
    a5.toValue = (__bridge id _Nullable)([UIColor greenColor].CGColor);
    a5.duration = 2.0;
    a5.autoreverses = YES;
    a5.repeatCount = MAXFLOAT;
    [view4.layer addAnimation:a5 forKey:@"a5"];
    
#pragma mark-----------内容
    UIImageView * view5 = [[UIImageView alloc] initWithFrame:CGRectMake(k_x(2), k_y(3), k_width, k_height)];
    view5.backgroundColor = [UIColor purpleColor ];
    view5.image = [UIImage imageNamed:@"1.png"];
    [self.view addSubview:view5];
    
    CABasicAnimation * a6 = [CABasicAnimation animationWithKeyPath:@"contents"];
    a6.beginTime = 0.0;
    a6.toValue = (__bridge id _Nullable)([UIImage imageNamed:@"2.png"].CGImage);
    a6.duration = 2.0;
    a6.autoreverses = YES;
    a6.repeatCount = MAXFLOAT;
    [view5.layer addAnimation:a6 forKey:@"a6"];
    
#pragma mark-----------圆角
    UIView * view6 = [[UIView alloc] initWithFrame:CGRectMake(k_x(3), k_y(3), k_width, k_height)];
    view6.backgroundColor = [UIColor purpleColor ];
    [self.view addSubview:view6];
    
    CABasicAnimation * a7 = [CABasicAnimation animationWithKeyPath:@"cornerRadius"];
    a7.beginTime = 0.0;
    a7.fromValue = @(0);
    a7.toValue = @(k_width/2);
    a7.duration = 2.0;
    a7.autoreverses = YES;
    a7.repeatCount = MAXFLOAT;
    [view6.layer addAnimation:a7 forKey:@"a7"];

#pragma mark-----------比例
    UIView * view7 = [[UIView alloc] initWithFrame:CGRectMake(k_x(1), k_y(4), k_width, k_height)];
    view7.backgroundColor = [UIColor purpleColor ];
    [self.view addSubview:view7];
    
    CABasicAnimation * a8 = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
    a8.beginTime = 0.0;
    a8.fromValue = @(0.3);
    a8.toValue = @(1.3);
    a8.duration = 2.0;
    a8.autoreverses = YES;
    a8.repeatCount = MAXFLOAT;
    [view7.layer addAnimation:a8 forKey:@"a8"];
    
#pragma mark-----------x轴比例
    UIView * view8 = [[UIView alloc] initWithFrame:CGRectMake(k_x(2), k_y(4), k_width, k_height)];
    view8.backgroundColor = [UIColor purpleColor ];
    [self.view addSubview:view8];
    
    CABasicAnimation * a9 = [CABasicAnimation animationWithKeyPath:@"transform.scale.x"];
    a9.beginTime = 0.0;
    a9.fromValue = @(0.3);
    a9.toValue = @(1.3);
    a9.duration = 2.0;
    a9.autoreverses = YES;
    a9.repeatCount = MAXFLOAT;
    [view8.layer addAnimation:a9 forKey:@"a9"];
    
#pragma mark-----------y轴比例
    UIView * view9 = [[UIView alloc] initWithFrame:CGRectMake(k_x(3), k_y(4), k_width, k_height)];
    view9.backgroundColor = [UIColor purpleColor ];
    [self.view addSubview:view9];
    
    CABasicAnimation * a10 = [CABasicAnimation animationWithKeyPath:@"transform.scale.y"];
    a10.beginTime = 0.0;
    a10.fromValue = @(0.3);
    a10.toValue = @(1.3);
    a10.duration = 2.0;
    a10.autoreverses = YES;
    a10.repeatCount = MAXFLOAT;
    [view9.layer addAnimation:a10 forKey:@"a10"];
    
#pragma mark-----------指定大小
    UIView * view10 = [[UIView alloc] initWithFrame:CGRectMake(k_x(1), k_y(5), k_width, k_height)];
    view10.backgroundColor = [UIColor purpleColor ];
    [self.view addSubview:view10];
    
    CABasicAnimation * a11 = [CABasicAnimation animationWithKeyPath:@"bounds"];
    a11.beginTime = 0.0;
    a11.toValue = [NSValue valueWithCGRect:CGRectMake(k_x(1), k_y(5), 20, 20)];
    a11.duration = 2.0;
    a11.autoreverses = YES;
    a11.repeatCount = MAXFLOAT;
    [view10.layer addAnimation:a11 forKey:@"a11"];
    
#pragma mark-----------透明度
    UIView * view11 = [[UIView alloc] initWithFrame:CGRectMake(k_x(2), k_y(5), k_width, k_height)];
    view11.backgroundColor = [UIColor purpleColor ];
    [self.view addSubview:view11];
    
    CABasicAnimation * a12 = [CABasicAnimation animationWithKeyPath:@"opacity"];
    a12.beginTime = 0.0;
    a12.fromValue = @(0.3);
    a12.toValue = @(1);
    a12.duration = 2.0;
    a12.autoreverses = YES;
    a12.repeatCount = MAXFLOAT;
    [view11.layer addAnimation:a12 forKey:@"a12"];

    //
    //    CABasicAnimation * a4 = [CABasicAnimation animationWithKeyPath:@"backgroundColor"];
    //    a4.beginTime = 0.0;
    //    a4.autoreverses = YES;
    //    a4.fromValue = (__bridge id _Nullable)([UIColor redColor].CGColor);
    //    a4.toValue = (__bridge id _Nullable)([UIColor greenColor].CGColor);
    //    a4.duration = 4.0;
    //    a4.repeatCount = 1;
    
//    CABasicAnimation * a1 = [CABasicAnimation animationWithKeyPath:@"position"];
//    a1.beginTime = 0.0;
//    a1.fromValue = [NSValue valueWithCGPoint:CGPointMake(50, 50)];
//    a1.toValue = [NSValue valueWithCGPoint:CGPointMake(kScreen_Width-50, 50)];
//    a1.duration = 1.0;
//    a1.repeatCount = 1;
//    
//    CABasicAnimation * a2 = [CABasicAnimation animationWithKeyPath:@"position"];
//    a2.beginTime = 1.0;
//    a2.fromValue = [NSValue valueWithCGPoint:CGPointMake(kScreen_Width-50, 50)];
//    a2.toValue = [NSValue valueWithCGPoint:CGPointMake(kScreen_Width-50, kScreen_Height-50)];
//    a2.duration = 1.0;
//    a2.repeatCount = 1;
//    
//    CABasicAnimation * a3 = [CABasicAnimation animationWithKeyPath:@"position"];
//    a3.beginTime = 2.0;
//    a3.fromValue = [NSValue valueWithCGPoint:CGPointMake(kScreen_Width-50, kScreen_Height-50)];
//    a3.toValue = [NSValue valueWithCGPoint:CGPointMake(50, kScreen_Height-50)];
//    a3.duration = 1.0;
//    a3.repeatCount = 1;
//    
//    CABasicAnimation * a4 = [CABasicAnimation animationWithKeyPath:@"position"];
//    a4.beginTime = 3.0;
//    a4.fromValue = [NSValue valueWithCGPoint:CGPointMake(50, kScreen_Height-50)];
//    a4.toValue = [NSValue valueWithCGPoint:CGPointMake(50, 50)];
//    a4.duration = 1.0;
//    a4.repeatCount = 1;
//    
//    CAAnimationGroup * ca = [CAAnimationGroup animation];
//    ca.animations = @[a1,a2,a3,a4];
//    ca.removedOnCompletion = NO;
//    ca.fillMode = kCAFillModeForwards;
//    ca.duration = 4.0;
//    ca.repeatCount = MAXFLOAT;
//    [view.layer addAnimation:ca forKey:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
