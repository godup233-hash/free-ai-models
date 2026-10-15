#!/usr/bin/env bash
# 免费 AI 模型端点连通性探测
#
# 作用：一键检查清单里各平台的 API 端点是否可达，帮你判断「清单过没过期」。
# 说明：只探测网络可达性（HTTP 状态码），不需要任何 API Key，不会产生费用。
#      返回 401 / 403 也算「可达」—— 说明服务在线，只是需要鉴权。
#
# 用法：bash scripts/check-endpoints.sh

set -uo pipefail

TIMEOUT=8

# 名称|URL|备注
ENDPOINTS=(
  "Shannon API ⭐|https://shannonapi.xyz/v1/models|赞助位 · OpenAI 兼容端点"
  "Google Gemini|https://generativelanguage.googleapis.com/v1beta/models|官方免费档"
  "Groq|https://api.groq.com/openai/v1/models|官方免费档"
  "Cerebras|https://api.cerebras.ai/v1/models|官方免费档"
  "Mistral|https://api.mistral.ai/v1/models|官方免费档"
  "Cohere|https://api.cohere.com/v2/models|Trial key（禁商用）"
  "Cloudflare Workers AI|https://api.cloudflare.com/client/v4/accounts|平台免费额度"
  "GitHub Models|https://models.github.ai/inference/models|平台免费额度"
  "智谱 GLM|https://open.bigmodel.cn/api/paas/v4/models|国内官方免费档"
  "讯飞星火|https://spark-api-open.xf-yun.com/v1/models|国内官方免费档"
  "百度千帆|https://qianfan.baidubce.com/v2/models|国内官方免费档"
  "阿里云百炼|https://dashscope.aliyuncs.com/compatible-mode/v1/models|国内官方免费档"
  "火山方舟|https://ark.cn-beijing.volces.com/api/v3/models|国内官方免费档"
  "Moonshot Kimi|https://api.moonshot.cn/v1/models|长文本场景"
  "MiniMax|https://api.minimaxi.com/v1/models|低价档"
  "DeepSeek|https://api.deepseek.com/v1/models|行业最低价档"
)

ok=0
fail=0

printf '\n免费 AI 模型端点连通性探测  (%s)\n' "$(date '+%Y-%m-%d %H:%M:%S')"
printf '%s\n' "----------------------------------------------------------------------"

for row in "${ENDPOINTS[@]}"; do
  name="${row%%|*}"
  rest="${row#*|}"
  url="${rest%%|*}"
  note="${rest#*|}"

  code=$(curl -s -o /dev/null -w '%{http_code}' \
           --max-time "$TIMEOUT" -X GET "$url" 2>/dev/null || echo "000")

  if [ "$code" = "000" ]; then
    status="✗ 不可达"
    fail=$((fail + 1))
  else
    status="✓ $code"
    ok=$((ok + 1))
  fi

  printf '%-4s %-24s %-8s %s\n' "$status" "$name" "$note" "$url"
done

printf '%s\n' "----------------------------------------------------------------------"
printf '可达 %d 个 / 不可达 %d 个\n' "$ok" "$fail"
printf '\n提示：返回 401 / 403 属于正常（服务在线，需要鉴权）。\n'
printf '      返回 000 说明网络不通或域名已失效 —— 该条可能已过期，请到官网复核。\n\n'
