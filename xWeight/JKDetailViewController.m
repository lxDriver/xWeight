//
//  JKDetailViewController.m
//  xWeight
//
//  Created by Julian Kleine on 22.05.14.
//  Copyright (c) 2014 Julian Kleine. All rights reserved.
//

#import "JKDetailViewController.h"

@interface JKDetailViewController ()
- (void)configureView;
@end

@implementation JKDetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

    if (self.detailItem) {
        self.detailDescriptionLabel.text = [[self.detailItem valueForKey:@"timeStamp"] description];
        self.weightTextField.text = [[self.detailItem valueForKey:@"weight"] description];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textFieldDidChange:) name:UITextFieldTextDidChangeNotification object:self.weightTextField];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    
    NSLog(@"Disappear: %f",[self.weightTextField.text floatValue]);
    
    [self.detailItem setValue:[NSNumber numberWithFloat:[self.weightTextField.text floatValue]] forKey:@"weight"];
    
}
- (void)textFieldDidChange:(NSNotification*)notification {
    //NSLog(@"Changed: %f",[self.weightTextField.text floatValue]);
}

@end
