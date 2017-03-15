//
//  MockTabView.m
//  TabBottomTriangleDemo
//
//  Created by 赵睿 on 14/03/2017.
//  Copyright © 2017 com.homebrew.zhaorui. All rights reserved.
//

#import "MockTabView.h"
#import "MockTabViewController.h"

@implementation MockTabView

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    [[NSColor redColor] setFill];
    [NSBezierPath fillRect:dirtyRect];
}

-(void)mouseEntered:(NSEvent *)event {
    [[self.controller triangle_view] setHidden:false];
}

-(void)mouseExited:(NSEvent *)event {
    [[self.controller triangle_view] setHidden:true];
}

-(void)mouseDown:(NSEvent *)event {
    NSLog(@"MockTabView mouseDown");
}

@end
