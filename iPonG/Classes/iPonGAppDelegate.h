//
//  iPonGAppDelegate.h
//  iPonG
//
//  Created by PGW-MAC-01 on 11-02-08.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class iPonGViewController;

@interface iPonGAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    iPonGViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet iPonGViewController *viewController;

@end

