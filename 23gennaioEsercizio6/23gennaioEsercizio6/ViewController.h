//
//  ViewController.h
//  23gennaioEsercizio6
//
//  Created by Maurizio on 24/01/17.
//  Copyright © 2017 Maurizio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, weak) IBOutlet UITextField *nameTextField;

@property (nonatomic, weak) IBOutlet UITextField *surnameTextField;

@property (nonatomic, weak) IBOutlet UITextField *ageTextField;



-(IBAction)buttonPressed:(id)sender;

@end

