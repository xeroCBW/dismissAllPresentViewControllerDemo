//
//  TabBarViewController.m
//  ji
//
//  Created by 陈博文 on 16/11/22.
//  Copyright © 2016年 陈博文. All rights reserved.
//

#import "TabBarViewController.h"

#import "SecondViewController.h"
@interface TabBarViewController ()

@end

@implementation TabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    


    UIViewController *baseOne = [[UIViewController alloc]init];
    baseOne.view.backgroundColor = [UIColor greenColor];
    baseOne.title = @"第一个";
    UINavigationController *one = [[UINavigationController alloc]initWithRootViewController:baseOne];
    [self addChildViewController:one];
    
    
    SecondViewController *baseTwo = [[SecondViewController alloc]init];
    baseTwo.view.backgroundColor = [UIColor yellowColor];
    baseTwo.title = @"第二个";
    UINavigationController *two = [[UINavigationController alloc]initWithRootViewController:baseTwo];
    [self addChildViewController:two];


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
