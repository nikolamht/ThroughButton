//
//  ViewController.m
//  ThroughButton
//
//  Created by 老板 on 16/7/8.
//  Copyright © 2016年 老板. All rights reserved.
//

#import "ViewController.h"
#import "HTButton.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HTButton *temp = [[HTButton alloc] init];
    temp.translatesAutoresizingMaskIntoConstraints = NO;
    temp.tag = 11;
    [temp setAdjustsImageWhenHighlighted:NO];
    [temp setBackgroundImage:[UIImage imageNamed:@"temp_board"] forState:UIControlStateNormal];
    [temp addTarget:self action:@selector(selectAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:temp];
    [self.view addConstraints:@[[NSLayoutConstraint constraintWithItem:temp
                                                             attribute:NSLayoutAttributeCenterX
                                                             relatedBy:NSLayoutRelationEqual
                                                                toItem:self.view
                                                             attribute:NSLayoutAttributeCenterX
                                                            multiplier:1.0f
                                                              constant:.0f],
                                [NSLayoutConstraint constraintWithItem:temp
                                                             attribute:NSLayoutAttributeCenterY
                                                             relatedBy:NSLayoutRelationEqual
                                                                toItem:self.view
                                                             attribute:NSLayoutAttributeCenterY
                                                            multiplier:1.0f
                                                              constant:.0f]]];
    
    HTButton *sub = [[HTButton alloc] init];
    sub.translatesAutoresizingMaskIntoConstraints = NO;
    sub.tag = 22;
    [sub setAdjustsImageWhenHighlighted:NO];
    [sub setBackgroundImage:[UIImage imageNamed:@"temp_a_a"] forState:UIControlStateNormal];
    [sub addTarget:self action:@selector(selectAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:sub];
    sub.center = self.view.center;
    [self.view addConstraints:@[[NSLayoutConstraint constraintWithItem:sub
                                                             attribute:NSLayoutAttributeCenterX
                                                             relatedBy:NSLayoutRelationEqual
                                                                toItem:self.view
                                                             attribute:NSLayoutAttributeCenterX
                                                            multiplier:1.0f
                                                              constant:.0f],
                                [NSLayoutConstraint constraintWithItem:sub
                                                             attribute:NSLayoutAttributeCenterY
                                                             relatedBy:NSLayoutRelationEqual
                                                                toItem:self.view
                                                             attribute:NSLayoutAttributeCenterY
                                                            multiplier:1.0f
                                                              constant:.0f]]];
}

-(void)selectAction:(HTButton *)btn{
    NSLog(@"%d",(int)btn.tag);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
