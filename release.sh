#!/bin/bash

# 임시로 날짜 기반 태그 생성
TAG="v$(date +%Y.%m.%d.%H%M)"

echo "🚀 grandmamill $TAG 자동 릴리즈를 시작합니다..."

# 1. 모든 변경사항 커밋
git add .
git commit -m "release: $TAG"

# 2. 새로운 태그 생성 및 푸시
echo "📌 태그 생성 및 푸시 중 ($TAG)..."
git tag $TAG
git push origin main
git push origin $TAG

echo "✨ 모든 작업이 완료되었습니다! GitHub Actions에서 빌드 상황을 확인하세요."
