//
//  SkinTool.h
//  Resurfacing
//
//  Created by wanglong on 16/8/13.
//  Copyright © 2016年 wanglong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SkinTool : NSObject

+ (void)setSkinTheme:(NSString *)skinTheme;
+ (UIImage *)skinWithImageName:(NSString *)skinName;
+ (UIColor *)skinWithColor;
@end
