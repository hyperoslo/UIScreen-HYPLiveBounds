//
//  UIScreen+HYPLiveBounds.m
//  Mine Ansatte
//
//  Created by Christoffer Winterkvist on 6/25/14.
//  Copyright (c) 2014 Hyper. All rights reserved.
//

#import "UIScreen+HYPLiveBounds.h"

@implementation UIScreen (HYPLiveBounds)

- (CGRect)hyp_liveBounds
{
    CGRect bounds = [self bounds];
    UIInterfaceOrientation orientation = [[UIApplication sharedApplication] statusBarOrientation];
    CGFloat width  = bounds.size.width;
    CGFloat height = bounds.size.height;

    if (orientation == UIInterfaceOrientationPortrait || orientation == UIInterfaceOrientationPortraitUpsideDown) {
        if (bounds.size.width > height) {
            width  = bounds.size.height;
            height = bounds.size.width;
        }
    } else {
        if (bounds.size.height > bounds.size.width) {
            width  = bounds.size.height;
            height = bounds.size.width;
        }
    }

    bounds.size.width  = width;
    bounds.size.height = height;

    return bounds;
}

@end
