//
//  CCStItemView.m
//  StatusMenuDemo
//
//  Created by 河野 さおり on 2016/11/17.
//  Copyright © 2016年 Saori Kohno. All rights reserved.
//

#import "CCStItemView.h"

@implementation CCStItemView

@synthesize stItem = _stItem;

- (id)initWithStatusItem:(NSStatusItem *)statusItem {
    CGFloat itemWidth = [statusItem length];
    CGFloat itemHeight = [[NSStatusBar systemStatusBar] thickness];
    NSRect itemRect = NSMakeRect(0.0, 0.0, itemWidth, itemHeight);
    self = [super initWithFrame:itemRect];
    
    if (self != nil) {
        _stItem = statusItem;
        _stItem.view = self;
    }
    return self;
}


- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
}

@end
