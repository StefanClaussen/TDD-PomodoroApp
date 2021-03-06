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
#import "OCMock.h"

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

#pragma mark - HourMarkerViewOne setup

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

#pragma mark - HourMarkerViewTwo setup

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

#pragma mark - HourMarkerViewLabel1 setup

- (void)testHourMarkerViewLabel1isNotNil
{
    XCTAssertNotNil([vc hourMarkerViewLabel1], @"Should create a hourMarkerViewLabel1");
    XCTAssertTrue([vc.hourMarkerViewLabel1 isKindOfClass:[UILabel class]], @"Should be of class UILabel");
}

//  Test is perhaps duplicated below.
//  Wrote this test to make me write method setTimeForTheHourMarkerViewLabel
- (void)test_textForHourMarkerViewLabel1IsSetToAnHourString
{
    [vc setTimeForTheHourMarkerViewLabel1];
    XCTAssertEqualObjects(vc.hourMarkerViewLabel1.text, vc.hourMarkerView1.currentHourString, @"Label should be set to the currentHourString");
}

//  Test that text for a label is set to correct initial value when view is loaded.
- (void)test_hourMarkerViewLabel1HasAnHourString
{
    XCTAssertTrue([vc.hourMarkerViewLabel1.text isEqual:vc.hourMarkerView1.currentHourString]);
}

#pragma mark - HourMarkerViewLabel2 setup

- (void)testHourMarkerViewLabel2isNotNil
{
    XCTAssertNotNil([vc hourMarkerViewLabel2]);
    XCTAssertTrue([vc.hourMarkerViewLabel2 isKindOfClass:[UILabel class]]);
}

- (void)test_textForHourMarkerViewLabel2IsSetToAnHourString
{
    [vc setTimeForTheHourMarkerViewLabel2];
    XCTAssertEqualObjects(vc.hourMarkerViewLabel2.text, vc.hourMarkerView2.nextHourString, @"Label should be set to the nextHourString");
}

- (void)test_hourMarkerViewLabel2HasAnHourString
{
    XCTAssertTrue([vc.hourMarkerViewLabel2.text isEqual:vc.hourMarkerView2.nextHourString]);
}

#pragma mark - Describe Timeline moving

-(void)test_hourMarkerView1ShouldMoveToTheLeft
{
    
}



@end
