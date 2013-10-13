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
    NSNumber *two;
    NSNumber *three;
    NSNumber *four;
    NSNumber *five;
    NSNumber *six;
}


- (void)setUp {
    [super setUp];
    greed = [[Greed alloc] init];
    dice = [[NSMutableArray alloc] init];
    one = [NSNumber numberWithInt:1];
    two = [NSNumber numberWithInt:2];
    three = [NSNumber numberWithInt:3];
    four = [NSNumber numberWithInt:4];
    five = [NSNumber numberWithInt:5];
    six = [NSNumber numberWithInt:6];
    
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [dice removeAllObjects];
    [super tearDown];
}

- (void)test_1 {
    [dice addObject:one];
    int s = [greed score:dice];
    XCTAssertEqual(100, s, @"a single 1 scores 100");
}

- (void)test_5 {
    [dice addObject:five];
    int s = [greed score:dice];
    XCTAssertEqual(50, s, @"a single 5 scores 50");
}

- (void)test_1_1 {
    [dice addObject:one];
    [dice addObject:[one copy]];
    int s = [greed score:dice];
    XCTAssertEqual(200, s, @"2 1's scores 200");
}

- (void)test_1_2_5 {
    [dice addObject:one];
    [dice addObject:two];
    [dice addObject:five];
    int s = [greed score:dice];
    XCTAssertEqual(150, s, @"[1,2,5] scores 150");
}

- (void)test_1_1_1 {
    [dice addObject:one];
    [dice addObject:[one copy]];
    [dice addObject:[one copy]];
    int s = [greed score:dice];
    XCTAssertEqual(1000, s, @"[1,1,1] scores 1000");
}

- (void)test_1_1_1_1 {
    [dice addObject:one];
    [dice addObject:[one copy]];
    [dice addObject:[one copy]];
    [dice addObject:[one copy]];
    int s = [greed score:dice];
    XCTAssertEqual(1100, s, @"[1,1,1,1] scores 1100");
}

- (void)test_1_1_1_1_5 {
    [dice addObject:one];
    [dice addObject:[one copy]];
    [dice addObject:[one copy]];
    [dice addObject:[one copy]];
    [dice addObject:five];
    int s = [greed score:dice];
    XCTAssertEqual(1150, s, @"[1,1,1,1,5] scores 1150");
}

- (void)test_2_2_2 {
    [dice addObject:two];
    [dice addObject:[two copy]];
    [dice addObject:[two copy]];
    int s = [greed score:dice];
    XCTAssertEqual(200, s, @"[2,2,2] scores 200");
}



@end
