//
//  TwoViewController.m
//  ji
//
//  Created by 陈博文 on 16/11/22.
//  Copyright © 2016年 陈博文. All rights reserved.
//

#import "TwoViewController.h"
#import "ThreeViewController.h"
@interface TwoViewController ()

@end

@implementation TwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor purpleColor];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    ThreeViewController *vc = [[ThreeViewController alloc]init];
    
    [self presentViewController:vc animated:YES completion:nil];
    
}

@end
