//
//  UIScreen_HYPLiveBoundsTests.m
//  UIScreen-HYPLiveBoundsTests
//
//  Created by Christoffer Winterkvist on 7/5/14.
//
//

#import <XCTest/XCTest.h>
#import "UIScreen+HYPLiveBounds.h"

@interface UIScreen_HYPLiveBoundsTests : XCTestCase

@end

@implementation UIScreen_HYPLiveBoundsTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testPortraitBounds
{
    CGRect bounds = [[UIScreen mainScreen] hyp_liveBounds];
    XCTAssertTrue(bounds.size.height > bounds.size.width, @"Current orientation is portrait");
}

@end
