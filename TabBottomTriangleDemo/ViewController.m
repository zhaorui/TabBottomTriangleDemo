//
//  ViewController.m
//  TabBottomTriangleDemo
//
//  Created by 赵睿 on 14/03/2017.
//  Copyright © 2017 com.homebrew.zhaorui. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

-(instancetype)initWithCoder:(NSCoder *)coder {
    if (self = [super initWithCoder:coder]) {
        //Why I can't addObserver here?
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSStoryboard* storyboard = [NSStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    self.mock_tab_vc = [storyboard instantiateControllerWithIdentifier:@"MockTabViewController"];
    [self.demo_tab_view addSubview:[self.mock_tab_vc view]];
    
    [[NSNotificationCenter defaultCenter]   addObserver:self
                                            selector:@selector(viewFrameChanged:)
                                            name:NSViewFrameDidChangeNotification
                                            object:self.view];
}


- (void)setRepresentedObject:(id)representedObject {
  [super setRepresentedObject:representedObject];

  // Update the view, if already loaded.
}

-(void)viewFrameChanged:(NSNotification*)info {
    NSLog(@"Current frame: %@", NSStringFromRect([self.view frame]));
}

@end
