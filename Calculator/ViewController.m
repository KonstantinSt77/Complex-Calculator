//
//  ViewController.m
//  Calculator
//
//  Created by Kostya on 24.01.16.
//  Copyright © 2016 Stolyarenko K.S. All rights reserved.
//

#import "ViewController.h"
#define firstOPerFirstResp self.firstOperantTextField.isFirstResponder
#define secondOPerFirstResp self.secondOperantTextField.isFirstResponder

#define firsttext self.firstOperantTextField.text
#define secondText self.secondOperantTextField.text

#define firstComplex self.firstComplexOperantTextField.text
#define secondComplex self.secondComplexOperantTextField.text

#define firstComplexResp self.firstComplexOperantTextField.isFirstResponder
#define secondComplexResp self.secondComplexOperantTextField.isFirstResponder

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *firstOperantTextField;
@property (weak, nonatomic) IBOutlet UITextField *firstComplexOperantTextField;
@property (weak, nonatomic) IBOutlet UITextField *secondOperantTextField;
@property (weak, nonatomic) IBOutlet UITextField *secondComplexOperantTextField;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
@property (assign, nonatomic) NSInteger firstNum;

- (IBAction)add:(id)sender;
- (IBAction)subb:(id)sender;
- (IBAction)arg:(id)sender;
- (IBAction)mod:(id)sender;

- (IBAction)one:(id)sender;
- (IBAction)tue:(id)sender;
- (IBAction)three:(id)sender;
- (IBAction)four:(id)sender;
- (IBAction)six:(id)sender;
- (IBAction)seven:(id)sender;
- (IBAction)eight:(id)sender;
- (IBAction)nine:(id)sender;
- (IBAction)null:(id)sender;
- (IBAction)five:(id)sender;
- (IBAction)equal:(id)sender;
@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UITapGestureRecognizer *tapView = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(endEditing)];
    [self.view addGestureRecognizer:tapView];
}

- (void)endEditing {
    [self.view endEditing:YES];
}

#pragma mark - Actions

- (IBAction)add:(id)sender {
    if ([self checkTextFields]) {
        NSInteger first = [firsttext integerValue];
        NSInteger second = [secondText integerValue];
        NSInteger firstCC = [firstComplex integerValue];
        NSInteger secondCC = [secondComplex integerValue];
        NSInteger resultReal = first + second;
        NSInteger resultIm = firstCC + secondCC;
        NSString *resultString;
        resultString = [NSString stringWithFormat:@"%li + %lii",resultReal,resultIm];
        self.resultLabel.text = resultString;
    }
}
- (IBAction)subb:(id)sender {
    if ([self checkTextFields]) {
        NSInteger first = [firsttext integerValue];
        NSInteger second = [secondText integerValue];
        NSInteger firstCC = [firstComplex integerValue];
        NSInteger secondCC = [secondComplex integerValue];
        NSInteger resultReal = first - second;
        NSInteger resultIm = firstCC - secondCC;
        NSString *resultString;
        resultString = [NSString stringWithFormat:@"%li + %lii",resultReal,resultIm];
        self.resultLabel.text = resultString;
    }
}


- (IBAction)arg:(id)sender {
    if ([self checkTextFields]) {
        NSInteger first = [firsttext integerValue];
        NSInteger firstCC = [firstComplex integerValue];
        NSString *resultString;
        if (first>0) {
            resultString = [NSString stringWithFormat:@"Argument = Arctan(%li/%li)",firstCC,first];
            self.resultLabel.text = resultString;
        }
        else if (first<0 && firstCC>0)
        {
            resultString = [NSString stringWithFormat:@"Argument = Arctan(%li/%li)+П",firstCC,first];
            self.resultLabel.text = resultString;
        }
        else if (first<0 && firstCC<0)
        {
            resultString = [NSString stringWithFormat:@"Argument = Arctan(%li/%li)-П",firstCC,first];
            self.resultLabel.text = resultString;
        }
        else if (first==0 && firstCC>0)
        {
            resultString = [NSString stringWithFormat:@"Argument = П/2"];
            self.resultLabel.text = resultString;
        }
        else if (first==0 && firstCC<0)
        {
            resultString = [NSString stringWithFormat:@"Argument = -П/2"];
            self.resultLabel.text = resultString;
        }
        

    }
}

- (IBAction)mod:(id)sender {
    if ([self checkTextFields]) {
        NSInteger first = [firsttext integerValue];
        NSInteger firstCC = [firstComplex integerValue];
        double modResult = sqrt(pow(first,2)+pow(firstCC,2));
        NSString *resultString;
        resultString = [NSString stringWithFormat:@"Module = %f",modResult];
        self.resultLabel.text = resultString;
    }
}

- (BOOL)checkTextFields {
    if (self.firstOperantTextField.text.length && self.firstComplexOperantTextField.text.length) {
        return YES;
    } else {
        self.resultLabel.text = @"ERROR!";
        return NO;
    }
}

- (IBAction)one:(id)sender
{
    if (firstOPerFirstResp)
    {
        firsttext = [firsttext stringByAppendingString:@"1"];
    }
    else if (secondOPerFirstResp)
    {
        secondText = [secondText stringByAppendingString:@"1"];
    }
    else if (firstComplexResp)
    {
        firstComplex = [firstComplex stringByAppendingString:@"1"];
    }
    else if (secondComplexResp)
    {
        secondComplex = [secondComplex stringByAppendingString:@"1"];
    }
}
- (IBAction)tue:(id)sender
    {
        if (firstOPerFirstResp)
        {
            firsttext = [firsttext stringByAppendingString:@"2"];
        }
        else if (secondOPerFirstResp)
        {
            secondText = [secondText stringByAppendingString:@"2"];
        }
        else if (firstComplexResp)
        {
            firstComplex = [firstComplex stringByAppendingString:@"2"];
        }
        else if (secondComplexResp)
        {
            secondComplex = [secondComplex stringByAppendingString:@"2"];
        }
    }
- (IBAction)three:(id)sender
    {
        if (firstOPerFirstResp)
        {
            firsttext = [firsttext stringByAppendingString:@"3"];
        }
        else if (secondOPerFirstResp)
        {
            secondText = [secondText stringByAppendingString:@"3"];
        }
        else if (firstComplexResp)
        {
            firstComplex = [firstComplex stringByAppendingString:@"3"];
        }
        else if (secondComplexResp)
        {
            secondComplex = [secondComplex stringByAppendingString:@"3"];
        }
    }
- (IBAction)four:(id)sender
    {
        if (firstOPerFirstResp)
        {
            firsttext = [firsttext stringByAppendingString:@"4"];
        }
        else if (secondOPerFirstResp)
        {
            secondText = [secondText stringByAppendingString:@"4"];
        }
        else if (firstComplexResp)
        {
            firstComplex = [firstComplex stringByAppendingString:@"4"];
        }
        else if (secondComplexResp)
        {
            secondComplex = [secondComplex stringByAppendingString:@"4"];
        }
    }
- (IBAction)five:(id)sender
    {
        if (firstOPerFirstResp)
        {
            firsttext = [firsttext stringByAppendingString:@"5"];
        }
        else if (secondOPerFirstResp)
        {
            secondText = [secondText stringByAppendingString:@"5"];
        }
        else if (firstComplexResp)
        {
            firstComplex = [firstComplex stringByAppendingString:@"5"];
        }
        else if (secondComplexResp)
        {
            secondComplex = [secondComplex stringByAppendingString:@"5"];
        }
    }
- (IBAction)six:(id)sender
    {
        if (firstOPerFirstResp)
        {
            firsttext = [firsttext stringByAppendingString:@"6"];
        }
        else if (secondOPerFirstResp)
        {
            secondText = [secondText stringByAppendingString:@"6"];
        }
        else if (firstComplexResp)
        {
            firstComplex = [firstComplex stringByAppendingString:@"6"];
        }
        else if (secondComplexResp)
        {
            secondComplex = [secondComplex stringByAppendingString:@"6"];
        }
    }
- (IBAction)seven:(id)sender
    {
        if (firstOPerFirstResp)
        {
            firsttext = [firsttext stringByAppendingString:@"7"];
        }
        else if (secondOPerFirstResp)
        {
            secondText = [secondText stringByAppendingString:@"7"];
        }
        else if (firstComplexResp)
        {
            firstComplex = [firstComplex stringByAppendingString:@"7"];
        }
        else if (secondComplexResp)
        {
            secondComplex = [secondComplex stringByAppendingString:@"7"];
        }
    }
- (IBAction)eight:(id)sender
    {
        if (firstOPerFirstResp)
        {
           firsttext = [firsttext stringByAppendingString:@"8"];
        }
        else if (secondOPerFirstResp)
        {
            secondText = [secondText stringByAppendingString:@"8"];
        }
        else if (firstComplexResp)
        {
            firstComplex = [firstComplex stringByAppendingString:@"8"];
        }
        else if (secondComplexResp)
        {
            secondComplex = [secondComplex stringByAppendingString:@"8"];
        }
    }
- (IBAction)nine:(id)sender
    {
        if (firstOPerFirstResp)
        {
            firsttext = [firsttext stringByAppendingString:@"9"];
        }
        else if (secondOPerFirstResp)
        {
            secondText = [secondText stringByAppendingString:@"9"];
        }
        else if (firstComplexResp)
        {
            firstComplex = [firstComplex stringByAppendingString:@"9"];
        }
        else if (secondComplexResp)
        {
            secondComplex = [secondComplex stringByAppendingString:@"9"];
        }
    }
- (IBAction)null:(id)sender
    {
        if (firstOPerFirstResp)
        {
            firsttext = [firsttext stringByAppendingString:@"0"];
        }
        
        else if (secondOPerFirstResp)
        {
            secondText = [secondText stringByAppendingString:@"0"];
        }
        else if (firstComplexResp)
        {
            firstComplex = [firstComplex stringByAppendingString:@"0"];
        }
        else if (secondComplexResp)
        {
            secondComplex = [secondComplex stringByAppendingString:@"0"];
        }
    }
- (IBAction)equal:(id)sender
{
    firsttext = @"";
    secondText = @"";
    firstComplex = @"";
    secondComplex = @"";
    self.resultLabel.text = @"";
}

@end
