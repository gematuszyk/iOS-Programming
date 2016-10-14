//
//  ProductViewController.m
//  Grace_Matuszyk_assignment2
//
//  Created by Grace Matuszyk on 10/7/16.
//  Copyright © 2016 nyu.edu. All rights reserved.
//

#import "ProductViewController.h"

@interface ProductViewController ()

@end

@implementation ProductViewController

-(void) viewDidLoad {
    [super viewDidLoad];
}

-(void) didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(void) viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    [_delegate sendData:[[ProductInfo alloc] initWithValues:self.product.text descr:self.descr.text cost:self.cost.text.floatValue numOnHands:self.numOnHands.text.intValue]];
}
     
-(IBAction)add:(id)sender {
         
}

@end
