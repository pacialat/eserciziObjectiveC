//
//  ViewController.m
//  23gennaioEsercizio2
//
//  Created by Maurizio on 23/01/17.
//  Copyright © 2017 Maurizio. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
int _numero;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)editingdidEndNumber:(id)sender {
    NSLog(@"premuto tasto invio");
    _numero = _numberTextField.text.intValue;
    
    if (_numero % 2 == 0) {
        NSLog(@"Il numero è pari");
        _resultLabel.text = @"Il numero è pari";
    } else {
        NSLog(@"Il numero è dispari");
        _resultLabel.text = @"Il numero è dispari";
    }
}


@end
