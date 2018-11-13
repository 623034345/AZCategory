//
//  GradientVC.m
//  AZCategoryDemo
//
//  Created by Alfred Zhang on 2017/7/30.
//  Copyright © 2017年 Alfred Zhang. All rights reserved.
//

#import "GradientVC.h"
#import "UIView+AZGradient.h"

@interface GradientVC ()

@end

@implementation GradientVC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self gradientTest];
}

- (void)gradientTest {
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 80, 200, 30)];
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
    
    [label az_setGradientBackgroundWithColors:@[[UIColor redColor],[UIColor orangeColor]] locations:nil startPoint:CGPointMake(0, 0) endPoint:CGPointMake(1, 0)];
    
    [btn az_setGradientBackgroundWithColors:@[[UIColor redColor],[UIColor orangeColor]] locations:nil startPoint:CGPointMake(0, 0) endPoint:CGPointMake(1, 0)];
    
    [tempView az_setGradientBackgroundWithColors:@[[UIColor redColor],[UIColor orangeColor]] locations:nil startPoint:CGPointMake(0, 0) endPoint:CGPointMake(1, 0)];
    
    [imageView az_setGradientBackgroundWithColors:@[[UIColor redColor],[UIColor orangeColor]] locations:nil startPoint:CGPointMake(0, 0) endPoint:CGPointMake(1, 0)];
    
    label.text = @"Text";
    label.textAlignment = NSTextAlignmentCenter;
    
    [btn setTitle:@"Button" forState:UIControlStateNormal];
    
}

@end
