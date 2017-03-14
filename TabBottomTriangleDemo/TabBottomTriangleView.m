//
//  TabBottomTriangleView.m
//  TabBottomTriangleDemo
//
//  Created by 赵睿 on 14/03/2017.
//  Copyright © 2017 com.homebrew.zhaorui. All rights reserved.
//

#import "TabBottomTriangleView.h"

@implementation TabBottomTriangleView

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    NSBezierPath* path = [[NSBezierPath alloc] init];
    [path moveToPoint:NSMakePoint(dirtyRect.size.width, dirtyRect.size.height)];
    [path lineToPoint:NSMakePoint(dirtyRect.size.width, 0)];
    [path lineToPoint:NSMakePoint(0, 0)];
    [path closePath];
    [[NSColor whiteColor] setFill];
    [path fill];
}

@end
