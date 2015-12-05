//
//  ViewController.m
//  textField
//
//  Created by kenn on 2015/12/5.
//  Copyright © 2015年 kenn. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UITextField *tf1;
    UITextField *tf2;
    UITextField *tf3;
    UITextField *tf4;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    tf1 = [[UITextField alloc]initWithFrame:CGRectMake(20, 100, 50, 30)];
    tf1.placeholder = @"0123";
    tf1.layer.borderWidth = 1;
    tf1.layer.borderColor = [UIColor blackColor].CGColor;
    tf1.layer.cornerRadius = 5;
    [self.view addSubview:tf1];
    
    tf2 = [[UITextField alloc]initWithFrame:CGRectMake(tf1.frame.origin.x+tf1.frame.size.width+10, 100, 50, 30)];
    tf2.placeholder = @"4567";
    tf2.layer.borderWidth = 1;
    tf2.layer.borderColor = [UIColor blackColor].CGColor;
    tf2.layer.cornerRadius = 5;
    [self.view addSubview:tf2];
    
    tf3 = [[UITextField alloc]initWithFrame:CGRectMake(tf2.frame.origin.x+tf2.frame.size.width+10, 100, 50, 30)];
    tf3.placeholder = @"8910";
    tf3.layer.borderWidth = 1;
    tf3.layer.borderColor = [UIColor blackColor].CGColor;
    tf3.layer.cornerRadius = 5;
    [self.view addSubview:tf3];
    
    tf4 = [[UITextField alloc]initWithFrame:CGRectMake(tf3.frame.origin.x+tf3.frame.size.width+10, 100, 50, 30)];
    tf4.placeholder = @"1112";
    tf4.layer.borderWidth = 1;
    tf4.layer.borderColor = [UIColor blackColor].CGColor;
    tf4.layer.cornerRadius = 5;
    [self.view addSubview:tf4];
    
    [tf1 addTarget:self
            action:@selector(textFieldDidChange:)
  forControlEvents:UIControlEventEditingChanged];
    [tf2 addTarget:self
            action:@selector(textFieldDidChange:)
  forControlEvents:UIControlEventEditingChanged];
    [tf3 addTarget:self
            action:@selector(textFieldDidChange:)
  forControlEvents:UIControlEventEditingChanged];
    [tf4 addTarget:self
            action:@selector(textFieldDidChange:)
  forControlEvents:UIControlEventEditingChanged];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)textFieldDidChange:(UITextField *)textField {
    
    
    
    if (textField == tf1&&[[tf1 text]length]==4) {
        [tf1 resignFirstResponder];
        [tf2 becomeFirstResponder];
    }
    else if (textField == tf2&&[[tf2 text]length]==4) {
        [tf2 resignFirstResponder];
        [tf3 becomeFirstResponder];
    }
    else if (textField == tf3&&[[tf3 text]length]==4) {
        [tf3 resignFirstResponder];
        [tf4 becomeFirstResponder];
    }
}

@end
