//
//  GradientVC.m
//  AZCategoryDemo
//
//  Created by Alfred Zhang on 2017/7/30.
//  Copyright © 2017年 Alfred Zhang. All rights reserved.
//

#import "GradientVC.h"
#import "UIView+Gradient.h"

@interface GradientVC ()

@end

@implementation GradientVC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self gradientTest];
}

- (void)gradientTest {
    
    self.view.backgroundColor = [UIColor whiteColor];
    
//    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 80, 200, 30)];
       UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 300, 200, 230)];
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(0, 120, 200, 30)];
    UIView *tempView = [[UIView alloc] initWithFrame:CGRectMake(0, 160, 200, 30)];
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 200, 200, 30)];
    
    [self.view addSubview:label];
    [self.view addSubview:btn];
    [self.view addSubview:tempView];
    [self.view addSubview:imageView];
    
    label.backgroundColor = [UIColor clearColor];
    btn.backgroundColor = [UIColor blueColor];
    tempView.backgroundColor = [UIColor blueColor];
    imageView.backgroundColor = [UIColor blueColor];
    
    [label setGradientBackgroundWithColors:@[[UIColor redColor],[UIColor orangeColor]] locations:nil startPoint:CGPointMake(0, 0) endPoint:CGPointMake(1, 1)];
  
    //从右到左  1，0   0，0
    //从下到上  0，1   0，0
    //从左到右  0，0   1，0
    //从上到下  0，0   0，1
    //右上角   0，1   1，0
    //左下角   1 0    0 1
    //左上角   1 1    0 0
    //右下角   0 0    1 1
    //1111 0000 无渐变
    
    
    [btn setGradientBackgroundWithColors:@[[UIColor redColor],[UIColor orangeColor]] locations:nil startPoint:CGPointMake(0, 0) endPoint:CGPointMake(1, 0)];
    
    [tempView setGradientBackgroundWithColors:@[[UIColor redColor],[UIColor orangeColor]] locations:nil startPoint:CGPointMake(0, 0) endPoint:CGPointMake(1, 0)];
    
    [imageView setGradientBackgroundWithColors:@[[UIColor redColor],[UIColor orangeColor]] locations:nil startPoint:CGPointMake(0, 0) endPoint:CGPointMake(1, 0)];
    
    label.text = @"Text";
    label.textAlignment = NSTextAlignmentCenter;
    
    [btn setTitle:@"Button" forState:UIControlStateNormal];
    
}

@end
