//
//  TimeViewController.m
//  YBTimerDemo
//
//  Created by wyb on 2017/7/26.
//  Copyright © 2017年 中天易观. All rights reserved.
//

#import "TimeViewController.h"
#import "YBTimer.h"

@interface TimeViewController ()

@property(nonatomic,weak)NSTimer *timer;

@end

@implementation TimeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor greenColor];
    
    self.timer = [YBTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(timeAction:) userInfo:nil repeats:YES];
    
}

- (void)timeAction:(NSTimer *)timer {
    
    NSLog(@"%s",__func__);
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)dealloc
{
    NSLog(@"TimeViewController死了");
    [self.timer invalidate];
    self.timer = nil;
}

@end

