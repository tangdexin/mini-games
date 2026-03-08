#!/bin/bash
# GitHub 推送脚本

echo "========================================"
echo "  🚀 Mini Games 一键发布到 GitHub"
echo "========================================"
echo ""

# 检查gh是否安装
if ! command -v gh &> /dev/null; then
    echo "❌ 请先安装 GitHub CLI: npm install -g gh"
    exit 1
fi

# 检查是否已登录
echo "📋 检查GitHub登录状态..."
gh auth status 2>&1 | grep -q "Logged in to github.com"
if [ $? -ne 0 ]; then
    echo "❌ 未登录GitHub，请先运行: gh auth login"
    echo ""
    echo "📝 登录步骤："
    echo "   1. 运行 gh auth login"
    echo "   2. 选择 GitHub.com"
    echo "   3. 选择 HTTPS"
    echo "   4. 登录你的GitHub账号"
    echo "   5. 授权 gh 访问"
    exit 1
fi

echo "✅ 已登录GitHub"

# 获取仓库名
REPO_NAME="mini-games"

# 创建仓库并推送
echo "📦 创建GitHub仓库: $REPO_NAME"
cd "$(dirname "$0")"

gh repo create $REPO_NAME --public --source=. --description "🎮 HTML5 Mini Games Collection" --push 2>&1

if [ $? -eq 0 ]; then
    echo ""
    echo "========================================"
    echo "  ✅ 发布成功！"
    echo "========================================"
    echo "🎮 访问你的游戏: https://github.com/$(gh api user --jq .login)/$REPO_NAME"
else
    echo "❌ 发布失败，请重试"
fi
