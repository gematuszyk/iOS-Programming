//
//  StockInventory.m
//  Grace_Matuszyk_assign1
//
//  Created by Grace Matuszyk on 9/29/16.
//  Copyright © 2016 Grace Matuszyk. All rights reserved.
//

#import "Object_info.h"
#import "StockInventory.h"

@implementation StockInventory {
    
    NSMutableDictionary *stockInventory;
}


-(BOOL) Add_Item:(NSString*) key : (NSString*) description : (float) cost{
    Object_info *info = [[Object_info alloc] init];
    [info setDescription : description];
    [info setCost : cost];
    [info setNumOnHand];
    
    if (stockInventory == nil){
        stockInventory = [[NSMutableDictionary alloc] init];
        [stockInventory setObject:info forKey:key];
        return FALSE;
    }
    if ([stockInventory objectForKey:key] != nil) {
        return TRUE;
    }
    [stockInventory setObject:info forKey:key];
    return FALSE;
};


-(void) Add_Stock: (NSString*) key : (int) newNumOnHand {
    Object_info *info = [stockInventory objectForKey:key];
    [info add_stock: newNumOnHand];
    
};

-(void) Delete_Item: (NSString*) key{
    if ([stockInventory objectForKey:key] == nil) {
        NSLog(@" %@ is not in inventory", key);
        return;
    }
    [stockInventory removeObjectForKey: key];
};

-(void) Sell_Item: (NSString*) key{
    Object_info *info = [stockInventory objectForKey:key];
    [info sell_item];
};

-(void) Print_Object {

    printf("\n");
    //    NSDictionary API
    [stockInventory enumerateKeysAndObjectsUsingBlock:^(NSString* key, Object_info* objectItems, BOOL *end){
         char *objectInformaiton = [[objectItems toString] UTF8String];
         char *keyName = [key UTF8String];
         printf("%-15s -> %-s", keyName, objectInformaiton);
    }];
    
        

}



@end
