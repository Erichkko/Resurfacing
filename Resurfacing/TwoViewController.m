//
//  TwoViewController.m
//  Resurfacing
//
//  Created by wanglong on 16/8/13.
//  Copyright © 2016年 wanglong. All rights reserved.
//

#import "TwoViewController.h"

@interface TwoViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *faceImageView;
@property (weak, nonatomic) IBOutlet UIImageView *heartImageView;
@property (weak, nonatomic) IBOutlet UIImageView *rectImageView;
@end

@implementation TwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    //取出上次保存的皮肤
    NSString *skinName =  [[NSUserDefaults standardUserDefaults] objectForKey:@"skinName"];
    if (skinName == nil) {
        skinName = @"red";
    }
    [self showSkinWith:skinName];
}
- (void)showSkinWith:(NSString *)skinName
{
    NSString *faceName = [NSString stringWithFormat:@"skin/%@/face",skinName];
    NSString *heartName = [NSString stringWithFormat:@"skin/%@/heart",skinName];
    NSString *rectName = [NSString stringWithFormat:@"skin/%@/rect",skinName];
    
    self.faceImageView.image = [UIImage imageNamed:faceName];
    self.heartImageView.image = [UIImage imageNamed:heartName];
    self.rectImageView.image = [UIImage imageNamed:rectName];
    
    
}
@end
