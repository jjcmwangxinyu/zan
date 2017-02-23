//
//  ViewController.m
//  zan
//
//  Created by 王新宇 on 2017/1/3.
//  Copyright © 2017年 王新宇. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *button;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}
- (IBAction)click:(id)sender {
    int i = 0;
    [self.button setImage:[UIImage imageNamed:(i%2==0?@"2":@"1")] forState:UIControlStateNormal];
    CAKeyframeAnimation *k = [CAKeyframeAnimation animationWithKeyPath:@"transform.scale"];
    k.values = @[@(0.1),@(1.0),@(1.5)];
    k.keyTimes = @[@(0.0),@(0.5),@(0.8),@(1.0)];
    k.calculationMode = kCAAnimationLinear;
    i++;
    [self.button.layer addAnimation:k forKey:@"SHOW"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
