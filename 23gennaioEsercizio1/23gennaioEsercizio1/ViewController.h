//
//  ViewController.h
//  23gennaioEsercizio1
//
//  Created by Maurizio on 23/01/17.
//  Copyright © 2017 Maurizio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, weak) IBOutlet UITextField *nameTextField;

@property (nonatomic, weak) IBOutlet UILabel *nameLabel;

- (IBAction)editingdidEndName:(id)sender;


@end

