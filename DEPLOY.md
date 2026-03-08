# 🚀 发布指南

## 方法1：使用GitHub CLI（推荐）

```bash
# 1. 安装gh（如果还没有）
npm install -g gh

# 2. 登录GitHub
gh auth login

# 3. 创建仓库并推送
cd ~/.openclaw/workspace/mini-games
gh repo create mini-games --public --source=.
git push -u origin master
```

## 方法2：手动创建

1. 打开 https://github.com/new
2. 仓库名填写：`mini-games`
3. 选择 Public
4. 不要勾选任何初始化选项
5. 点击 Create repository
6. 把仓库URL发给我

---

## 📁 代码文件

所有游戏都在这个目录：
```
~/.openclaw/workspace/mini-games/
├── index.html          # 游戏首页
├── README.md           # 说明文档
├── text-adventure/     # 文字冒险
├── ai-companion/       # AI恋人
├── brain-hole/         # 脑洞问答
└── breakout/          # 打砖块
```

---

创建好仓库后把URL发给我，我帮你推送！🚀
