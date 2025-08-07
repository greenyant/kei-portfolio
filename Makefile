# MkDocs 프로젝트용 Makefile

# 로컬 서버 실행 (실시간 미리보기)
serve:
	mkdocs serve

# 정적 사이트 빌드 (site/ 폴더 생성)
build:
	mkdocs build

# GitHub Pages에 배포 (gh-pages 브랜치 자동 푸시)
deploy:
	mkdocs gh-deploy

# 강제 배포 (기존 gh-pages 브랜치 덮어쓰기)
deploy-force:
	mkdocs gh-deploy --force

# 문서 검사 (lint 설치 명령: "npm install -g markdownlint-cli", "npm install -g cspell")
lint:
	markdownlint docs/**/*.md
	cspell "docs/**/*.md"

# 도움말 출력
help:
	@echo "Makefile commands:"
	@echo "  serve          - 로컬에서 문서 미리보기"
	@echo "  build          - 정적 HTML 빌드"
	@echo "  deploy         - GitHub Pages에 배포"
	@echo "  deploy-force   - 강제 배포 (gh-pages 브랜치 덮어쓰기)"
	@echo "  lint           - 문서 검사 (미구현)"

clean:
	rm -rf site/