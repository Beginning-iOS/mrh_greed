//
//  Rules.m
//  Greed
//
//  Created by Mark Haskamp on 10/13/13.
//  Copyright (c) 2013 Mark Haskamp. All rights reserved.
//

#import "Rules.h"

@implementation GRDSingleOne

- (NSMutableArray *)resetDice:(NSMutableArray *)dice {
    int ndx = 0;
    while ([[dice objectAtIndex:ndx] intValue] != 1) {
        ndx++;
    }
    [dice removeObjectAtIndex:ndx];
    return dice;
}

@end

@implementation GRDSingleFive

- (NSMutableArray *)resetDice:(NSMutableArray *)dice {
    int ndx = 0;
    while ([[dice objectAtIndex:ndx] intValue] != 5) {
        ndx++;
    }
    [dice removeObjectAtIndex:ndx];
    return dice;
}

@end



@implementation GRDEmpty

- (NSMutableArray *)resetDice:(NSMutableArray *)dice {
    [dice removeAllObjects];
    return dice;
}

@end
