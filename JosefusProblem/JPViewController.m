//
//  JPViewController.m
//  JosefusProblem
//
//  Created by Omar Gudino on 10/23/12.
//  Copyright (c) 2012 Omar Gudino. All rights reserved.
//

#import "JPViewController.h"
#import "JPAlgorithm.h"

@interface JPViewController () <UIPickerViewDataSource, UIPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UIPickerView *numberOfNodesPickerView;
@property (weak, nonatomic) IBOutlet UIPickerView *numberOfSkipsPickerView;
@property (weak, nonatomic) IBOutlet UIButton *resetButton;
@property (weak, nonatomic) IBOutlet UIButton *startButton;
@property (weak, nonatomic) IBOutlet UIView *nodesView;

@property (strong, nonatomic) JPAlgorithm *algorithm;

@end

@implementation JPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.algorithm = [[JPAlgorithm alloc] init];
}

#pragma mark - UIPickerViewDataSource Methods
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return 31;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [NSString stringWithFormat:@"%i", row]; 
}

#pragma mark - Action Methods
- (IBAction)startButtonWasPressed:(id)sender
{
    [self.algorithm startExecutingWithNumberOfNodes:[self.numberOfNodesPickerView selectedRowInComponent:0]
                                  withNumberOfJumps: [self.numberOfSkipsPickerView selectedRowInComponent:0]];
    
    NSLog(@"%@", [self.algorithm headNode]);
}


- (IBAction)resetButtonWasPressed:(id)sender
{
    
}

@end
