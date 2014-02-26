// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Cat.m instead.

#import "_Cat.h"

const struct CatAttributes CatAttributes = {
	.bestFriend = @"bestFriend",
	.cutenessRating = @"cutenessRating",
	.image = @"image",
	.name = @"name",
	.profile = @"profile",
	.timeStamp = @"timeStamp",
	.type = @"type",
};

const struct CatRelationships CatRelationships = {
};

const struct CatFetchedProperties CatFetchedProperties = {
};

@implementation CatID
@end

@implementation _Cat

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Cat" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Cat";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Cat" inManagedObjectContext:moc_];
}

- (CatID*)objectID {
	return (CatID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	
	if ([key isEqualToString:@"cutenessRatingValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"cutenessRating"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}




@dynamic bestFriend;






@dynamic cutenessRating;



- (int32_t)cutenessRatingValue {
	NSNumber *result = [self cutenessRating];
	return [result intValue];
}

- (void)setCutenessRatingValue:(int32_t)value_ {
	[self setCutenessRating:[NSNumber numberWithInt:value_]];
}

- (int32_t)primitiveCutenessRatingValue {
	NSNumber *result = [self primitiveCutenessRating];
	return [result intValue];
}

- (void)setPrimitiveCutenessRatingValue:(int32_t)value_ {
	[self setPrimitiveCutenessRating:[NSNumber numberWithInt:value_]];
}





@dynamic image;






@dynamic name;






@dynamic profile;






@dynamic timeStamp;






@dynamic type;











+ (NSArray*)fetchAllCuteCatsWithRating:(NSManagedObjectContext*)moc_ rating:(NSNumber*)rating_ {
	NSError *error = nil;
	NSArray *result = [self fetchAllCuteCatsWithRating:moc_ rating:rating_ error:&error];
	if (error) {
#ifdef NSAppKitVersionNumber10_0
		[NSApp presentError:error];
#else
		NSLog(@"error: %@", error);
#endif
	}
	return result;
}
+ (NSArray*)fetchAllCuteCatsWithRating:(NSManagedObjectContext*)moc_ rating:(NSNumber*)rating_ error:(NSError**)error_ {
	NSParameterAssert(moc_);
	NSError *error = nil;

	NSManagedObjectModel *model = [[moc_ persistentStoreCoordinator] managedObjectModel];
	
	NSDictionary *substitutionVariables = [NSDictionary dictionaryWithObjectsAndKeys:
														
														rating_, @"rating",
														
														nil];
	
	NSFetchRequest *fetchRequest = [model fetchRequestFromTemplateWithName:@"allCuteCatsWithRating"
													 substitutionVariables:substitutionVariables];
	NSAssert(fetchRequest, @"Can't find fetch request named \"allCuteCatsWithRating\".");

	NSArray *result = [moc_ executeFetchRequest:fetchRequest error:&error];
	if (error_) *error_ = error;
	return result;
}



@end
