///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"
#import "DBTEAMDeviceSessionArg.h"
#import "DBTEAMRevokeDesktopClientArg.h"
#import "DBTEAMRevokeDeviceSessionArg.h"

#pragma mark - API Object

@implementation DBTEAMRevokeDeviceSessionArg

@synthesize webSession = _webSession;
@synthesize desktopClient = _desktopClient;
@synthesize mobileClient = _mobileClient;

#pragma mark - Constructors

- (instancetype)initWithWebSession:(DBTEAMDeviceSessionArg *)webSession {
  self = [super init];
  if (self) {
    _tag = DBTEAMRevokeDeviceSessionArgWebSession;
    _webSession = webSession;
  }
  return self;
}

- (instancetype)initWithDesktopClient:(DBTEAMRevokeDesktopClientArg *)desktopClient {
  self = [super init];
  if (self) {
    _tag = DBTEAMRevokeDeviceSessionArgDesktopClient;
    _desktopClient = desktopClient;
  }
  return self;
}

- (instancetype)initWithMobileClient:(DBTEAMDeviceSessionArg *)mobileClient {
  self = [super init];
  if (self) {
    _tag = DBTEAMRevokeDeviceSessionArgMobileClient;
    _mobileClient = mobileClient;
  }
  return self;
}

#pragma mark - Instance field accessors

- (DBTEAMDeviceSessionArg *)webSession {
  if (![self isWebSession]) {
    [NSException raise:@"IllegalStateException"
                format:@"Invalid tag: required DBTEAMRevokeDeviceSessionArgWebSession, but was %@.", [self tagName]];
  }
  return _webSession;
}

- (DBTEAMRevokeDesktopClientArg *)desktopClient {
  if (![self isDesktopClient]) {
    [NSException raise:@"IllegalStateException"
                format:@"Invalid tag: required DBTEAMRevokeDeviceSessionArgDesktopClient, but was %@.", [self tagName]];
  }
  return _desktopClient;
}

- (DBTEAMDeviceSessionArg *)mobileClient {
  if (![self isMobileClient]) {
    [NSException raise:@"IllegalStateException"
                format:@"Invalid tag: required DBTEAMRevokeDeviceSessionArgMobileClient, but was %@.", [self tagName]];
  }
  return _mobileClient;
}

#pragma mark - Tag state methods

- (BOOL)isWebSession {
  return _tag == DBTEAMRevokeDeviceSessionArgWebSession;
}

- (BOOL)isDesktopClient {
  return _tag == DBTEAMRevokeDeviceSessionArgDesktopClient;
}

- (BOOL)isMobileClient {
  return _tag == DBTEAMRevokeDeviceSessionArgMobileClient;
}

- (NSString *)tagName {
  switch (_tag) {
  case DBTEAMRevokeDeviceSessionArgWebSession:
    return @"DBTEAMRevokeDeviceSessionArgWebSession";
  case DBTEAMRevokeDeviceSessionArgDesktopClient:
    return @"DBTEAMRevokeDeviceSessionArgDesktopClient";
  case DBTEAMRevokeDeviceSessionArgMobileClient:
    return @"DBTEAMRevokeDeviceSessionArgMobileClient";
  }

  @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBTEAMRevokeDeviceSessionArgSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBTEAMRevokeDeviceSessionArgSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBTEAMRevokeDeviceSessionArgSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBTEAMRevokeDeviceSessionArgSerializer

+ (NSDictionary *)serialize:(DBTEAMRevokeDeviceSessionArg *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  if ([valueObj isWebSession]) {
    jsonDict = [[DBTEAMDeviceSessionArgSerializer serialize:valueObj.webSession] mutableCopy];
    jsonDict[@".tag"] = @"web_session";
  } else if ([valueObj isDesktopClient]) {
    jsonDict = [[DBTEAMRevokeDesktopClientArgSerializer serialize:valueObj.desktopClient] mutableCopy];
    jsonDict[@".tag"] = @"desktop_client";
  } else if ([valueObj isMobileClient]) {
    jsonDict = [[DBTEAMDeviceSessionArgSerializer serialize:valueObj.mobileClient] mutableCopy];
    jsonDict[@".tag"] = @"mobile_client";
  } else {
    @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
  }

  return jsonDict;
}

+ (DBTEAMRevokeDeviceSessionArg *)deserialize:(NSDictionary *)valueDict {
  NSString *tag = valueDict[@".tag"];

  if ([tag isEqualToString:@"web_session"]) {
    DBTEAMDeviceSessionArg *webSession = [DBTEAMDeviceSessionArgSerializer deserialize:valueDict];
    return [[DBTEAMRevokeDeviceSessionArg alloc] initWithWebSession:webSession];
  } else if ([tag isEqualToString:@"desktop_client"]) {
    DBTEAMRevokeDesktopClientArg *desktopClient = [DBTEAMRevokeDesktopClientArgSerializer deserialize:valueDict];
    return [[DBTEAMRevokeDeviceSessionArg alloc] initWithDesktopClient:desktopClient];
  } else if ([tag isEqualToString:@"mobile_client"]) {
    DBTEAMDeviceSessionArg *mobileClient = [DBTEAMDeviceSessionArgSerializer deserialize:valueDict];
    return [[DBTEAMRevokeDeviceSessionArg alloc] initWithMobileClient:mobileClient];
  }

  @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

@end