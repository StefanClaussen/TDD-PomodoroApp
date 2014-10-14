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

- (void)testHourMarkerViewOneIsNotNil
{
    vc.hourMarkerView1 = [vc hourMarkerView1];
    XCTAssertNotNil(vc.hourMarkerView1, @"Should create HourMarkerView1");
    XCTAssertTrue([vc.hourMarkerView1 isKindOfClass:[HourMarkerView class]], @"Should be of HourMarkerView class");
}

- (void)testHourMarkerViewOneIsASubview
{
    XCTAssertTrue([vc.hourMarkerView1 isDescendantOfView:vc.view]);
}

- (void)testHourMarkerViewTwoIsNotNil
{
    vc.hourMarkerView2 = [vc hourMarkerView2];
    XCTAssertNotNil(vc.hourMarkerView2, @"Should create HourMarkerView2");
    XCTAssertTrue([vc.hourMarkerView2 isKindOfClass:[HourMarkerView class]], @"Should be of HourMarkerView class");
}

- (void)testHourMarkerViewTwoIsASubview
{
    XCTAssertTrue([vc.hourMarkerView2 isDescendantOfView:vc.view]);
}

- (void)testHourMarkerLabel1isNotNil
{
    XCTAssertNotNil([vc hourMarkerViewLabel1], @"Should create a hourMarkerViewLabel");
    XCTAssertTrue([vc.hourMarkerViewLabel1 isKindOfClass:[UILabel class]], @"Should be of class UILabel");
}

- (void)test_textForHourMarkerLabel1IsSetToAnHourString
{
    [vc setTimeForTheHourMarkerViewLabel];
    XCTAssertEqualObjects(vc.hourMarkerViewLabel1.text, vc.hourMarkerView1.currentHourString, @"Label should be set to the hourString");
}

- (void)testViewLoadsWith_hourMarkerViewLabel1HavingAnHourString
{
    [vc viewDidLoad];
    XCTAssertEqualObjects(vc.hourMarkerViewLabel1.text, vc.hourMarkerView1.currentHourString, @"Label should be set to the hourString");
}




@end
