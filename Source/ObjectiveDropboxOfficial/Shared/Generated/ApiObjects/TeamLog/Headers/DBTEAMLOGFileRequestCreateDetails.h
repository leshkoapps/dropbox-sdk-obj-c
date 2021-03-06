///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>

#import "DBSerializableProtocol.h"

@class DBTEAMLOGFileRequestCreateDetails;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - API Object

///
/// The `FileRequestCreateDetails` struct.
///
/// Created a file request.
///
/// This class implements the `DBSerializable` protocol (serialize and
/// deserialize instance methods), which is required for all Obj-C SDK API route
/// objects.
///
@interface DBTEAMLOGFileRequestCreateDetails : NSObject <DBSerializable, NSCopying>

#pragma mark - Instance fields

/// File request title.
@property (nonatomic, readonly, copy, nullable) NSString *requestTitle;

#pragma mark - Constructors

///
/// Full constructor for the struct (exposes all instance variables).
///
/// @param requestTitle File request title.
///
/// @return An initialized instance.
///
- (instancetype)initWithRequestTitle:(nullable NSString *)requestTitle;

///
/// Convenience constructor (exposes only non-nullable instance variables with
/// no default value).
///
///
/// @return An initialized instance.
///
- (instancetype)initDefault;

- (instancetype)init NS_UNAVAILABLE;

@end

#pragma mark - Serializer Object

///
/// The serialization class for the `FileRequestCreateDetails` struct.
///
@interface DBTEAMLOGFileRequestCreateDetailsSerializer : NSObject

///
/// Serializes `DBTEAMLOGFileRequestCreateDetails` instances.
///
/// @param instance An instance of the `DBTEAMLOGFileRequestCreateDetails` API
/// object.
///
/// @return A json-compatible dictionary representation of the
/// `DBTEAMLOGFileRequestCreateDetails` API object.
///
+ (nullable NSDictionary *)serialize:(DBTEAMLOGFileRequestCreateDetails *)instance;

///
/// Deserializes `DBTEAMLOGFileRequestCreateDetails` instances.
///
/// @param dict A json-compatible dictionary representation of the
/// `DBTEAMLOGFileRequestCreateDetails` API object.
///
/// @return An instantiation of the `DBTEAMLOGFileRequestCreateDetails` object.
///
+ (DBTEAMLOGFileRequestCreateDetails *)deserialize:(NSDictionary *)dict;

@end

NS_ASSUME_NONNULL_END
