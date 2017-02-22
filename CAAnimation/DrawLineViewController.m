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
//    [path addArcWithCenter:CGPointMake(100, 300) radius:25 startAngle:0 endAngle:2*M_PI clockwise:YES];
    
//    [path moveToPoint:self.view.center];
//    CGPoint point= self.view.center;
//    
//    for (int i = 1; i<150; i++) {
//        
//        int a = i/4;
//        int b = i%4;
//        
//        if (b == 1) {
//            [path addLineToPoint:CGPointMake(point.x + (a + 1) * 5, point.y + a * 5)];
//        }else if (b == 2){
//            [path addLineToPoint:CGPointMake(point.x + (a + 1) * 5, point.y - (a + 1) * 5)];
//        }else if (b == 3){
//            [path addLineToPoint:CGPointMake(point.x - (a + 1) * 5, point.y - (a + 1) * 5)];
//        }else{
//            [path addLineToPoint:CGPointMake(point.x - a * 5, point.y + a * 5)];
//        }
//        
//    }
    
    //667
    [path moveToPoint:CGPointMake(0, 0)];
    
    for (int x = 0; x <= 375; x = x + 10) {
        [path moveToPoint:CGPointMake(x+2.5, 0)];
        [path addLineToPoint:CGPointMake(x+2.5, 660)];
    }
    
    for (int y = 64; y <= 667; y = y + 10) {
        [path moveToPoint:CGPointMake(2.5, y)];
        [path addLineToPoint:CGPointMake(372.5, y)];
    }
    

    
    
    //create shape layer
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
    shapeLayer.strokeColor = [UIColor redColor].CGColor;
    shapeLayer.fillColor = [UIColor clearColor].CGColor;
    shapeLayer.lineWidth = 1;
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
