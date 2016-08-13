//
//  SkinTool.m
//  Resurfacing
//
//  Created by wanglong on 16/8/13.
//  Copyright © 2016年 wanglong. All rights reserved.
//

#import "SkinTool.h"

@implementation SkinTool


+ (void)setSkinTheme:(NSString *)skinTheme
{
    //将设置好的皮肤 保存到 沙盒中
    [[NSUserDefaults standardUserDefaults] setObject:skinTheme forKey:@"skinTheme"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

+ (NSString *)getSkinTheme
{
    //取出上次保存的皮肤
    NSString *skinTheme =  [[NSUserDefaults standardUserDefaults] objectForKey:@"skinTheme"];
    if (skinTheme == nil) {
        skinTheme = @"red";
    }
    return skinTheme;
}
//获取当前主题下的 图片
+ (UIImage *)skinWithImageName:(NSString *)skinName
{
    NSString *imagePath = [NSString stringWithFormat:@"skin/%@/%@",[self getSkinTheme],skinName];
    return [UIImage imageNamed:imagePath];
    
}

//或得 当前主题下的 Label的背景颜色

+ (UIColor *)skinWithColor
{
    NSString *labelThemePath = [NSString stringWithFormat:@"skin/%@/LabelTheme.plist",[self getSkinTheme]];
    NSString *abelThemePlist = [[NSBundle mainBundle] pathForResource:labelThemePath ofType:nil];
    NSDictionary *dict = [NSDictionary dictionaryWithContentsOfFile:abelThemePlist];
    
    NSString *bgColorValue = dict[@"bgColor"];
    
    NSArray *array = [bgColorValue componentsSeparatedByString:@"."];
    
    NSInteger red = [array[0] integerValue];
    NSInteger green = [array[1] integerValue];
    NSInteger blue = [array[2] integerValue];
    UIColor *color = [UIColor colorWithRed:red / 255.0 green:green / 255.0 blue:blue / 255.0 alpha:1.0];
    return color;
    
}
@end
