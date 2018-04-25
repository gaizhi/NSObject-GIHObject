//
//  ViewController.m
//  GZHObjectDemo
//
//  Created by 徐强 on 2018/4/25.
//  Copyright © 2018年 gaizhi. All rights reserved.
//

#import "ViewController.h"

#import "NSObject+GZHObject.h"

@interface ViewController ()

@end

@implementation ViewController

+ (void)load {
    [self gzh_swizzleSelector:@selector(viewDidLoad) withSelector:@selector(swz_viewDidLoad)];
}

- (void)swz_viewDidLoad {
    [self swz_viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
