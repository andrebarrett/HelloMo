//
//  MODetailViewController.h
//  Hello Mo
//
//  Created by Barrett, Andre (Technology) on 24/02/2014.
//  Copyright (c) 2014 Barrett, Andre (Technology). All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MODetailViewController : UIViewController <UISplitViewControllerDelegate>

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
