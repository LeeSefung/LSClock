//
//  ViewController.m
//  LSClock
//
//  Created by rimi on 15/7/13.
//  Copyright (c) 2015年 LeeSefung. All rights reserved.
//  https://github.com/LeeSefung/LSClock.git
//

#import "ViewController.h"
#import "LSClock.h"

@interface ViewController () <LSLockDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    //Theme为时钟样式
    LSClock *clock1 = [[LSClock alloc] initWithTheme:DDClockThemeDefault frame:CGRectMake(62.5, 60, 250, 250)];
    [self.view addSubview:clock1];
    
    //包含代理的时钟
    LSClock *clock2 = [[LSClock alloc] initWithDelegate:self frame:CGRectMake(62.5, 360, 250, 250)];
    clock2.delegate = self;
    [self.view addSubview:clock2];
}

#pragma mark <LSLockDelegate>

//当没有设置颜色时为系统默认颜色
//时针分针颜色
-(UIColor *)hourAndMinuteHandColor {
    
    return [UIColor purpleColor];
}

//秒针颜色
-(UIColor *)secondHandColor {
    
    return  [UIColor redColor];
}

//外框颜色
-(UIColor *)rimColor {
    
    return [UIColor orangeColor];
}

//表盘颜色
-(UIColor *)faceColor {
    
    return [UIColor brownColor];
};

//文字颜色
-(UIColor *)fontColor {
    
    return  [UIColor greenColor];
}

//刻度颜色
-(UIColor*)markColor {
    
    return [UIColor blueColor];
}

@end
