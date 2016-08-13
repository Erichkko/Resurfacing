//
//  ViewController.m
//  Resurfacing
//
//  Created by wanglong on 16/8/13.
//  Copyright © 2016年 wanglong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *faceImageView;
@property (weak, nonatomic) IBOutlet UIImageView *heartImageView;
@property (weak, nonatomic) IBOutlet UIImageView *rectImageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //取出上次保存的皮肤
   NSString *skinName =  [[NSUserDefaults standardUserDefaults] objectForKey:@"skinName"];
    if (skinName == nil) {
        skinName = @"red";
    }
    [self showSkinWith:skinName];
}
- (IBAction)redSkin {
    [self showSkinWith:@"red"];
}
- (IBAction)blueSkin {
    [self showSkinWith:@"blue"];
}
- (IBAction)greenSkin {
    [self showSkinWith:@"green"];
}


- (void)showSkinWith:(NSString *)skinName
{
    NSString *faceName = [NSString stringWithFormat:@"skin/%@/face",skinName];
    NSString *heartName = [NSString stringWithFormat:@"skin/%@/heart",skinName];
    NSString *rectName = [NSString stringWithFormat:@"skin/%@/rect",skinName];
    
    self.faceImageView.image = [UIImage imageNamed:faceName];
    self.heartImageView.image = [UIImage imageNamed:heartName];
    self.rectImageView.image = [UIImage imageNamed:rectName];
    
    //将设置好的皮肤 保存到 沙盒中
    [[NSUserDefaults standardUserDefaults] setObject:skinName forKey:@"skinName"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    
}
@end
