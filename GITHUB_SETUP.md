# 🔐 GitHub 授权指南

## 快速获取 Token

1. 打开 https://github.com/settings/tokens/new
2. 描述填：`mini-games`
3. 勾选 `repo` 权限
4. 点击 Generate token
5. 复制生成的 token

## 方式一：设置环境变量（推荐）

```bash
export GH_TOKEN="你复制的token"
```

## 方式二：直接登录

```bash
gh auth login
# 按提示操作
```

## 然后运行发布

```bash
cd ~/.openclaw/workspace/mini-games
./publish.sh
```

---

获取到token后发给我，我帮你配置并推送！
