//
//  JPViewController.m
//  JosefusProblem
//
//  Created by Omar Gudino on 10/23/12.
//  Copyright (c) 2012 Omar Gudino. All rights reserved.
//

#import "JPViewController.h"

@interface JPViewController () <UIPickerViewDataSource, UIPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UIPickerView *numberOfNodesPickerView;
@property (weak, nonatomic) IBOutlet UIPickerView *numberOfSkipsPickerView;
@property (weak, nonatomic) IBOutlet UIButton *resetButton;
@property (weak, nonatomic) IBOutlet UIButton *startButton;
@property (weak, nonatomic) IBOutlet UIView *nodesView;


@end

@implementation JPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

#pragma mark - UIPickerViewDataSource Methods
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return 30;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [NSString stringWithFormat:@"%i", row]; //poner desde 1 +1 hasta 30
}

#pragma mark - Action Methods
- (IBAction)startButtonWasPressed:(id)sender
{
    
}


- (IBAction)resetButtonWasPressed:(id)sender
{
    
}

@end
