//
//  ChouJiangViewController.m
//  CAAnimation
//
//  Created by YangY on 2017/2/20.
//  Copyright © 2017年 yangyang. All rights reserved.
//

#import "ChouJiangViewController.h"

@interface ChouJiangViewController ()<CAAnimationDelegate>
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIImageView *image;

@end

@implementation ChouJiangViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    UIImageView * view = [[UIImageView alloc] initWithFrame:CGRectMake(100, 100, 200, 200)];
//    view.center = self.view.center;
//    view.image = [UIImage imageNamed:@"zhuanpan.png"];
//    [self.view addSubview:view];
//    
//    CABasicAnimation * a3 = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
//    a3.beginTime = 0.0;
//    a3.toValue = @(2.6 * M_PI);
//    a3.duration = 2.0;
//    a3.repeatCount = 3;
//    [view.layer addAnimation:a3 forKey:@"a3"];
}
- (IBAction)start:(id)sender {
    NSInteger turnAngle;//12个奖励分别对应的角度
    NSInteger randomNum = arc4random()%100;//控制概率
    NSInteger turnsNum = arc4random()%5+1;//控制圈数
    
    if (randomNum>=0 && randomNum<20) {//80%的概率 就是0-80
        
        if (randomNum < 5) {
            turnAngle = 345;
        }else if (randomNum < 10){
            turnAngle = 315;
        }else if (randomNum < 15){
            turnAngle = 285;
        }else{
            turnAngle = 255;
        }
        
    } else if (randomNum>=20 && randomNum<40) {
        
        if (randomNum < 30) {
            turnAngle = 225;
        }else{
            turnAngle = 195;
        }
        
    } else if (randomNum >=40 && randomNum<60) {
        if (randomNum < 50) {
            turnAngle = 165;
        }else{
            turnAngle = 135;
        }
        
    } else if(randomNum >=60 && randomNum<80){
        
        if (randomNum < 70) {
            turnAngle = 105;
        }else{
            turnAngle = 75;
        }
        
    }else{
        if (randomNum < 90) {
            turnAngle = 45;
        }else{
            turnAngle = 15;
        }
    }
    
    
    NSLog(@"%ld   ,%ld",(long)turnAngle,(long)randomNum);
    
    CABasicAnimation* rotationAnimation;
    rotationAnimation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    rotationAnimation.toValue = @(turnAngle/180.0* M_PI + 2*turnsNum*M_PI);
//    rotationAnimation.toValue = [NSNumber numberWithFloat:turnAngle/180*M_PI+ turnsNum * M_PI];
    rotationAnimation.duration = 3.0f;
    rotationAnimation.cumulative = YES;
    rotationAnimation.delegate = self;
    //由快变慢
    rotationAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
    rotationAnimation.fillMode=kCAFillModeForwards;
    rotationAnimation.removedOnCompletion = NO;
    [self.image.layer addAnimation:rotationAnimation forKey:@"rotationAnimation"];
    
    // 转盘结束后调用，显示获得的对应奖励
    NSLog(@"旋转的角度为%ld",(long)turnAngle);
    self.label.text = [NSString stringWithFormat:@"恭喜您抽中了%ld",13-(turnAngle-15)/30-1];
    
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
