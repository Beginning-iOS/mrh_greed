//
//  Rules.m
//  Greed
//
//  Created by Mark Haskamp on 10/13/13.
//  Copyright (c) 2013 Mark Haskamp. All rights reserved.
//

#import "Rules.h"

@implementation GRDTripleOne

- (NSMutableArray *)resetDice:(NSMutableArray *)dice {

    for (int i=0; i<3; i++) {
        dice = [GRDScorer RemoveASingleDie:1 fromDice:dice];
    }
    return dice;
}

@end


@implementation GRDTriples

@synthesize _die;

-(id)initWithDie:(int)die {
    self = [super init];
    self._die = die;
    return self;
}

- (NSMutableArray *)resetDice:(NSMutableArray *)dice {
    
    for (int i=0; i<3; i++) {
        dice = [GRDScorer RemoveASingleDie:_die fromDice:dice];
    }
    return dice;
}

@end


@implementation GRDSingleOne

- (NSMutableArray *)resetDice:(NSMutableArray *)dice {
    dice = [GRDScorer RemoveASingleDie:1
                              fromDice:dice];
    
    return dice;
}

@end

@implementation GRDSingleFive

- (NSMutableArray *)resetDice:(NSMutableArray *)dice {
    dice = [GRDScorer RemoveASingleDie:5
                              fromDice:dice];
    
    return dice;
}

@end



@implementation GRDEmpty

- (NSMutableArray *)resetDice:(NSMutableArray *)dice {
    [dice removeAllObjects];
    return dice;
}

@end
