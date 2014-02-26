//
//  MODetailViewController.h
//  Hello Mo
//
//  Created by Barrett, Andre (Technology) on 24/02/2014.
//  Copyright (c) 2014 Barrett, Andre (Technology). All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Cat.h"

@interface MODetailViewController : UIViewController <UISplitViewControllerDelegate>

@property (strong, nonatomic) Cat *detailItem;

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@property (weak, nonatomic) IBOutlet UILabel *nameField;

@property (weak, nonatomic) IBOutlet UILabel *typeField;

@property (weak, nonatomic) IBOutlet UILabel *cutenessRating;

@property (weak, nonatomic) IBOutlet UILabel *profileField;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *profileFieldHeightConstraint;

@end
