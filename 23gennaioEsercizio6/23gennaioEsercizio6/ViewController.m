//
//  ViewController.m
//  23gennaioEsercizio6
//
//  Created by Maurizio on 24/01/17.
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

-(IBAction)buttonPressed:(id)sender {
    NSLog(@"Nome %@ cognome %@ età %@",_nameTextField.text, _surnameTextField.text, _ageTextField.text);
}


@end
