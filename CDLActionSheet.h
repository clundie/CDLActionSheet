//
//  CDLActionSheet.h
//
//  Created by Chris Lundie <http://www.lundie.ca/>
//
//  Example usage:
//
//  CDLActionSheet *sheet = [[CDLActionSheet alloc] init];
//  [sheet addButtonWithTitle:@"Foo" clickHandler:^{
//    // Do something
//  }];
//  sheet.cancelButtonIndex = [sheet addButtonWithTitle:@"Cancel"
//                                         clickHandler:nil];
//  [sheet showInView:self.view];
//


#import <UIKit/UIKit.h>

@interface CDLActionSheet : UIActionSheet

- (NSInteger)addButtonWithTitle:(NSString *)title
                   clickHandler:(void(^)())clickHandler;

@end
