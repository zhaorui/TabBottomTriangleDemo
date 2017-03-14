//
//  MockTabViewController.m
//  TabBottomTriangleDemo
//
//  Created by 赵睿 on 14/03/2017.
//  Copyright © 2017 com.homebrew.zhaorui. All rights reserved.
//

#import "MockTabViewController.h"


@interface MockTabViewController ()

@end

@implementation MockTabViewController

- (void)viewDidLoad {
    
    
    [super viewDidLoad];
    [self.triangle_view setHidden:true];
    [self.triangle_view addTrackingRect:self.triangle_view.bounds owner:self.triangle_view userData:nil assumeInside:false];
    [(MockTabView*)self.view setController:self];
    [self.view addTrackingRect:self.view.bounds owner:self.view userData:nil assumeInside:false];
}

@end
