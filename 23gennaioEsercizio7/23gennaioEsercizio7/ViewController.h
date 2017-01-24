//
//  ViewController.h
//  23gennaioEsercizio7
//
//  Created by Maurizio on 24/01/17.
//  Copyright © 2017 Maurizio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, weak) IBOutlet UILabel *timeLabel;


- (void)contaSecondi;
- (void)timeFormatted;
@end

