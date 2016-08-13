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

+ (UIImage *)skinWithImageName:(NSString *)skinName
{
    NSString *imagePath = [NSString stringWithFormat:@"skin/%@/%@",[self getSkinTheme],skinName];
    return [UIImage imageNamed:imagePath];
    
}
@end
