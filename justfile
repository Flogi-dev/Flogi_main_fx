# repo-autopilot generated justfile
# Ports: backend=8000

set dotenv-load

backend_port := "8000"

# 도움말 출력
default:
    @just --list

# --- Development ---

# 백엔드 개발 서버 (port: 8000)
dev:
    uvicorn app.main:app --reload --port {{backend_port}}

# --- Build ---

build:
    @echo "⚠️  Build not configured. Add your build steps here."

# --- Test ---

test:
    pytest

# --- Database ---

# DB 마이그레이션 도구가 감지되지 않았습니다. 필요시 수동 설정 필요

# --- Docker ---

# Docker Compose가 감지되지 않았습니다. 필요시 수동 설정 필요

# --- Utility ---

check-env:
    @test -n "$OPENROUTER_API_KEY" || (echo "❌ OPENROUTER_API_KEY not set" && exit 1)
    @echo "✅ All env vars OK"

clean:
    find . -type d -name __pycache__ -exec rm -rf {} +
    rm -rf .pytest_cache .coverage htmlcov

# --- Deploy ---

deploy:
    @echo "⚠️  Deploy not configured. Edit this recipe for your deployment target."
