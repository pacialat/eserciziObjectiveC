//
//  ViewController.h
//  23gennaioEsercizio4
//
//  Created by Maurizio on 23/01/17.
//  Copyright © 2017 Maurizio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, weak) IBOutlet UILabel *sumArray;


-(int)getRandomNumberBetween:(int)from to:(int)to;

-(void) createArrayHundredNumber;

-(void) ascendingOrderArray:(NSArray *) array;

-(void) descendingOrderArray:(NSArray *) array;
@end

