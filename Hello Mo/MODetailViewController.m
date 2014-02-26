//
//  MODetailViewController.m
//  Hello Mo
//
//  Created by Barrett, Andre (Technology) on 24/02/2014.
//  Copyright (c) 2014 Barrett, Andre (Technology). All rights reserved.
//

#import "MODetailViewController.h"

@interface MODetailViewController ()
@property (strong, nonatomic) UIPopoverController *masterPopoverController;
- (void)configureView;
@end

@implementation MODetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }

    if (self.masterPopoverController != nil) {
        [self.masterPopoverController dismissPopoverAnimated:YES];
    }        
}

- (void)configureView
{
    // Update the user interface for the detail item.

    if (self.detailItem) {
        
        self.imageView.image = [UIImage imageNamed:_detailItem.image];
        
        self.nameField.text = _detailItem.name;
        
        self.typeField.text = _detailItem.type;
        
        self.cutenessRating.text = [NSString stringWithFormat:@"%d",  _detailItem.cutenessRatingValue];
        
        self.profileField.text = _detailItem.profile;
        
        
        [self configureBestFriendView];
    }

}


- (void)configureBestFriendView {
    
    Cat *bestFriend = [Cat fetchOneCatNamed:self.managedObjectContext name:self.detailItem.bestFriend];
    
    self.bestFriendNameField.text = bestFriend.name;
    
    self.bestFriendTypeField.text = bestFriend.type;
    
    self.bestFriendImageView.image = [UIImage imageNamed: bestFriend.image];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
    
    NSDictionary *attributes = @{NSFontAttributeName: self.profileField.font};
    
    CGSize size = [_detailItem.profile boundingRectWithSize:CGSizeMake(self.profileField.frame.size.width, MAXFLOAT)
                                                    options:NSStringDrawingUsesLineFragmentOrigin
                                                 attributes:attributes
                                                    context:nil].size;
    
    self.profileFieldHeightConstraint.constant = size.height;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Split view

- (void)splitViewController:(UISplitViewController *)splitController willHideViewController:(UIViewController *)viewController withBarButtonItem:(UIBarButtonItem *)barButtonItem forPopoverController:(UIPopoverController *)popoverController
{
    barButtonItem.title = NSLocalizedString(@"Master", @"Master");
    [self.navigationItem setLeftBarButtonItem:barButtonItem animated:YES];
    self.masterPopoverController = popoverController;
}

- (void)splitViewController:(UISplitViewController *)splitController willShowViewController:(UIViewController *)viewController invalidatingBarButtonItem:(UIBarButtonItem *)barButtonItem
{
    // Called when the view is shown again in the split view, invalidating the button and popover controller.
    [self.navigationItem setLeftBarButtonItem:nil animated:YES];
    self.masterPopoverController = nil;
}

@end
