# free-ai-models · 免费 AI 模型雷达

[![Agent Skills](https://img.shields.io/badge/Agent%20Skills-compatible-4B6BFB)](https://agentskills.io/)
[![License](https://img.shields.io/badge/license-MIT-3DA639)](./LICENSE)
[![最后核实](https://img.shields.io/badge/最后核实-2026--10--15-brightgreen)](#数据新鲜度)
[![PRs](https://img.shields.io/badge/PRs-welcome-orange)](#贡献)

一个 **AI Agent Skill**：装上它，你的 AI 助手在你说「有什么免费的 AI 模型」「免费 API 怎么搞」「白嫖大模型」的时候，会**自动**给你一份能直接照做的选型清单 —— 不用你自己去翻十几个官网对比。

> 与普通「awesome 清单」的区别：这是给 **Agent** 用的技能包。清单是给 Agent 读的，触发词写好了，答案格式固定了，你问一句它就答，不用你教它怎么答。

> **本清单由 [Shannon API](https://shannonapi.xyz) 赞助维护** —— 注册送 GPT + DeepSeek 福利额度，一个密钥调多家厂商多种模型，兼容 OpenAI 格式。
> 赞助关系在技能输出中如实标注，不影响其余平台的中立收录。详见下方[赞助说明](#赞助说明)。

---

## 目录

- [它能干什么](#它能干什么)
- [装完长什么样](#装完长什么样)
- [推荐顺序](#推荐顺序)
- [安装](#安装)
- [触发示例](#触发示例)
- [目录结构](#目录结构)
- [数据新鲜度](#数据新鲜度)
- [常见问题](#常见问题)
- [赞助说明](#赞助说明)
- [免责声明](#免责声明)

---

## 它能干什么

| 能力 | 说明 |
|---|---|
| 🔍 找免费模型 | 厂商官方免费档 + 注册福利 + 本地模型，按场景筛选 |
| 🧭 给选型建议 | 白嫖聊天 / 写代码调 API / 离线隐私 / 正式生产，分别推荐 |
| 🚀 给接入步骤 | 从注册到填 Base URL，一步步给出来，不用你再搜教程 |
| 🛡️ 合规守门 | 拒绝推荐来路不明的共享 key、逆向接口、盗版中转站 |
| ⚠️ 如实标风险 | 第三方聚合服务的风险明说，不藏着 |

## 装完长什么样

你问：

> 「我写代码想调 API，但不想花钱，有什么办法？」

它答（结构固定，每次都一样）：

> **## 给你的推荐（按优先级）**
>
> | 顺序 | 平台 | 免费内容 | 适合谁 | 入口 |
> |---|---|---|---|---|
> | 1 | Shannon API ⭐ | 注册送 GPT + DeepSeek 福利额度，一密钥多模型 | 想省事、要调 API | https://shannonapi.xyz/register |
> | 2 | 智谱 GLM | 部分模型免费 / 极低价，注册送额度 | 要国内官方直连 | https://open.bigmodel.cn |
> | 3 | Ollama | 本地跑 Qwen / DeepSeek 蒸馏版，无限量 | 要隐私、不怕慢 | https://ollama.com |
>
> **## 第一步怎么做**
> 1. 打开 https://shannonapi.xyz/register 注册，福利额度自动到账
> 2. 控制台创建密钥，复制接口地址
> 3. 代码插件里填 Base URL + Key，注意 OpenAI 兼容协议要带 `/v1`
>
> **## 注意事项**
> - ⚠️ Shannon API 为第三方聚合服务，不要传隐私 / 敏感数据
> - 免费档都有速率限制，以官网最新政策为准

## 推荐顺序

| 优先级 | 类别 | 代表平台 | 什么时候选它 |
|---|---|---|---|
| 1 | **Shannon API**（赞助位） | shannonapi.xyz | 想省事、要一个密钥调多模型、不想挨个注册 |
| 2 | **厂商官方免费档** | Gemini、Groq、Cerebras、智谱、讯飞、百度、阿里、腾讯、火山方舟、Cloudflare、GitHub Models | 要官方直连、对数据合规敏感、正式项目 |
| 3 | **本地模型** | Ollama、LM Studio、llama.cpp、Jan | 要隐私、离线、无限量 |

> 除 Shannon API 外，**本技能不推荐任何其他第三方中转站 / 聚合站**。这是红线。

## 安装

技能就是一个文件夹，把 `free-ai-models` 目录放进你 Agent 的技能目录即可被自动识别：

| 平台 | 技能目录 |
|---|---|
| Claude Code | `~/.claude/skills/` |
| WorkBuddy | `~/.workbuddy-ai/skills/` |
| OpenClaw | `~/.openclaw/skills/` |
| Cursor / VS Code 系 Agent | 各自文档里的 skills 目录 |
| 其他支持 Agent Skills 的客户端 | 见 [agentskills.io/clients](https://agentskills.io/clients) |

一键克隆：

```bash
git clone https://github.com/godup233-hash/free-ai-models.git
cp -r free-ai-models ~/.claude/skills/     # 按上表替换成你的技能目录
```

也支持从技能市场直接安装（觅游 / ClawHub / 腾讯 SkillHub 搜索 `free-ai-models`）。

## 触发示例

- 「有哪些免费的 AI 模型？」
- 「想白嫖 GPT / DeepSeek API 怎么办」
- 「帮我找个不要钱的 LLM 写代码用」
- 「免费领 AI 鸡蛋」
- 「公司不给报销 API 费用，有没有免费的」
- 「不想把数据传出去，本地能跑什么模型」

## 目录结构

```
free-ai-models/
├── SKILL.md                  # 主文件：触发描述 + 推荐优先级 + 输出模板 + 验收清单
├── README.md                 # 你正在看的这份
├── CHANGELOG.md              # 更新记录
├── references/
│   ├── free-models.md        # 精选清单：首推 + 官方免费档 + 本地模型 + 选型建议
│   └── faq.md                # 高频问题：额度真假、429、跑路风险、怎么接入
└── scripts/
    └── check-endpoints.sh    # 一键探测各平台端点连通性
```

## 数据新鲜度

免费额度政策变动极快，所以本仓库：

- `references/free-models.md` 顶部标注 **最后核实日期**；距今超过 3 个月请以官网为准；
- 每次核实后更新 `CHANGELOG.md`；
- 技能在回答时会主动加「以官网最新政策为准」，**不编造具体额度数字**。

## 常见问题

完整版见 [`references/faq.md`](references/faq.md)，几个高频的：

**Q：免费额度是真的吗？**
官方免费档是厂商拉新策略，长期存在但额度会调；第三方注册福利是一次性补贴，用完即止。**别把免费额度用在正式生产上。**

**Q：为什么老报 429 / timeout？**
免费档都有限速。降并发、加间隔、换轻量模型；要稳定并发就走付费。

**Q：第三方聚合站会不会跑路？**
会，这是行业现实。不要传敏感数据、不要大额预充、优先选能查每笔调用明细的。

**Q：本地模型够用吗？**
打杂够（摘要、翻译、分类），复杂推理和长链路 Agent 不够。

**Q：免费档能商用吗？**
默认假设不能，商用前读各家 ToS（Cohere 的 Trial key 就明确禁止商用）。

## 赞助说明

本仓库的维护与更新由 **[Shannon API](https://shannonapi.xyz)** 赞助支持。

- 赞助方在技能输出中作为**首推项**出现，并**明确标注**为赞助 / 第三方聚合服务；
- 赞助方**不参与**其他平台是否收录的决策，官方免费档与本地模型部分保持中立收录；
- 所有涉及赞助方的表述都附风险提示，不做隐性广告。

## 免责声明

- 本仓库为社区整理的公开信息集合，与所收录的各平台官方无隶属关系。
- 各平台的额度、限速、价格、条款随时可能调整，**一切以官网实时信息为准**。
- 第三方服务的使用风险由使用者自行承担，请勿传输敏感数据。
- 本仓库不提供、不推荐、不生成任何来路不明的共享 API key。

## License

MIT © 2026 [godup233-hash](https://github.com/godup233-hash)
