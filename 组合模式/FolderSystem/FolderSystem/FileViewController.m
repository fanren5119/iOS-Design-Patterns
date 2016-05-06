//
//  FileViewController.m
//  FolderSystem
//
//  Created by 王磊 on 16/3/8.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "FileViewController.h"
#import "FileCell.h"

@interface FileViewController () <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation FileViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = self.rootFile.fileName;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.rootFile.childFiles.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifer = @"cell";
    FileCell *cell = [tableView dequeueReusableCellWithIdentifier:identifer];
    if (!cell) {
        cell = [[FileCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:identifer];
    }
    [cell resetCellWithEntity:self.rootFile.childFiles[indexPath.row]];
    return cell;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    File *file = self.rootFile.childFiles[indexPath.row];
    if (file.type == kFolder) {
        FileViewController *fileVC = [self.storyboard instantiateViewControllerWithIdentifier:@"FileVC"];
        fileVC.rootFile = file;
        [self.navigationController pushViewController:fileVC animated:YES];
    }
}

@end
