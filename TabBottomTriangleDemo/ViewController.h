//
//  ViewController.h
//  TabBottomTriangleDemo
//
//  Created by 赵睿 on 14/03/2017.
//  Copyright © 2017 com.homebrew.zhaorui. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "MockTabView.h"
#import "TabBottomTriangleView.h"
#import "MockTabViewController.h"

@interface ViewController : NSViewController

@property (weak) IBOutlet NSView *demo_tab_view;
@property (strong) MockTabViewController * mock_tab_vc;

@end

