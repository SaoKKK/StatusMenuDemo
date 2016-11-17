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
    _stItem.image = [NSImage imageNamed:@"stIconTemplate.png"];
    _stItem.title = @"SMDemo";
    _stItem.highlightMode = YES;
    _stItem.menu = stMenu;
}

//メニューアクション
- (IBAction)ShowMainWin:(id)sender{
    [self.window makeKeyAndOrderFront:self];
}

@end
