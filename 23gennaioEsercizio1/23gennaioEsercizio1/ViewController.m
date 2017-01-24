//
//  ViewController.m
//  23gennaioEsercizio1
//
//  Created by Maurizio on 23/01/17.
//  Copyright © 2017 Maurizio. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)editingdidEndName:(id)sender {
    NSLog(@"premuto tasto invio");
    NSLog(@"valore input %@",_nameTextField.text);
    _nameLabel.text = _nameTextField.text;

    
}


@end
