//
//  ViewController.h
//  23GennaioEsercizio3
//
//  Created by Maurizio on 23/01/17.
//  Copyright © 2017 Maurizio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, weak) IBOutlet UILabel *randomNumberLabel;

-(int)getRandomNumberBetween:(int)from to:(int)to;

-(void)writeToLabelRandomNumber:(int)num;
-(IBAction)buttonYesPressed:(id)sender;
-(IBAction)buttonNoPressed:(id)sender;
-(void) displayUIAlertView;
-(void) validateAnswer;

@end

