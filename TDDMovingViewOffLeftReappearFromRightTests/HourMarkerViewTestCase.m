//
//  HourMarkerViewTestCase.m
//  TDDMovingViewOffLeftReappearFromRight
//
//  Created by Stefan Claussen on 11/10/2014.
//  Copyright (c) 2014 One foot after the other. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "HourMarkerView.h"

@interface HourMarkerViewTestCase : XCTestCase
{
    HourMarkerView *hourMarkerView;
}
@end

@implementation HourMarkerViewTestCase

- (void)setUp {
    [super setUp];
    hourMarkerView = [[HourMarkerView alloc] init];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    hourMarkerView = nil;
    [super tearDown];
}

- (void)testHasAStringPropertyForTheHour
{
    hourMarkerView.hourString = @"3pm";
    XCTAssertNotNil(hourMarkerView.hourString, @"The hourString should be set");
}

- (void)test_hourStringIsCurrentHourPlusOneAndInTheCorrectFormat
{
    NSDate *hourPlusOne = [[NSDate date] dateByAddingTimeInterval:60 *60];
    NSDateFormatter *hourDateFormatter=[[NSDateFormatter alloc] init];
    [hourDateFormatter setDateFormat:@"h a"];
    NSString *hourPlusOneFormattedString = [[hourDateFormatter stringFromDate:hourPlusOne] lowercaseString];
    XCTAssertEqualObjects(hourPlusOneFormattedString, hourMarkerView.hourString, @"hourString should be %@, current hour plus one, and formatted 12 hour am or pm", hourPlusOneFormattedString);
}









- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
