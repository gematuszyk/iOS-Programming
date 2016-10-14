//
//  Object_info.h
//  Grace_Matuszyk_assign1
//
//  Created by Grace Matuszyk on 9/21/16.
//  Copyright © 2016 Grace Matuszyk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Object_info : NSMutableDictionary {

}

- (void) setDescription: (NSString *) newDescription;
- (NSString *) getDescription;

- (void) setCost: (float) newCost;
- (float) getCost;

- (void) setNumOnHand;
- (int) getNumOnHand;

- (void) add_stock : (int) newNumOnHand;
- (void) sell_item;
//- (void) Print_Object;
- (NSString*) toString;

@end
