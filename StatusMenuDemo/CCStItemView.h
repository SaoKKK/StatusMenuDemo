#import <Cocoa/Cocoa.h>

@interface CCStItemView : NSView

@property (nonatomic, strong, readonly) NSStatusItem *stItem;

- (id)initWithStatusItem:(NSStatusItem *)statusItem;

@end
