//
//  ViewController.m
//  Grace_Matuszyk_assignment2
//
//  Created by Grace Matuszyk on 10/7/16.
//  Copyright © 2016 nyu.edu. All rights reserved.
//

#import "ViewController.h"
#import "ProductInfo.h"
#import "ProductViewController.h"

@interface ViewController () <SendDataDelegate>

@end

@implementation ViewController

static NSMutableArray *products = nil;

@synthesize NUM = _NUM;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.add setHidden:YES];
    [self loadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


+(void)initialize {
    if (!products) {
        products = [NSMutableArray arrayWithObjects:
                [[ProductInfo alloc] initWithValues:@"Blueberry Pie" descr:@"Fresh, sweet blueberries" cost:8.00 numOnHands:5],
                [[ProductInfo alloc] initWithValues:@"Chocolate Chip Cookie" descr:@"Chewy with crisp edges" cost:1.50 numOnHands:32],
                [[ProductInfo alloc] initWithValues:@"Red Velvet Cupcake" descr:@"Moist and fluffy" cost:3.50 numOnHands:20],
                [[ProductInfo alloc] initWithValues:@"Apple Cinnamon Muffin" descr:@"Chunks of fresh apples" cost:2.50 numOnHands:11],
                [[ProductInfo alloc] initWithValues:@"Coffee Cake" descr:@"Buttery crumb-topped" cost:10.00 numOnHands:3], nil];
    }
}

-(void) loadData {
    if (_NUM < [products count]) {
        ProductInfo *info = products[_NUM];
        self.product.text = info.product;
        self.descr.text = info.descr;
        self.cost.text = [NSString stringWithFormat:@"%.02f", info.cost];
        self.numOnHands.text = [NSString stringWithFormat:@"%d", info.numOnHands];
        [self.forwardButton setEnabled:YES];
        [self.backwardButton setEnabled:YES];
        [self.numOnHandsB setEnabled:YES];
        [self.add setHidden:YES];
    }
    //  if you are at the front of the array and can't go backwards
    if(_NUM == 0) {
        [self.backwardButton setEnabled:NO];
        UIImage *thisImage = [UIImage imageNamed:@"pie.jpg"];
        _myViewpix = [[UIImageView alloc] initWithImage:thisImage];
        _myViewpix.frame = CGRectMake(80,50, 260,170);
    }
    if(_NUM == 1) {
        UIImage *thisImage = [UIImage imageNamed:@"cookie.png"];
        _myViewpix = [[UIImageView alloc] initWithImage:thisImage];
        _myViewpix.frame = CGRectMake(80,50, 260,170);
    }
    if(_NUM == 2) {
        UIImage *thisImage = [UIImage imageNamed:@"cupcake.png"];
        _myViewpix = [[UIImageView alloc] initWithImage:thisImage];
        _myViewpix.frame = CGRectMake(80,50, 260,170);
    }
    if(_NUM == 3) {
        UIImage *thisImage = [UIImage imageNamed:@"muffin.png"];
        _myViewpix = [[UIImageView alloc] initWithImage:thisImage];
        _myViewpix.frame = CGRectMake(80,50, 260,170);
    }
    if(_NUM == 4) {
        UIImage *thisImage = [UIImage imageNamed:@"cake.jpg"];
        _myViewpix = [[UIImageView alloc] initWithImage:thisImage];
        _myViewpix.frame = CGRectMake(80,50, 260,170);
    }
    //  if you are at the end of the array and can't go further
    if(_NUM == [products count] - 1) {
        [self.forwardButton setEnabled:NO];
    }
    if(_NUM == [products count] - 1 && _NUM != 4) {
        UIImage *thisImage = [UIImage imageNamed:@"noimage.png"];
        _myViewpix = [[UIImageView alloc] initWithImage:thisImage];
        _myViewpix.frame = CGRectMake(80,50, 260,170);
    }
    [self.view addSubview:_myViewpix];
    
    
}
//  when the forwards button is clicked, increment the array and load the data for that array
-(IBAction)forward:(id)sender {
    NSLog(@"Forward %d", _NUM);
    if(_NUM < [products count] - 1) {
        _NUM++;
    }
    [self loadData];
}

//  when the backwards button is clicked, decrement the array and load the data for that array
-(IBAction)backward:(id)sender {
    NSLog(@"Backward %d", _NUM);
    if(_NUM) {
        _NUM--;
    }
    [self loadData];
}

-(IBAction)num:(id)sender {
    if(_NUM < [products count] -1)
        _NUM++;
}

- (IBAction)incNum:(id)sender {
    [[products objectAtIndex:_NUM] incNumOnHand];
    _numOnHands.text= [[products objectAtIndex:_NUM] getNumOnHands];
}
- (IBAction)decNum:(id)sender {
    [[products objectAtIndex:_NUM] decNumOnHand];
    _numOnHands.text= [[products objectAtIndex:_NUM] getNumOnHands];
}

-(IBAction)addRecord:(id)sender {
    [self.backwardButton setHidden:YES];
    [self.forwardButton setHidden:YES];
    [self.incNumOnHands setHidden:YES];
    [self.decNumOnHands setHidden:YES];
    [self.numOnHandsB setHidden:YES];
    [self.addRecord setHidden:YES];
    [self.add setHidden:NO];
    
    self.product.text = @"Enter a new product";
    self.descr.text = @"Enter a description";
    self.cost.text = @"Enter a cost";
    self.numOnHands.text = @"Enter num on hands";
}

-(IBAction)addFinal:(id)sender {
    [self.add setHidden: YES];
    [self.backwardButton setHidden: NO];
    [self.forwardButton setHidden: NO];
    [self.incNumOnHands setHidden:NO];
    [self.decNumOnHands setHidden:NO];
    [self.numOnHandsB setHidden: NO];
    [self.addRecord setHidden: NO];
    
    ProductInfo *productInfo = [[ProductInfo alloc] initWithValues:self.product.text descr:self.descr.text cost:self.cost.text.floatValue numOnHands:self.numOnHands.text.intValue];
    [products addObject:productInfo];
    _NUM = (int)[products count] - 1;
    [self loadData];
}



@end
