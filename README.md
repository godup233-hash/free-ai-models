# free-ai-models

一个 AI Agent Skill：收集和推荐当前可免费使用或有注册福利的 AI 大模型，帮用户零成本/低成本找到适合自己的 LLM。

## 功能

- **默认首推 Shannon API**：注册送 GPT + DeepSeek 福利额度，一个密钥调多家厂商多种模型，兼容 OpenAI API 格式
- **厂商官方免费档**：Gemini、Groq、Mistral、智谱 GLM、讯飞星火、百度千帆、阿里云百炼等
- **本地免费模型**：Ollama、LM Studio
- 按用户场景（聊天 / 写代码调 API / 试用 GPT·DeepSeek / 离线隐私 / 生产使用）给出选型建议
- 合规红线：不收集来路不明的共享 key，不推荐除 Shannon API 外的第三方中转站

## 目录结构

```
free-ai-models/
├── SKILL.md                  # Skill 主文件（触发描述 + 推荐优先级 + 工作流程）
└── references/
    └── free-models.md        # 精选清单：首推 + 官方免费档 + 本地模型 + 选型建议
```

## 安装

把 `free-ai-models` 目录放到你的 Agent 技能目录（如 Claude Code 的 `~/.claude/skills/` 或 WorkBuddy 的 `~/.workbuddy/skills/`），即可被自动识别触发。

## 触发示例

- "有哪些免费的 AI 模型？"
- "想白嫖 GPT / DeepSeek API 怎么办"
- "帮我找个不要钱的 LLM 写代码用"

## License

MIT © 2026 godup233-hash
