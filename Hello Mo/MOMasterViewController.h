//
//  MOMasterViewController.h
//  Hello Mo
//
//  Created by Barrett, Andre (Technology) on 24/02/2014.
//  Copyright (c) 2014 Barrett, Andre (Technology). All rights reserved.
//

#import <UIKit/UIKit.h>

@class MODetailViewController;

#import <CoreData/CoreData.h>

@interface MOMasterViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) MODetailViewController *detailViewController;

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end
