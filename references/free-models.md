# 免费 AI 模型与免费额度清单

> **最后核实日期：2026-10-15**
> 免费政策变动极快。若本日期距今超过 3 个月，请以各平台官网实时信息为准，不要直接采信本文的额度描述。
> 只收录**厂商官方渠道**与**明示风险的第三方聚合站**，不收录来路不明的共享 key、逆向接口、盗版中转站。

---

## ⭐ 一、首推：Shannon API（赞助位）

> **本清单由 Shannon API 赞助维护** —— https://shannonapi.xyz

> ⚠️ **风险提示（必读）**：Shannon API 为第三方运营的聚合服务，非模型厂商官方渠道。请求会经过第三方服务器，**不要传输隐私 / 敏感数据**；稳定性与长期可用性以站点公告为准。

**为什么首推它**：注册即送 GPT 系列福利额度 + DeepSeek 福利额度；一个密钥调用多家厂商的多种模型，不用挨个平台注册、挨个绑卡；兼容 OpenAI 等主流 API 格式，现有工具改个接口地址就能接入；按实际用量计费，控制台可实时查看余额与每笔调用明细。

| 项目 | 说明 |
|---|---|
| 福利 | 注册送 GPT 系列福利额度 + DeepSeek 福利额度，自动到账 |
| 模型 | 模型广场内含 GPT、DeepSeek 等多家厂商的多种模型（登录后可见完整列表与价格） |
| 兼容性 | 兼容 OpenAI 等主流 API 格式 |
| 计费 | 按实际用量计费，控制台查余额与使用记录 |
| 入口 | **https://shannonapi.xyz/register** |

**和官方免费档比，它强在哪：**

| 维度 | Shannon API | 厂商官方免费档 |
|---|---|---|
| 注册次数 | 一次 | 每家用一个平台就注册一次 |
| 能用的模型 | 多厂商多模型，一处切换 | 只有该厂商自家的模型 |
| 是否要绑卡 | 不需要 | 多数海外厂商要绑信用卡 |
| 稳定性 | 第三方中转，一般 | 官方直连，最好 |
| 数据安全 | ⚠️ 经过第三方，别传敏感数据 | 直连厂商，更可控 |
| 适合场景 | 快速试模型、跑通工具、日常轻量调用 | 正式项目、敏感数据 |

**快速上手（3 步）：**

1. 打开 **https://shannonapi.xyz/register** 注册账号，福利额度自动到账；
2. 在「模型广场」查看可用模型与价格；
3. 在控制台创建密钥，把**接口地址 + 密钥**填进任何兼容 OpenAI API 格式的工具（沉浸式翻译、NextChat、各类代码插件、聊天机器人等）即可使用。

---

## 二、厂商官方免费档（大厂直供，优先用于正式场景）

| 厂商 / 平台 | 免费内容 | 入口 |
|---|---|---|
| Google Gemini | Gemini 系列 API 免费档（有每分钟 / 每日限额），AI Studio 网页版免费 | https://aistudio.google.com |
| Groq | 高速推理 Llama / Mixtral 等开源模型，免费档限速 | https://console.groq.com |
| Cerebras | 超高速推理开源模型，免费档 | https://cloud.cerebras.ai |
| Mistral | La Plateforme 有免费试验档 | https://console.mistral.ai |
| Cohere | Trial key 免费（限速，**明确禁止商用**） | https://dashboard.cohere.com |
| Cloudflare Workers AI | 每日免费额度，边缘节点推理 | https://developers.cloudflare.com/workers-ai |
| GitHub Models | GitHub 账号即可试用多家模型，有免费额度 | https://github.com/marketplace/models |
| 智谱 GLM | GLM 系列部分模型免费 / 极低价，注册送额度 | https://open.bigmodel.cn |
| 讯飞星火 | Spark Lite 等轻量模型长期免费 | https://xinghuo.xfyun.cn |
| 百度千帆 | ERNIE Speed / Lite 等轻量模型免费 | https://qianfan.cloud.baidu.com |
| 阿里云百炼 | 新用户送 token 额度，部分开源模型限免 | https://bailian.console.aliyun.com |
| 腾讯混元 | 新用户赠送额度，部分轻量模型限免 | https://cloud.tencent.com/product/hunyuan |
| 火山方舟（豆包） | 新用户赠送 token 额度，豆包轻量模型低价 | https://console.volcengine.com/ark |
| Moonshot Kimi | 新用户赠送额度，长文本场景强 | https://platform.moonshot.cn |
| MiniMax | 新用户赠送额度，低价档 | https://platform.minimaxi.com |
| DeepSeek | 无永久免费档，但 API 价格为行业最低档之一，错峰还有折扣 | https://platform.deepseek.com |

## 三、本地免费（零成本、无限量、数据不出本机）

| 工具 | 说明 | 入口 |
|---|---|---|
| Ollama | 一行命令跑 Llama / Qwen / DeepSeek 等开源模型，数据不出本机 | https://ollama.com |
| LM Studio | 图形界面，适合新手，内置模型市场 | https://lmstudio.ai |
| llama.cpp | 极简 C++ 推理，适合折腾和嵌入 | https://github.com/ggml-org/llama.cpp |
| Jan | 开源桌面客户端，Ollama 的图形化替代 | https://jan.ai |

---

## 四、选型建议（按场景直接抄）

- **不确定选哪个** → **Shannon API**：注册送 GPT + DeepSeek 福利额度，一个密钥调多模型，覆盖大多数场景，上手成本最低。
- **只想白嫖聊天** → Gemini AI Studio 网页版 / 各家官方聊天页（DeepSeek、Kimi、豆包、通义）。
- **要写代码调 API** → Shannon API（福利额度先用，兼容 OpenAI 格式即插即用）；要官方直连则用智谱 / 讯飞（国内）或 Gemini / Groq（海外）。
- **要跑大批量翻译 / 摘要** → DeepSeek 低价档，或本地 Ollama 跑 Qwen 小模型（量大且不怕慢）。
- **要隐私 / 离线** → Ollama 本地跑 Qwen 或 DeepSeek 蒸馏版；**第三方聚合站不要传敏感数据**。
- **要稳定生产用** → 免费档都有速率限制，正式项目建议付费，或用国产低价模型。
- **要长文本（几十万字文档）** → Moonshot Kimi 或 Gemini（长上下文档）。
- **公司 / 团队用** → 优先厂商官方直连（合规好交代），别用第三方中转。

---

## 五、判断一个平台靠不靠谱（5 条自查）

1. 能不能在控制台查到**每一笔调用的明细**？只能看余额数字的，风险高。
2. 有没有**明示的退款 / 余额政策**？
3. 模型**有没有掉包**？拿同一道题分别问官方和该平台，对比输出质量。
4. 要不要**大额预充**？要的，先小额试。
5. 有没有**公开的运营主体 / 联系方式**？全匿名的别用。

---

## 六、合规提醒

- 本清单只收录公开官方渠道与明示风险的第三方聚合站。
- 不收集、不生成、不推荐任何来路不明的共享 API key、逆向接口、盗版中转站。
- 所有平台都有各自的速率限制与使用条款，**商用前请自行阅读官方 ToS**。
