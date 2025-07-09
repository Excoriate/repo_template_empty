# 🐚 Makefile - Alternative to justfile for users who prefer Make
# Set shell to bash with error handling
SHELL := /bin/bash
.SHELLFLAGS := -euo pipefail -c
.ONESHELL:
.DELETE_ON_ERROR:

# Load environment variables from .env file if it exists
ifneq (,$(wildcard ./.env))
    include .env
    export
endif

# --- Project Variables ---
# Customize these variables for your project
PROJECT_NAME ?= your-project-name
BUILD_DIR ?= build

# 📋 Default target: List all available commands
.PHONY: help
help:
	@echo "Available commands:"
	@echo "  help        - Show this help message"
	@echo "  clean       - Clean build artifacts and dependencies"
	@echo "  clean-all   - Deep clean (clean + remove lock files)"
	@echo "  hooks-install - Setup pre-commit hooks"
	@echo "  hooks-run   - Run pre-commit hooks manually"

.DEFAULT_GOAL := help

# 🚀 Development commands (commented out - uncomment and customize as needed)
# .PHONY: dev
# dev:
# 	@echo "🚀 Starting development server..."
# 	@npm run dev || yarn dev || bun dev || deno task dev

# 🧹 Clean build artifacts and dependencies
.PHONY: clean
clean:
	@echo "🧹 Cleaning build artifacts..."
	@rm -rf $(BUILD_DIR)/ build/ out/ .next/ .nuxt/
	@rm -rf node_modules/ __pycache__/ .pytest_cache/ target/
	@find . -type f -name ".DS_Store" -delete 2>/dev/null || true
	@find . -type f -name "*.pyc" -delete 2>/dev/null || true

# 🧹 Deep clean (clean + remove lock files)
.PHONY: clean-all
clean-all: clean
	@echo "🧹 Deep cleaning..."
	@rm -f package-lock.json yarn.lock pnpm-lock.yaml poetry.lock Cargo.lock go.sum

# 🔧 Setup pre-commit hooks
.PHONY: hooks-install
hooks-install:
	@echo "🔧 Installing pre-commit hooks..."
	@if command -v pre-commit >/dev/null 2>&1; then \
		pre-commit install; \
	elif [ -f "./scripts/hooks/pre-commit-init.sh" ]; then \
		./scripts/hooks/pre-commit-init.sh init; \
	else \
		echo "No pre-commit setup found"; \
	fi

# 🕵️ Run pre-commit hooks manually
.PHONY: hooks-run
hooks-run:
	@echo "🕵️ Running pre-commit hooks..."
	@if command -v pre-commit >/dev/null 2>&1; then \
		pre-commit run --all-files; \
	elif [ -f "./scripts/hooks/pre-commit-init.sh" ]; then \
		./scripts/hooks/pre-commit-init.sh run; \
	else \
		echo "No pre-commit setup found"; \
	fi