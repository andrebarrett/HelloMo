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











@end
