//
//  Rules.h
//  Greed
//
//  Created by Mark Haskamp on 10/13/13.
//  Copyright (c) 2013 Mark Haskamp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GRDScorer.h"

@interface GRDTripleOne : GRDScorer
@end

@interface GRDTriples : GRDScorer

@property(nonatomic)int _die;

- (id)initWithDie:(int)die;
@end

@interface GRDSingleOne : GRDScorer
@end


@interface GRDSingleFive : GRDScorer
@end


@interface GRDEmpty : GRDScorer
@end


