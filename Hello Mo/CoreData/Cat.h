#import "_Cat.h"

@interface Cat : _Cat {}

+ (NSFetchRequest*)fetchRequestForAllCatsWithRating:(NSNumber*)rating_ inManagedObjectContext:(NSManagedObjectContext*)moc_;

@end
