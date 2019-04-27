//
//  MTViewController.m
//  MTMasonry
//
//  Created by BestiOSDev on 04/27/2019.
//  Copyright (c) 2019 BestiOSDev. All rights reserved.
//

#import "MTMasonry.h"
#import "MTViewController.h"

@interface MTViewController ()

@end

@implementation MTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    UIView *red = [[UIView alloc] init];
    red.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:red];
    
    [red mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
        make.size.mas_equalTo(CGSizeMake(100, 100));
    }];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
