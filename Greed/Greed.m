//
//  Greed.m
//  Greed
//
//  Created by Mark Haskamp on 10/13/13.
//  Copyright (c) 2013 Mark Haskamp. All rights reserved.
//

#import "Greed.h"
#import "GRDScorerFactory.h";
#import "GRDScorer.h"

@implementation Greed
- (int)score:(NSMutableArray *)dice {
    
    int totalScore = 0;
    while ([dice count] > 0) {
        GRDScorer *scorer = [GRDScorerFactory GetScorer:dice];
        totalScore += scorer.score;
        dice = [scorer resetDice:dice];
    }

    return totalScore;
}
@end
