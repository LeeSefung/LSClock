//
//  LSClock.h
//  LSClock
//
//  Created by rimi on 15/7/13.
//  Copyright (c) 2015年 LeeSefung. All rights reserved.
//  https://github.com/daiweilai/DDClock.git
//  https://github.com/LeeSefung/LSClock.git
//

#import <UIKit/UIKit.h>
#define DDClockSize 200 //默认时钟的长宽都为200
#if ! __has_feature(objc_arc)
#error "需要开启ARC"
#endif

@protocol LSLockDelegate <NSObject>

@optional

//外框颜色
-(UIColor*)rimColor;
//刻度颜色
-(UIColor*)markColor;
//表盘颜色
-(UIColor*)faceColor;
//文字颜色
-(UIColor*)fontColor;
//秒针颜色
-(UIColor*)secondHandColor;
//时针颜色+分针颜色
-(UIColor*)hourAndMinuteHandColor;

@end

@interface LSClock : UIView

@property (weak, nonatomic) id<LSLockDelegate> delegate;

typedef NS_ENUM(NSUInteger, DDClockTheme) { //弄一个枚举类型用来更改主题
    DDClockThemeDefault = 0,
    DDClockThemeDark,
    DDClockThemeModerm
};

//DDClock的构造方法 delegate:代理
-(instancetype)initWithDelegate:(id<LSLockDelegate>)delegate frame:(CGRect)frame;
///DDClock的构造方法 theme:主题
-(instancetype)initWithTheme:(DDClockTheme)theme frame:(CGRect)frame;

@end
