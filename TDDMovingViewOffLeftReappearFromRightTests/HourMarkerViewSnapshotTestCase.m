//
//  HourMarkerViewSnapshotTestCase.m
//  TDDMovingViewOffLeftReappearFromRight
//
//  Created by Stefan Claussen on 18/10/2014.
//  Copyright (c) 2014 One foot after the other. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "FBSnapshotTestCase.h"
#import "HourMarkerView.h"

@interface HourMarkerViewSnapshotTestCase : FBSnapshotTestCase
{
    HourMarkerView *hourMarkerView;
}

@end

@implementation HourMarkerViewSnapshotTestCase

- (void)setUp {
    [super setUp];
    hourMarkerView = [[HourMarkerView alloc] init];
    self.recordMode = YES;
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testCustomDrawHourViewMethod
{
    [hourMarkerView setBackgroundColor:[UIColor blueColor]];
    [hourMarkerView drawRect:(CGRectMake(75.0f, 92.0f, 2.0f, 10.0f))];
    
    FBSnapshotVerifyView(hourMarkerView, @"Custom hour view failed to draw");
}



@end
