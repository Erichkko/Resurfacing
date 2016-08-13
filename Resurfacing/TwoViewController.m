//
//  TwoViewController.m
//  Resurfacing
//
//  Created by wanglong on 16/8/13.
//  Copyright © 2016年 wanglong. All rights reserved.
//

#import "TwoViewController.h"
#import "SkinTool.h"
@interface TwoViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *faceImageView;
@property (weak, nonatomic) IBOutlet UIImageView *heartImageView;
@property (weak, nonatomic) IBOutlet UILabel *labelText;
@property (weak, nonatomic) IBOutlet UIImageView *rectImageView;
@end

@implementation TwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //设置图片
    self.faceImageView.image = [SkinTool skinWithImageName:@"face"];
    self.heartImageView.image = [SkinTool skinWithImageName:@"heart"];
    self.rectImageView.image = [SkinTool skinWithImageName:@"rect"];
    
    //设置Label主题
    
    self.labelText.backgroundColor = [SkinTool skinWithColor];
}
@end
