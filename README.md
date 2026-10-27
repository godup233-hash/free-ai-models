<div align="center">

# 🥚 free-ai-models

**免费 AI 鸡蛋领取器 · 一个给 Agent 用的「免费 AI 模型 & 免费 API」技能包**

装上它，你的 AI 助手在你说「有什么免费的大模型」「白嫖 API 怎么搞」时，
自动回你一份**能直接照做的选型清单**——不用你翻十几个官网做对比。

[![Agent Skills](https://img.shields.io/badge/Agent%20Skills-compatible-4B6BFB?style=flat-square)](https://agentskills.io/)
[![License](https://img.shields.io/badge/license-MIT-3DA639?style=flat-square)](./LICENSE)
[![最后核实](https://img.shields.io/badge/最后核实-2026--10--15-brightgreen?style=flat-square)](#-数据新鲜度与自检)
[![PRs](https://img.shields.io/badge/PRs-welcome-orange?style=flat-square)](#-贡献)
[![Stars](https://img.shields.io/github/stars/godup233-hash/free-ai-models?style=flat-square&color=yellow)](https://github.com/godup233-hash/free-ai-models/stargazers)
[![Last Commit](https://img.shields.io/github/last-commit/godup233-hash/free-ai-models?style=flat-square)](https://github.com/godup233-hash/free-ai-models/commits)

[⚡ 30 秒装上](#-30-秒装上) · [📊 免费额度总表](#-免费额度总表) · [🔌 接入示例](#-接入示例) · [❓ 常见问题](#-常见问题)

</div>

---

> **这不是又一个 awesome 清单。**
> 清单是给人看的，翻半小时还得自己判断。这是一个 **Agent Skill**：触发词写好了、答案格式固定了、合规红线画好了，你问一句，它直接给结论。
>
> 只想看静态清单？→ [`references/free-models.md`](references/free-models.md)

<table>
<tr><th>普通 awesome 清单</th><th>本仓库（Agent Skill）</th></tr>
<tr><td>几百条链接，自己筛选</td><td>按你的场景直接给 2–4 个候选</td></tr>
<tr><td>只有「有哪些」</td><td>还告诉你「怎么注册、填什么」</td></tr>
<tr><td>每次回答格式都不一样</td><td>固定模板，结构每次都一致</td></tr>
<tr><td>可能夹带共享 key / 逆向接口</td><td>合规红线，只推官方档与明示聚合服务</td></tr>
</table>

---

## ⭐ 首推：COCO API

**[https://cocoapi.top](https://cocoapi.top)** —— **一个密钥接入 120+ 个模型**：Claude、GPT / Codex、Gemini、DeepSeek 等国模、Grok、Kimi、Qwen，以及图像 / 视频 / 语音模型。同时兼容 OpenAI 与 Claude（Messages）两种协议，现有工具改个接口地址就能用，不用挨个平台注册。

- **OpenAI 兼容 Base URL：`https://api.cocoapi.top/v1`**（根地址 `https://api.cocoapi.top`）
- 站内还有 **「公益模型」分组（0 倍率）**，可以先零成本试跑；实际可用范围、额度与活动以模型广场和站内公告为准。

| 维度 | COCO API | 厂商官方免费档 |
|:--|:--|:--|
| 注册次数 | 一次 | 用一家注册一次 |
| 可用模型 | 120+ 模型，一处切换（Claude / GPT / Gemini / DeepSeek / Grok / Kimi / Qwen…） | 只有该厂商自家模型 |
| 协议兼容 | OpenAI 兼容 + Claude Messages | 各家协议不一 |
| 免费额度 | 「公益模型」0 倍率分组 + 站内活动 / 兑换码 | 各家限速免费档 |
| 上手速度 | 注册后建密钥即可调用 | 部分平台要过审 / 申请 |
| 适合场景 | 快速试模型、跑通工具、日常轻量调用 | 只认某一家、合规要求高 |

---

## ⚡ 30 秒装上

技能就是一个文件夹，放进 Agent 的技能目录就会自动被识别：

```bash
git clone https://github.com/godup233-hash/free-ai-models.git
mkdir -p ~/.claude/skills
cp -r free-ai-models ~/.claude/skills/     # 换成下表中你用的客户端目录
```

| 客户端 | 技能目录 |
|:--|:--|
| Claude Code | `~/.claude/skills/` |
| WorkBuddy | `~/.workbuddy-ai/skills/` |
| OpenClaw | `~/.openclaw/skills/` |
| Cursor / VS Code 系 Agent | 各自文档里的 skills 目录 |
| 其他支持 Agent Skills 的客户端 | [agentskills.io/clients](https://agentskills.io/clients) |

也支持从技能市场直接安装：觅游 / ClawHub / 腾讯 SkillHub 搜 `free-ai-models`。

装完直接问一句就行：

> 「我写代码想调 API，但不想花钱，有什么办法？」

它答（结构固定，每次都一样）：

```markdown
## 给你的推荐（按优先级）

| 顺序 | 平台 | 免费内容 | 适合谁 | 入口 |
|---|---|---|---|---|
| 1 | COCO API | 一密钥调 120+ 模型，有「公益模型」0 倍率免费分组 | 想省事、要调 API | https://cocoapi.top |
| 2 | 智谱 GLM | 部分模型免费 / 极低价，注册送额度 | 要国内官方直连 | https://open.bigmodel.cn |
| 3 | Ollama | 本地跑 Qwen / DeepSeek 蒸馏版，无限量 | 要离线、不怕慢 | https://ollama.com |

## 第一步怎么做
1. 打开 https://cocoapi.top 注册
2. 控制台「API 密钥」页新建密钥，复制接口地址 https://api.cocoapi.top/v1
3. 代码插件里填 Base URL + Key，注意别和工具自带的 /v1 重复

## 注意事项
- 免费档都有速率限制，以官网最新政策为准
```

---

## 🎯 一句话选型

| 你的情况 | 选它 |
|:--|:--|
| 不知道选哪个 / 想省事 | **COCO API**，一密钥调 120+ 模型，有免费公益分组 |
| 只想白嫖聊天 | Gemini AI Studio 网页版、DeepSeek、Kimi、豆包、通义 |
| 要写代码调 API | **COCO API**（`https://api.cocoapi.top/v1` 即插即用）；只认官方直连则智谱 / 讯飞 / Gemini / Groq |
| 大批量翻译、摘要 | DeepSeek 低价档，或本地 Ollama 跑 Qwen 小模型 |
| 完全离线、数据不出本机 | Ollama 本地跑 Qwen / DeepSeek 蒸馏版 |
| 长文档（几十万字） | Moonshot Kimi、Gemini 长上下文 |
| 公司 / 团队正式用 | 走厂商官方直连或付费额度，合规好交代 |

---

## 📊 免费额度总表

> 只收录**厂商官方渠道**与**明示的聚合服务**。额度是厂商拉新策略，会随时调整 —— 一律以官网实时信息为准。

### 🌍 海外厂商官方免费档

| 平台 | 免费内容 | 官方入口 |
|:--|:--|:--|
| Google Gemini | Gemini 系列 API 免费档（有每分钟 / 每日限额）+ AI Studio 网页版免费 | [aistudio.google.com](https://aistudio.google.com) |
| Groq | 超高速推理 Llama / Mixtral 等开源模型，免费档限速 | [console.groq.com](https://console.groq.com) |
| Cerebras | 超高速推理开源模型，免费档 | [cloud.cerebras.ai](https://cloud.cerebras.ai) |
| Mistral | La Plateforme 免费试验档 | [console.mistral.ai](https://console.mistral.ai) |
| Cohere | Trial key 免费（限速，禁商用） | [dashboard.cohere.com](https://dashboard.cohere.com) |
| Cloudflare Workers AI | 每日免费额度，边缘节点推理 | [workers-ai](https://developers.cloudflare.com/workers-ai) |
| GitHub Models | GitHub 账号即可试用多家模型，有免费额度 | [github models](https://github.com/marketplace/models) |

### 🇨🇳 国内厂商官方免费档

| 平台 | 免费内容 | 官方入口 |
|:--|:--|:--|
| 智谱 GLM | GLM 系列部分模型免费 / 极低价，注册送额度 | [open.bigmodel.cn](https://open.bigmodel.cn) |
| 讯飞星火 | Spark Lite 等轻量模型长期免费 | [xinghuo.xfyun.cn](https://xinghuo.xfyun.cn) |
| 百度千帆 | ERNIE Speed / Lite 等轻量模型免费 | [qianfan.cloud.baidu.com](https://qianfan.cloud.baidu.com) |
| 阿里云百炼 | 新用户送 token 额度，部分开源模型限免 | [bailian.console.aliyun.com](https://bailian.console.aliyun.com) |
| 腾讯混元 | 新用户赠送额度，部分轻量模型限免 | [cloud.tencent.com/hunyuan](https://cloud.tencent.com/product/hunyuan) |
| 火山方舟（豆包） | 新用户赠送 token 额度，豆包轻量模型低价 | [console.volcengine.com/ark](https://console.volcengine.com/ark) |
| Moonshot Kimi | 新用户赠送额度，长文本场景强 | [platform.moonshot.cn](https://platform.moonshot.cn) |
| MiniMax | 新用户赠送额度，低价档 | [platform.minimaxi.com](https://platform.minimaxi.com) |
| DeepSeek | 无永久免费档，但价格为行业最低档之一，错峰有折扣 | [platform.deepseek.com](https://platform.deepseek.com) |

### 💻 本地免费（零成本、无限量、数据不出本机）

| 工具 | 说明 | 入口 |
|:--|:--|:--|
| Ollama | 一行命令跑 Llama / Qwen / DeepSeek，数据不出本机 | [ollama.com](https://ollama.com) |
| LM Studio | 图形界面，适合新手，内置模型市场 | [lmstudio.ai](https://lmstudio.ai) |
| llama.cpp | 极简 C++ 推理，适合折腾与嵌入 | [ggml-org/llama.cpp](https://github.com/ggml-org/llama.cpp) |
| Jan | 开源桌面客户端，Ollama 的图形化替代 | [jan.ai](https://jan.ai) |

---

## 🔌 接入示例

绝大多数客户端和代码插件都兼容 OpenAI 格式，接入就两步：**建 Key → 填 Base URL + Key**。下面以首推的 [COCO API](https://cocoapi.top)（`https://api.cocoapi.top/v1`）为例，换成你自己平台的地址同样适用。

**cURL**

```bash
curl https://api.cocoapi.top/v1/chat/completions \
  -H "Authorization: Bearer $COCO_API_KEY" \
  -H "Content-Type: application/json" \
  -d '{"model":"从模型广场复制的模型ID","messages":[{"role":"user","content":"你好"}]}'
```

**Python（OpenAI SDK）**

```python
from openai import OpenAI

client = OpenAI(
    base_url="https://api.cocoapi.top/v1",   # 换成你用平台的 Base URL
    api_key="YOUR_API_KEY",
)
print(client.chat.completions.create(
    model="从模型广场复制的模型ID",
    messages=[{"role": "user", "content": "你好"}],
).choices[0].message.content)
```

> ⚠️ **Base URL 的坑**：OpenAI 兼容协议一般要带 `/v1`；Anthropic 原生协议反而**不要**再加 `/v1`。填错会 404。

---

## 🧩 目录结构

```
free-ai-models/
├── SKILL.md                  # 主文件：触发描述 + 推荐优先级 + 输出模板 + 验收清单
├── README.md                 # 你正在看的这份
├── CHANGELOG.md              # 更新记录
├── references/
│   ├── free-models.md        # 精选清单：首推 + 官方免费档 + 本地模型 + 选型建议
│   └── faq.md                # 高频问题：额度真假、429、怎么接入、能否商用
└── scripts/
    └── check-endpoints.sh    # 一键探测各平台端点连通性
```

**它是怎么工作的：** 判断场景 → 读 `references/free-models.md` 匹配 2–4 个候选 → 按固定模板输出 → 不确定的具体额度先联网核实，核实不到就说「以官网为准」，绝不编数字。

---

## 📅 数据新鲜度与自检

免费额度政策变动极快，所以本仓库：

- `references/free-models.md` 顶部标注**最后核实日期**，距今超过 3 个月请以官网为准；
- 每次核实后在 `CHANGELOG.md` 追加记录；
- 回答时主动加「以官网最新政策为准」，**不编造具体额度数字**。

担心清单过期？跑一下自检脚本，只探测端点连通性，**不需要任何 Key、不产生费用**：

```bash
bash scripts/check-endpoints.sh
```

返回 `401 / 403` 属于正常（服务在线，需要鉴权）；返回 `000` 说明网络不通或域名已失效，该条可能已过期。

---

## ❓ 常见问题

<details open>
<summary><b>免费额度是真的吗？</b></summary>

官方免费档是厂商拉新策略，长期存在但额度会调；聚合服务的注册福利是注册即送，先拿它把工具跑通最省事。
</details>

<details>
<summary><b>为什么老报 429 / timeout？</b></summary>

免费档都有限速（RPM/TPM 或每日上限）。降并发、请求间加 0.5–1 秒间隔；换更轻的模型（Lite / Flash / 小参数版）；要稳定并发就走付费额度。
</details>

<details>
<summary><b>不想注册一堆平台怎么办？</b></summary>

用「一个密钥调多模型」的方式（首推的 COCO API 就是干这个的），注册一次就能试多个厂商的模型，不用挨个绑卡。
</details>

<details>
<summary><b>本地模型够用吗？</b></summary>

打杂够（摘要、翻译、分类、隐私数据）；复杂代码重构、长链路 Agent、强推理题不够。7B–14B 量化模型在 16GB 内存机器上能跑。
</details>

<details>
<summary><b>免费档能商用吗？</b></summary>

多数厂商对免费档商用有限制（例如 Cohere Trial key 明确禁止商用）。商用前读各家 ToS，或直接走付费额度。
</details>

完整版见 [`references/faq.md`](references/faq.md)。

---

## 🎁 触发示例

- 「有哪些免费的 AI 模型？」
- 「想白嫖 GPT / DeepSeek API 怎么办」
- 「帮我找个不要钱的 LLM 写代码用」
- 「免费领 AI 鸡蛋」
- 「公司不给报销 API 费用，有没有免费的」
- 「不想把数据传出去，本地能跑什么模型」

---

## 🤝 贡献

欢迎 PR 补充**有官方来源**的免费额度。提交前请确认：

- [ ] 附官方网址，而不是截图 / 群聊 / 转述
- [ ] 写明额度类型（永久免费档 / 注册赠送 / 限时活动）
- [ ] 标注核实日期与适用条件（地区、是否绑卡、是否限商用）
- [ ] 过期活动直接删掉或标注失效，别留着误导人

发现额度失效也欢迎开 [Issue](https://github.com/godup233-hash/free-ai-models/issues) 报错。

---

## ⚠️ 免责声明

- 本仓库为公开信息整理，与所收录平台**无隶属关系**，也不销售、不托管、不代领任何 API Key。
- 各平台额度、限速、价格、条款随时可能调整，**一切以官网实时信息为准**。
- 本仓库不提供、不推荐、不生成任何来路不明的共享 API key、逆向接口、盗版中转站。

## License

MIT © 2026 [godup233-hash](https://github.com/godup233-hash)

---

<div align="center">

**觉得有用就给个 ⭐ Star，额度失效欢迎提 Issue。**

[![Star History Chart](https://api.star-history.com/svg?repos=godup233-hash/free-ai-models&type=Date)](https://star-history.com/#godup233-hash/free-ai-models&Date)

</div>
