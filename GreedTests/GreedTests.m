//
//  GreedTests.m
//  GreedTests
//
//  Created by Mark Haskamp on 10/13/13.
//  Copyright (c) 2013 Mark Haskamp. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Greed.h"

@interface GreedTests : XCTestCase

@end

@implementation GreedTests {
    Greed *greed;
    
    NSMutableArray *dice;
    NSNumber *one;
    NSNumber *five;
}


- (void)setUp {
    [super setUp];
    greed = [[Greed alloc] init];
    dice = [[NSMutableArray alloc] init];
    one = [NSNumber numberWithInt:1];
    five = [NSNumber numberWithInt:5];
    
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [dice removeAllObjects];
    [super tearDown];
}

- (void)test_ASingleOne {
    [dice addObject:one];
    int s = [greed score:dice];
    XCTAssertEqual(100, s, @"a single 1 scores 100");
}

- (void)test_ASingleFive {
    [dice addObject:five];
    int s = [greed score:dice];
    XCTAssertEqual(50, s, @"a single 5 scores 50");
}

- (void)test_1_1 {
    [dice addObject:one];
    [dice addObject:[one copy]];
    int s = [greed score:dice];
    XCTAssertEqual(200, s, @"2 1's scores 1200");
}

@end
