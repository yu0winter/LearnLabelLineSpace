//
//  ViewController.m
//  LearnLabelLineSpace
//
//  Created by niuyulong on 2018/10/17.
//  Copyright © 2018年 nyl. All rights reserved.
//

#import "ViewController.h"
#import "TestTableViewCell.h"

@interface ViewController () <UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property(nonatomic, strong) NSArray *fontArray;
@end

@implementation ViewController
#pragma mark - Life Cycle 生命周期
#pragma mark └ Dealloc
// - (void)dealloc {}
#pragma mark └ Init
- (instancetype)init {
    if (self = [super init]) {
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSMutableArray *arrayM = [[NSMutableArray alloc] initWithCapacity:100];
    for (int i = 10; i < 30; i++) {
        UIFont *font = [UIFont systemFontOfSize:i];
        [arrayM addObject:font];
    }
    self.fontArray = arrayM;
}
#pragma mark - Event Response 事件响应
#pragma mark - Delegate Realization 委托方法
#pragma mark └ UITableViewDelegate,UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.fontArray.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 60;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *identifier = @"cell";
    TestTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        cell = [[TestTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    
    UIFont *font = self.fontArray[indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    <#code#>
}
#pragma mark - Custom Method    自定义方法
#pragma mark - Custom Accessors 自定义属性
@end
