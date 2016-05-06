//
//  File.m
//  FolderSystem
//
//  Created by 王磊 on 16/3/8.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "File.h"

@interface File ()

@property (nonatomic, strong) NSMutableArray *childFiles;

@end

@implementation File

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.childFiles = [NSMutableArray array];
    }
    return self;
}

+ (instancetype)fileWithFileType:(FileType)type fileName:(NSString *)fileName
{
    File *file = [[[self class] alloc] init];
    file.type = type;
    file.fileName = fileName;
    return file;
}

- (void)addFile:(File *)file
{
    NSParameterAssert(file);
    [self.childFiles addObject:file];
}

@end
