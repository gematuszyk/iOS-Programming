//
//  main.m
//  Grace_Matuszyk_assign1
//
//  Created by Grace Matuszyk on 9/21/16.
//  Copyright © 2016 Grace Matuszyk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StockInventory.h"
#import "Object_info.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
    

        StockInventory *stockInventory = [[StockInventory alloc] init];
        
        [stockInventory Add_Item:@"iPhone 7" :@"Apple's iPhone 6 minus plug" :769.00];
        [stockInventory Add_Item:@"Galaxy Note7" :@"Samsung's exploding phone" :850.00];
        [stockInventory Add_Item:@"40-inch TV" :@"Sony's LED TV" :298.00];
        [stockInventory Add_Item:@"Kindle Reader" :@"Amazon's E-Reader" :79.99];
        [stockInventory Add_Item:@"Apple Watch" :@"Series 2 - Aluminum Case" :299.00];

        printf("   Key                  Description               Cost     Num_on_Hand");
        [stockInventory Print_Object];
        
        [stockInventory Add_Stock: @"iPhone 7" : 2];
        [stockInventory Add_Stock: @"Galaxy Note7" : 90];
        [stockInventory Add_Stock: @"40-inch TV" : 89];
        [stockInventory Add_Stock: @"Kindle Reader" : 200];
        [stockInventory Add_Stock: @"Apple Watch" : 9];
        
        printf("\nStock Added...\n");
        [stockInventory Print_Object];
        
        [stockInventory Delete_Item: @"40-inch TV"];
        
        printf("\nStock left after deletion...\n");
        [stockInventory Print_Object];
        
        [stockInventory Sell_Item:@"iPhone 7"];
        [stockInventory Sell_Item: @"Galaxy Note7"];
        [stockInventory Sell_Item:@"Apple Watch"];
        [stockInventory Sell_Item: @"Kindle Reader"];
        
        printf("\nStock left after selling...\n");
        [stockInventory Print_Object];
        
    }
    return 0;
}
