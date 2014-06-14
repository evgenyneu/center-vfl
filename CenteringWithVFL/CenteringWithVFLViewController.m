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

    [self addLabel:self.view1];
    [self addLabel:self.view2];
}

- (void)addLabel:(UIView*)view {
    UILabel *label = [self createLabel];
    [view addSubview:label];
    [self createLabelConstrants:label forSuperview:view];
}

- (UILabel*)createLabel {
    UILabel* label = [[UILabel alloc] init];
    [label setTranslatesAutoresizingMaskIntoConstraints:NO];
    label.text = @"I am centered!";
    label.backgroundColor = [UIColor yellowColor];
    return label;
}

- (void)createLabelConstrants:(UILabel*)label forSuperview:(UIView*)superview {
    NSDictionary *variables = NSDictionaryOfVariableBindings(label, superview);
    NSArray *constraints =
    [NSLayoutConstraint constraintsWithVisualFormat:@"V:[superview]-(<=1)-[label]"
                                            options: NSLayoutFormatAlignAllCenterX
                                            metrics:nil
                                              views:variables];
    [superview addConstraints:constraints];
    
    constraints =
    [NSLayoutConstraint constraintsWithVisualFormat:@"H:[superview]-(<=1)-[label]"
                                            options: NSLayoutFormatAlignAllCenterY
                                            metrics:nil
                                              views:variables];
    [superview addConstraints:constraints];
}

@end


