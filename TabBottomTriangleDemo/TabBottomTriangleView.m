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

-(void)mouseEntered:(NSEvent *)event {
    
}

-(void)mouseExited:(NSEvent *)event {
    
}

-(void)mouseDown:(NSEvent *)event {
    NSLog(@"TabBottomTriangleView mouseDown");
    NSMenu *theMenu = [[NSMenu alloc] initWithTitle:@"Contextual Menu"];
    [theMenu insertItemWithTitle:@"Beep" action:@selector(beep) keyEquivalent:@"" atIndex:0];
    [theMenu insertItemWithTitle:@"Honk" action:@selector(honk) keyEquivalent:@"" atIndex:1];
    for (int index = 0; index < theMenu.itemArray.count; index++) {
        [theMenu.itemArray[index] setTarget:self];
    }
    [theMenu popUpMenuPositioningItem:nil atLocation:NSMakePoint(self.bounds.size.width, 0) inView:self];
    //[NSMenu popUpContextMenu:theMenu withEvent:event forView:self]
}

-(NSView *)hitTest:(NSPoint)point {
    NSPoint viewPoint = [self convertPoint:point fromView:self.superview];
    if (NSPointInRect(point, self.frame)) {
        if (viewPoint.x >= viewPoint.y) {
            return self;
        } else {
            return self.superview;
        }
    }
    return [super hitTest:point];
}

-(void)beep{
    NSLog(@"beep");
}

-(void)honk{
    NSLog(@"honk");
}

@end
