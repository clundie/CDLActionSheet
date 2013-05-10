//
//  CDLActionSheet.m
//
//  Created by Chris Lundie <http://www.lundie.ca/>
//

#if !__has_feature(objc_arc)
#error ARC is required (-fobjc-arc)
#endif

#import "CDLActionSheet.h"

@interface CDLActionSheet ()

@property (strong, nonatomic) NSMutableDictionary *clickHandlers;

@end

@implementation CDLActionSheet

- (NSInteger)addButtonWithTitle:(NSString *)title
                   clickHandler:(void(^)())clickHandler
{
  NSInteger index = [self addButtonWithTitle:title];
  if (clickHandler != nil) {
    NSMutableDictionary *clickHandlers = self.clickHandlers;
    if (clickHandlers == nil) {
      clickHandlers = [NSMutableDictionary dictionary];
      self.clickHandlers = clickHandlers;
    }
    clickHandlers[@(index)] = [clickHandler copy];
  }
  return index;
}

- (void)dismissWithClickedButtonIndex:(NSInteger)buttonIndex
                             animated:(BOOL)animated
{
  [super dismissWithClickedButtonIndex:buttonIndex animated:animated];
  void(^clickHandler)() = self.clickHandlers[@(buttonIndex)];
  self.clickHandlers = nil;
  if (clickHandler != nil) {
    clickHandler();
  }
}

@end
