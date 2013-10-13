//
//  GRDScorer.m
//  Greed
//
//  Created by Mark Haskamp on 10/13/13.
//  Copyright (c) 2013 Mark Haskamp. All rights reserved.
//

#import "GRDScorer.h"

@implementation GRDScorer

@synthesize score;


+ (NSMutableArray *)RemoveASingleDie:(int)die fromDice:(NSMutableArray *)dice {
    int ndx = 0;
    while ([[dice objectAtIndex:ndx] intValue] != die) {
        ndx++;
    }
    [dice removeObjectAtIndex:ndx];
    return dice;
}


@end