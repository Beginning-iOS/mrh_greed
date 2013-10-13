//
//  GRDScorer.h
//  Greed
//
//  Created by Mark Haskamp on 10/13/13.
//  Copyright (c) 2013 Mark Haskamp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GRDScorer : NSObject

@property(nonatomic) int score;

- (NSMutableArray *)resetDice:(NSMutableArray *)dice;

@end
