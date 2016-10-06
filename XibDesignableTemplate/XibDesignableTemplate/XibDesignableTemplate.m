//
//  Created by Lackern on 8/3/15.
//  Copyright (c) 2015 All rights reserved.
//

#import "XibDesignableTemplate.h"

@implementation XibDesignableTemplate

-(id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setupXIB];
    }
    return self;
}

-(id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self setupXIB];
    }
    return self;
}

- (void)setupXIB
{
    //  1. Load the interface file from .xib, from the right bundle, need to be spicific for IBDesignables
    // UINib *nib = [UINib nibWithNibName:NSStringFromClass([self class]) bundle:[NSBundle bundleForClass:[self class]]];
    //    UIView *subview = [[nib instantiateWithOwner:self options:nil] objectAtIndex:0];
    
    // 1. Load the interface file from .xib, from the right bundle, need to be spicific for IBDesignables
    // method 1 loading
    NSArray *nib  = [[NSBundle bundleForClass: [self class]] loadNibNamed:NSStringFromClass([self class]) owner:self options:nil] ;
    self.view = [nib firstObject];
    
    // method 2 loading
    //     UINib *nib = [UINib nibWithNibName:NSStringFromClass([self class]) bundle:[NSBundle bundleForClass:[self class]]];
    //     UIView *subview = [[nib instantiateWithOwner:self options:nil] objectAtIndex:0];
    
    //2. update frame and sizing masking
    self.view.frame = self.bounds;
    self.view.autoresizingMask = UIViewAutoresizingFlexibleWidth |UIViewAutoresizingFlexibleHeight;
    
    // 3. add to own self
    [self addSubview:self.view];
    
    [self defaultSettings];
}

-(void)defaultSettings
{
    NSLog(@"If you are seeing this msg, defaultSettings are not overwritten");
}

@end
