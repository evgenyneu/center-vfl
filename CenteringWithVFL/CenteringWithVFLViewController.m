//
//  CenteringWithVFLViewController.m
//  CenteringWithVFL
//
//  Created by Evgenii Neumerzhitckii on 17/02/13.
//  Copyright (c) 2013 Evgenii Neumerzhitckii. All rights reserved.
//

#import "CenteringWithVFLViewController.h"

@implementation CenteringWithVFLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    UILabel *label = [self createLabel];
    [self.view addSubview:label];
    [self createLabelConstrants:label];
}

- (UILabel*)createLabel {
    UILabel* label = [[UILabel alloc] init];
    [label setTranslatesAutoresizingMaskIntoConstraints:NO];
    label.text = @"I am centered! I am centered! I am centered! I am centered! I am centered!";
    label.backgroundColor = [UIColor yellowColor];
    return label;
}

- (void)createLabelConstrants:(UILabel*)label {
    UIView *superview = self.view;
    NSDictionary *variables = NSDictionaryOfVariableBindings(label, superview);
    NSArray *constraints =
    [NSLayoutConstraint constraintsWithVisualFormat:@"V:[superview]-(<=1)-[label]"
                                            options: NSLayoutFormatAlignAllCenterX
                                            metrics:nil
                                              views:variables];
    [self.view addConstraints:constraints];
    
    constraints =
    [NSLayoutConstraint constraintsWithVisualFormat:@"H:[superview]-(<=1)-[label]"
                                            options: NSLayoutFormatAlignAllCenterY
                                            metrics:nil
                                              views:variables];
    [self.view addConstraints:constraints];

    // Add horizontal margins to label view

    constraints =
    [NSLayoutConstraint constraintsWithVisualFormat:@"|-[label]-|"
                                          options: 0
                                          metrics:nil
                                            views:variables];
    [self.view addConstraints:constraints];
}

@end


