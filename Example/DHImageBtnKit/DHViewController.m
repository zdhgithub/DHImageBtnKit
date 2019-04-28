//
//  DHViewController.m
//  DHImageBtnKit
//
//  Created by zdh362428@163.com on 04/28/2019.
//  Copyright (c) 2019 zdh362428@163.com. All rights reserved.
//

#import "DHViewController.h"
#import <DHImageBtnKit.h>

@interface DHViewController ()

@end

@implementation DHViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    DHImgRightBtn *btn = [[DHImgRightBtn alloc] initWithFrame:CGRectMake(10, 100, 200, 80)];
    btn.titleLabel.font = [UIFont systemFontOfSize:20];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [btn setBackgroundColor:[UIColor groupTableViewBackgroundColor]];
    [btn setImage:[UIImage imageNamed:@"icon"] forState:UIControlStateNormal];
    [btn setTitle:@"点我" forState:UIControlStateNormal];
    [self.view addSubview:btn];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
