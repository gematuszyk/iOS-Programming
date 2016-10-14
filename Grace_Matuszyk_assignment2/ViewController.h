//
//  ViewController.h
//  Grace_Matuszyk_assignment2
//
//  Created by Grace Matuszyk on 10/7/16.
//  Copyright © 2016 nyu.edu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ProductInfo.h"

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextView *textView;

@property (weak, nonatomic)  IBOutlet UITextField *product;
@property (weak, nonatomic)  IBOutlet UITextField *descr;
@property (weak, nonatomic)  IBOutlet UITextField *cost;
@property (weak, nonatomic)  IBOutlet UITextField *numOnHands;

@property (strong, nonatomic)  IBOutlet UIImageView *myViewpix;

@property (weak, nonatomic) IBOutlet UIButton *forwardButton;
@property (weak, nonatomic) IBOutlet UIButton *backwardButton;
@property (weak, nonatomic) IBOutlet UIButton *incNumOnHands;
@property (weak, nonatomic) IBOutlet UIButton *decNumOnHands;
@property (weak, nonatomic) IBOutlet UIButton *numOnHandsB;
@property (weak, nonatomic) IBOutlet UIButton *addRecord;
@property (weak, nonatomic) IBOutlet UIButton *add;

@property int NUM;

- (IBAction)forward:(id)sender;
- (IBAction)backward:(id)sender;
- (IBAction)incNum:(id)sender;
- (IBAction)decNum:(id)sender;
- (IBAction)num:(id)sender;
- (IBAction)addRecord:(id)sender;
- (IBAction)addFinal:(id)sender;



@end

