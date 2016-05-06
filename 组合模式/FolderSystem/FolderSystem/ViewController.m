//
//  ViewController.m
//  FolderSystem
//
//  Created by 王磊 on 16/3/8.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "ViewController.h"
#import "FileViewController.h"
#import "FileCell.h"
#import "File.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) IBOutlet UITableView  *tableView;
@property (nonatomic, strong) File                  *rootFile;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.rootFile = [File fileWithFileType:kFolder fileName:@"Root"];
    
    //第一级
    File *folder_A_1 = [File fileWithFileType:kFolder fileName:@"Folder-A-1"];
    File *file_A_2   = [File fileWithFileType:kFile fileName:@"File-A-2"];
    File *file_A_3   = [File fileWithFileType:kFile fileName:@"File-A-3"];
    File *file_A_4   = [File fileWithFileType:kFile fileName:@"File-A-4"];
    
    //第二级
    File *folder_B_1 = [File fileWithFileType:kFolder fileName:@"Folder-B-1"];
    File *file_B_2   = [File fileWithFileType:kFile fileName:@"File-B-2"];
    File *file_B_3   = [File fileWithFileType:kFile fileName:@"File-B-3"];
    File *folder_B_4 = [File fileWithFileType:kFolder fileName:@"Folder-B-4"];
    
    //第三级
    File *folder_C_1 = [File fileWithFileType:kFolder fileName:@"Folder-C-1"];
    File *file_C_2   = [File fileWithFileType:kFile fileName:@"File-C-2"];
    File *file_C_3   = [File fileWithFileType:kFile fileName:@"File-C-3"];
    
    [self.rootFile addFile:folder_A_1];
    [self.rootFile addFile:file_A_2];
    [self.rootFile addFile:file_A_3];
    [self.rootFile addFile:file_A_4];
    
    [folder_A_1 addFile:folder_B_1];
    [folder_A_1 addFile:file_B_2];
    [folder_A_1 addFile:file_B_3];
    [folder_A_1 addFile:folder_B_4];
    
    [folder_B_1 addFile:folder_C_1];
    [folder_B_1 addFile:file_C_2];
    [folder_B_4 addFile:file_C_3];
    
    
    [self.tableView reloadData];
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
