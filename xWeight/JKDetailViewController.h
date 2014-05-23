//
//  JKDetailViewController.h
//  xWeight
//
//  Created by Julian Kleine on 22.05.14.
//  Copyright (c) 2014 Julian Kleine. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JKDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UITextField *weightTextField;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
