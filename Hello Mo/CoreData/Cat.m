#import "Cat.h"


@interface Cat ()

// Private interface goes here.

@end


@implementation Cat

+ (NSFetchRequest*)fetchRequestForAllCatsWithRating:(NSNumber*)rating_ inManagedObjectContext:(NSManagedObjectContext*)moc_ {
    
    NSManagedObjectModel *model = [[moc_ persistentStoreCoordinator] managedObjectModel];
	
	NSDictionary *substitutionVariables = [NSDictionary dictionaryWithObjectsAndKeys:
                                           
                                           rating_, @"rating",
                                           
                                           nil];
	
	NSFetchRequest *fetchRequest = [model fetchRequestFromTemplateWithName:@"allCuteCatsWithRating"
													 substitutionVariables:substitutionVariables];
    
    return fetchRequest;
}


@end
