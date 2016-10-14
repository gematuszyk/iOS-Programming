//
//  ProductInfo.m
//  Grace_Matuszyk_assignment2
//
//  Created by Grace Matuszyk on 10/7/16.
//  Copyright © 2016 nyu.edu. All rights reserved.
//

#import "ProductInfo.h"

@implementation ProductInfo


-(instancetype) initWithValues:(NSString *)product descr:(NSString *)descr cost:(float)cost numOnHands:(int)numOnHands {
    self = [super init];
    if (self) {
        self.product = product;
        self.descr = descr;
        self.cost = cost;
        self.numOnHands = numOnHands;
    }
    return self;
}

- (id) getNumOnHands {
    return [NSString stringWithFormat:@"%d",_numOnHands];

}


-(void) incNumOnHand;
{
    _numOnHands++;
}

-(void) decNumOnHand;
{
    _numOnHands--;
}

@end
