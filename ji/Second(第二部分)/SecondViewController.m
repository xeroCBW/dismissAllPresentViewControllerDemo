//
//  ViewController.m
//  ji
//
//  Created by 陈博文 on 16/11/22.
//  Copyright © 2016年 陈博文. All rights reserved.
//

#import "SecondViewController.h"
#import "OneViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    OneViewController *vc = [[OneViewController alloc]init];
    
    [self presentViewController:vc animated:YES completion:nil];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
