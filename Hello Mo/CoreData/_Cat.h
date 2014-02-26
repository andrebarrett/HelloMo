// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Cat.h instead.

#import <CoreData/CoreData.h>


extern const struct CatAttributes {
	__unsafe_unretained NSString *bestFriend;
	__unsafe_unretained NSString *cutenessRating;
	__unsafe_unretained NSString *image;
	__unsafe_unretained NSString *name;
	__unsafe_unretained NSString *profile;
	__unsafe_unretained NSString *timeStamp;
	__unsafe_unretained NSString *type;
} CatAttributes;

extern const struct CatRelationships {
} CatRelationships;

extern const struct CatFetchedProperties {
} CatFetchedProperties;










@interface CatID : NSManagedObjectID {}
@end

@interface _Cat : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (CatID*)objectID;





@property (nonatomic, strong) NSString* bestFriend;



//- (BOOL)validateBestFriend:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* cutenessRating;



@property int32_t cutenessRatingValue;
- (int32_t)cutenessRatingValue;
- (void)setCutenessRatingValue:(int32_t)value_;

//- (BOOL)validateCutenessRating:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* image;



//- (BOOL)validateImage:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* name;



//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* profile;



//- (BOOL)validateProfile:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSDate* timeStamp;



//- (BOOL)validateTimeStamp:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* type;



//- (BOOL)validateType:(id*)value_ error:(NSError**)error_;





+ (NSArray*)fetchAllCuteCatsWithRating:(NSManagedObjectContext*)moc_ rating:(NSNumber*)rating_ ;
+ (NSArray*)fetchAllCuteCatsWithRating:(NSManagedObjectContext*)moc_ rating:(NSNumber*)rating_ error:(NSError**)error_;



+ (id)fetchOneCatNamed:(NSManagedObjectContext*)moc_ name:(NSString*)name_ ;
+ (id)fetchOneCatNamed:(NSManagedObjectContext*)moc_ name:(NSString*)name_ error:(NSError**)error_;




@end

@interface _Cat (CoreDataGeneratedAccessors)

@end

@interface _Cat (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitiveBestFriend;
- (void)setPrimitiveBestFriend:(NSString*)value;




- (NSNumber*)primitiveCutenessRating;
- (void)setPrimitiveCutenessRating:(NSNumber*)value;

- (int32_t)primitiveCutenessRatingValue;
- (void)setPrimitiveCutenessRatingValue:(int32_t)value_;




- (NSString*)primitiveImage;
- (void)setPrimitiveImage:(NSString*)value;




- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;




- (NSString*)primitiveProfile;
- (void)setPrimitiveProfile:(NSString*)value;




- (NSDate*)primitiveTimeStamp;
- (void)setPrimitiveTimeStamp:(NSDate*)value;




- (NSString*)primitiveType;
- (void)setPrimitiveType:(NSString*)value;




@end
