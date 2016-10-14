//
//  StockInventory.h
//  Grace_Matuszyk_assign1
//
//  Created by Grace Matuszyk on 9/29/16.
//  Copyright © 2016 Grace Matuszyk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StockInventory : NSObject


-(BOOL) Add_Item: (NSString *) key :(NSString *) description :(float) cost;

-(void) Add_Stock: (NSString *) key :(int) num_on_hand;

-(void) Delete_Item: (NSString *) key;

-(void) Sell_Item: (NSString *) key;

-(void) Print_Object;

@end
