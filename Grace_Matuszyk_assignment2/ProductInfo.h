//
//  ProductInfo.h
//  Grace_Matuszyk_assignment2
//
//  Created by Grace Matuszyk on 10/7/16.
//  Copyright © 2016 nyu.edu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ProductInfo : NSObject

@property NSString *product;
@property NSString *descr;
@property float cost;
@property int numOnHands;

-(instancetype)initWithValues:(NSString *)product descr:(NSString *)descr cost:(float)cost numOnHands:(int)numOnHands;

-(id) getNumOnHands;
-(void) incNumOnHand;
-(void) decNumOnHand;

@end
