//
//  DrawLineViewController.m
//  CAAnimation
//
//  Created by YangY on 2017/2/9.
//  Copyright © 2017年 yangyang. All rights reserved.
//

#import "DrawLineViewController.h"

@interface DrawLineViewController ()

@end

@implementation DrawLineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    /*
     view.backgroundColor = UIColor.white
     let tempView = UIView(frame: CGRect(x: 50, y: 100, width: 250, height: 500))
     let bezierPath = UIBezierPath(ovalIn: tempView.frame)
     
     let shapeLayer = CAShapeLayer()
     shapeLayer.strokeColor = UIColor.purple.cgColor
     shapeLayer.fillColor = UIColor.clear.cgColor
     shapeLayer.lineWidth = 2
     shapeLayer.lineJoin = kCALineJoinRound
     shapeLayer.lineCap = kCALineCapRound
     shapeLayer.path = bezierPath.cgPath
     view.layer.addSublayer(shapeLayer)
     
     let pathAnim = CABasicAnimation(keyPath: "strokeEnd")
     pathAnim.duration = 5.0
     pathAnim.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
     pathAnim.fromValue = 0
     pathAnim.toValue = 1
     pathAnim.autoreverses = true
     pathAnim.fillMode = kCAFillModeForwards
     //        pathAnim.isRemovedOnCompletion = false
     pathAnim.repeatCount = Float.infinity
     shapeLayer.add(pathAnim, forKey: "strokeEndAnim")
     */
    
    UIBezierPath *path = [[UIBezierPath alloc] init];
    
//    [path moveToPoint:CGPointMake(175, 100)];
    [path addArcWithCenter:CGPointMake(100, 300) radius:25 startAngle:0 endAngle:2*M_PI clockwise:YES];
    
    [path moveToPoint:CGPointMake(150, 125)];
    [path addLineToPoint:CGPointMake(150, 175)];
    [path addLineToPoint:CGPointMake(125, 225)];
    [path addLineToPoint:CGPointMake(150, 125)];
    
//    [path moveToPoint:CGPointMake(150, 175)];
//    [path addLineToPoint:CGPointMake(175, 225)];
//    
    [path moveToPoint:CGPointMake(100, 450)];
    [path addLineToPoint:CGPointMake(200, 450)];
    
    //create shape layer
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
    shapeLayer.strokeColor = [UIColor redColor].CGColor;
    shapeLayer.fillColor = [UIColor greenColor].CGColor;
    shapeLayer.lineWidth = 5;
    shapeLayer.lineJoin = kCALineJoinRound;
    shapeLayer.lineCap = kCALineCapRound;
    shapeLayer.path = path.CGPath;
    //add it to our view
    [self.view.layer addSublayer:shapeLayer];
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
