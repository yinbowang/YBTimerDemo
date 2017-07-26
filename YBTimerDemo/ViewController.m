//
//  ViewController.m
//  YBTimerDemo
//
//  Created by wyb on 2017/7/26.
//  Copyright © 2017年 中天易观. All rights reserved.
//

#import "ViewController.h"
#import "TimeViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    TimeViewController *vc = [[TimeViewController alloc]init];
    [self presentViewController:vc animated:YES completion:nil];
}

@end
