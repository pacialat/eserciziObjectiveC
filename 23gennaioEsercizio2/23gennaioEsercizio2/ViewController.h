//
//  ViewController.h
//  23gennaioEsercizio2
//
//  Created by Maurizio on 23/01/17.
//  Copyright © 2017 Maurizio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, weak) IBOutlet UITextField *numberTextField;

@property (nonatomic, weak) IBOutlet UILabel *resultLabel;

- (IBAction)editingdidEndNumber:(id)sender;


@end

