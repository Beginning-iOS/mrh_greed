//
//  GRDScorerFactory.h
//  Greed
//
//  Created by Mark Haskamp on 10/13/13.
//  Copyright (c) 2013 Mark Haskamp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GRDScorer.h"

@interface GRDScorerFactory : NSObject

+ (bool)DiceContainsDie:(int)die withCountAtLeast:(int)die forDice:(NSMutableArray *)dice;

+ (GRDScorer *) GetScorer:(NSMutableArray *)dice;



@end
