//
//  GRDScorerFactory.m
//  Greed
//
//  Created by Mark Haskamp on 10/13/13.
//  Copyright (c) 2013 Mark Haskamp. All rights reserved.
//

#import "GRDScorerFactory.h"
#import "Rules.h"

@implementation GRDScorerFactory

+ (GRDScorer *)GetScorer:(NSMutableArray *)dice {
    
    if ([self DiceContainsDie:1
             withCountAtLeast:3
                      forDice:dice])
    {
        GRDScorer *scorer = [[GRDTripleOne alloc] init];
        scorer.score = 1000;
        return scorer;
    }
    
    for (int i=2; i<=6;i++) {
        if ([self DiceContainsDie:i
                 withCountAtLeast:3
                          forDice:dice])
        {
            GRDScorer *scorer = [[GRDTriples alloc] initWithDie:i];
            scorer.score = i * 100;
            return scorer;
        }
    }
    
    if ([self DiceContainsDie:1
             withCountAtLeast:1
                      forDice:dice])
    {

        GRDScorer *scorer = [[GRDSingleOne alloc] init];
        scorer.score = 100;
        return scorer;
    }
    
    else if ([self DiceContainsDie:5
                  withCountAtLeast:1
                           forDice:dice])
    {
        GRDScorer *scorer = [[GRDSingleFive alloc] init];
        scorer.score = 50;
        return scorer;
    }
    
    return [[GRDEmpty alloc] init];
}



+ (bool) DiceContainsDie:(int)die
        withCountAtLeast:(int)count
                 forDice:(NSMutableArray *)dice
{
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF == %d", die];
    NSArray *filteredDice = [dice filteredArrayUsingPredicate:predicate];
    
    if ([filteredDice count] >= count) {
        return true;
    }
    
    
    return false;
}



@end
