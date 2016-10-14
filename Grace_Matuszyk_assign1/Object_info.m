//
//  Object_info.m
//  Grace_Matuszyk_assign1
//
//  Created by Grace Matuszyk on 9/21/16.
//  Copyright © 2016 Grace Matuszyk. All rights reserved.
//

#import "Object_info.h"

@implementation Object_info {
    NSString *description;
    float cost;
    int num_on_hand;
}

-(void) setDescription: (NSString *) newDescription{
    description = newDescription ;
}
-(NSString *) getDescription {
    return description;
}

-(void) setCost: (float) newCost {
    cost = newCost;
}
-(float) getCost {
    return cost;
}

-(void) setNumOnHand {
    num_on_hand = 0;
}
-(int) getNumOnHand {
    return num_on_hand;
}

    /////////////////////////////// methods for StockInventory Files

-(void) add_stock: (int) newNumOnHand {
    num_on_hand += newNumOnHand;
}

-(void) sell_item{
    num_on_hand -= 1;
}
//-(void) Print_Object {
//    NSLog(@" Description: %@ Cost: %f Num_on_Hand: %i", description, cost, num_on_hand);
//}
-(NSString*) toString{
    char *d = [description UTF8String];
    
    NSString *objectString = [NSString stringWithFormat:@"%-30s %-9.02f %i\n", d, cost, num_on_hand];
    return objectString;
};

@end
