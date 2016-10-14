//
//  ProductViewController.h
//  Grace_Matuszyk_assignment2
//
//  Created by Grace Matuszyk on 10/7/16.
//  Copyright © 2016 nyu.edu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ProductInfo.h"

@protocol SendDataDelegate <NSObject>

-(void)sendData:(ProductInfo *)product;

@end

@interface ProductViewController : UIViewController

@property (nonatomic, assign) id<SendDataDelegate> delegate;
@property (weak, nonatomic) IBOutlet UITextField *product;
@property (weak, nonatomic) IBOutlet UITextField *descr;
@property (weak, nonatomic) IBOutlet UITextField *cost;
@property (weak, nonatomic) IBOutlet UITextField *numOnHands;

-(IBAction)add:(id)sender;

@end