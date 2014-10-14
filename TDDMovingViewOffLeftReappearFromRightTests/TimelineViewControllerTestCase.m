//
//  TimelineViewControllerTestCase.m
//  TDDMovingViewOffLeftReappearFromRight
//
//  Created by Stefan Claussen on 13/10/2014.
//  Copyright (c) 2014 One foot after the other. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "HourMarkerView.h"
#import "AppDelegate.h"
#import "ViewController.h"

@interface TimelineViewControllerTestCase : XCTestCase
{
    ViewController *vc;
}

@end

@implementation TimelineViewControllerTestCase

- (void)setUp {
    [super setUp];
    UIApplication *application = [UIApplication sharedApplication];
    AppDelegate *appDelegate = [application delegate];
    UIWindow *window = [appDelegate window];
    vc = (ViewController *)[window rootViewController];
}

- (void)tearDown {
    vc = nil;
    [super tearDown];
}

- (void)testHourMarkerViewOneIsCreated
{
    vc.hourMarkerView1 = [vc hourMarkerView1];
    XCTAssertNotNil(vc.hourMarkerView1, @"Should create first HourMarkerView1");
    XCTAssertTrue([vc.hourMarkerView1 isKindOfClass:[HourMarkerView class]]);
}




@end
