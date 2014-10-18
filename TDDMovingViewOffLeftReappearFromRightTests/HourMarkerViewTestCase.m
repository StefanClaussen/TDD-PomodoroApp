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

- (void)testHasAStringPropertyForTheCurrentHour
{
    hourMarkerView.currentHourString = @"3pm";
    XCTAssertNotNil(hourMarkerView.currentHourString, @"currentHourString should be set to the past hour");
}

- (void)test_currentHourStringIsThePastHourInCorrectFormat
{
    NSDateFormatter *hourDateFormatter = [[NSDateFormatter alloc] init];
    [hourDateFormatter setDateFormat:@"h a"];
    NSString *currentHourFormattedString = [[hourDateFormatter stringFromDate:[NSDate date]] lowercaseString];
    XCTAssertEqualObjects(currentHourFormattedString, hourMarkerView.currentHourString, @"currentHourString should be %@ and formatted 12 hour am or pm", currentHourFormattedString);
}

- (void)testHasAStringPropertyForTheNextHour
{
    hourMarkerView.nextHourString = @"4pm";
    XCTAssertNotNil(hourMarkerView.nextHourString, @"nextHourString should be set to the next hour");
}

- (void)test_hourStringIsCurrentHourPlusOneAndInTheCorrectFormat
{
    NSDate *hourPlusOne = [[NSDate date] dateByAddingTimeInterval:60 *60];
    NSDateFormatter *hourDateFormatter=[[NSDateFormatter alloc] init];
    [hourDateFormatter setDateFormat:@"h a"];
    NSString *hourPlusOneFormattedString = [[hourDateFormatter stringFromDate:hourPlusOne] lowercaseString];
    XCTAssertEqualObjects(hourPlusOneFormattedString, hourMarkerView.nextHourString, @"hourString should be %@, current hour plus one, and formatted 12 hour am or pm", hourPlusOneFormattedString);
}










@end
