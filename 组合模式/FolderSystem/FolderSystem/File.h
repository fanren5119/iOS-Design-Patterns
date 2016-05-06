//
//  File.h
//  FolderSystem
//
//  Created by 王磊 on 16/3/8.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, FileType) {
    kFolder      = 0,
    kFile        = 1
};

@interface File : NSObject

@property (nonatomic, assign) FileType type;
@property (nonatomic, strong) NSString *fileName;
@property (nonatomic, strong, readonly) NSMutableArray *childFiles;

+ (instancetype)fileWithFileType:(FileType)type fileName:(NSString *)fileName;
- (void)addFile:(File *)file;

@end
