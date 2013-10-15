//
//  TMPViewController.m
//  TemplateImageTest
//
//  Created by Nicholas Schlueter on 10/15/13.
//  Copyright (c) 2013 2 Limes. All rights reserved.
//

#import "TMPViewController.h"

@interface TMPViewController ()
@property (weak, nonatomic) IBOutlet UINavigationItem *mainNavigationItem;
@property (weak, nonatomic) IBOutlet UIImageView *templateImageView;
@property (weak, nonatomic) IBOutlet UIImageView *automaticImageView;
@property (weak, nonatomic) IBOutlet UIButton *backgroundAutomaticButton;
@property (weak, nonatomic) IBOutlet UIButton *backgroundTemplateButton;
@property (weak, nonatomic) IBOutlet UIButton *originalButton;
@property (weak, nonatomic) IBOutlet UIButton *automaticButton;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;

@end

@implementation TMPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Image View in Template Mode
    self.templateImageView.image = [self checkWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    
    // Image View in automatic Mode
    self.automaticImageView.image = [self checkWithRenderingMode:UIImageRenderingModeAutomatic];
    
    // Bar button item in automatic mode
    self.mainNavigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[self checkWithRenderingMode:UIImageRenderingModeAutomatic] style:UIBarButtonItemStyleDone target:nil action:nil];
    
    // Bar button item in alway original mode
    self.mainNavigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[self checkWithRenderingMode:UIImageRenderingModeAlwaysOriginal] style:UIBarButtonItemStyleDone target:nil action:nil];
    
    // button background image in automatic mode
    [self.backgroundAutomaticButton setBackgroundImage:[self checkWithRenderingMode:UIImageRenderingModeAutomatic] forState:UIControlStateNormal];
    
    // button background image in automatic mode
    [self.backgroundTemplateButton setBackgroundImage:[self checkWithRenderingMode:UIImageRenderingModeAlwaysTemplate] forState:UIControlStateNormal];
    
    // button image in automatic mode
    [self.automaticButton setImage:[self checkWithRenderingMode:UIImageRenderingModeAutomatic] forState:UIControlStateNormal];
    
    // button image in automatic mode
    [self.originalButton setImage:[self checkWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    
    [self.segmentedControl setImage:[self checkWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forSegmentAtIndex:0];
    
    [self.segmentedControl setImage:[self checkWithRenderingMode:UIImageRenderingModeAutomatic] forSegmentAtIndex:1];
}

- (UIImage *)checkWithRenderingMode:(UIImageRenderingMode)renderingMode {
    return [[UIImage imageNamed:@"check"] imageWithRenderingMode:renderingMode];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
