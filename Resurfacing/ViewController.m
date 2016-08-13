//
//  ViewController.m
//  Resurfacing
//
//  Created by wanglong on 16/8/13.
//  Copyright © 2016年 wanglong. All rights reserved.
//

#import "ViewController.h"
#import "SkinTool.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *faceImageView;
@property (weak, nonatomic) IBOutlet UIImageView *heartImageView;
@property (weak, nonatomic) IBOutlet UIImageView *rectImageView;

@end


#warning  换皮肤的 设置最好不要写在 viewDidLoad 方法中
#warning  最好写在 viewWillAppear方法中

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   }

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.faceImageView.image = [SkinTool skinWithImageName:@"face"];
    self.heartImageView.image = [SkinTool skinWithImageName:@"heart"];
    self.rectImageView.image = [SkinTool skinWithImageName:@"rect"];

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
    [SkinTool setSkinTheme:skinName];
    self.faceImageView.image = [SkinTool skinWithImageName:@"face"];
    self.heartImageView.image = [SkinTool skinWithImageName:@"heart"];
    self.rectImageView.image = [SkinTool skinWithImageName:@"rect"];
}
@end
