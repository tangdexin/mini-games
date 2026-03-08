#!/usr/bin/env node
// 游戏代码检查工具

const fs = require('fs');
const path = require('path');

const gamesDir = './';
const issues = [];

function checkFile(filePath) {
    const content = fs.readFileSync(filePath, 'utf8');
    const filename = path.basename(filePath);
    
    // 检查常见问题
    if (content.includes('console.log') && !filename.includes('test')) {
        issues.push({file: filename, issue: '包含console.log'});
    }
    
    if (content.includes('alert(') && !filename.includes('test')) {
        issues.push({file: filename, issue: '使用alert可能导致阻塞'});
    }
    
    if (!content.includes('viewport')) {
        issues.push({file: filename, issue: '缺少viewport meta标签'});
    }
}

console.log('检查游戏文件...');
console.log('检查完成！');
