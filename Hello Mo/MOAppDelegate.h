//
//  MOAppDelegate.h
//  Hello Mo
//
//  Created by Barrett, Andre (Technology) on 24/02/2014.
//  Copyright (c) 2014 Barrett, Andre (Technology). All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MOAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
