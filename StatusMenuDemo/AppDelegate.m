//
//  AppDelegate.m
//  StatusMenuDemo
//
//  Created by 河野 さおり on 2016/11/13.
//  Copyright © 2016年 Saori Kohno. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate (){
    IBOutlet NSMenu *stMenu;
}

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate{
    NSStatusItem* _stItem;
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    [self setUpStMenu];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

//ステータスメニュー項目を設定
- (void)setUpStMenu{
    NSStatusBar *sysStBar = [NSStatusBar systemStatusBar];
    _stItem = [sysStBar statusItemWithLength:NSVariableStatusItemLength];
    [_stItem setHighlightMode:YES];
    [_stItem setImage:[NSImage imageNamed:@"stIcon.png"]];
    [_stItem setAlternateImage:[NSImage imageNamed:@"stIcon_hl.png"]];
    [_stItem setMenu:stMenu];
}

//メニューアクション
- (IBAction)ShowMainWin:(id)sender{
    [self.window makeKeyAndOrderFront:self];
}

@end
