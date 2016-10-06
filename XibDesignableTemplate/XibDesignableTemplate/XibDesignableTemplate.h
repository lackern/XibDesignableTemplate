//
//  Created by Lackern on 8/3/15.
//  Copyright (c) 2015 All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE

@interface XibDesignableTemplate : UIView

@property (strong, nonatomic) IBOutlet UIView *view;

// Overwrite this method
-(void)defaultSettings;

@end
