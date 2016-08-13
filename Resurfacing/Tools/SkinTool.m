//
//  SkinTool.m
//  Resurfacing
//
//  Created by wanglong on 16/8/13.
//  Copyright © 2016年 wanglong. All rights reserved.
//

#import "SkinTool.h"

@implementation SkinTool

static NSString *_skinTheme = @"red";

+ (void)setSkinTheme:(NSString *)skinTheme
{
    _skinTheme = skinTheme;

}

+ (UIImage *)skinWithImageName:(NSString *)skinName
{
    NSString *imagePath = [NSString stringWithFormat:@"skin/%@/%@",_skinTheme,skinName];
    return [UIImage imageNamed:imagePath];
    
}
@end
