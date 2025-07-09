# 🐚 Set the default shell to bash with error handling
set shell := ["bash", "-uce"]

# Load environment variables from .env file if it exists
set dotenv-load

# --- Project Variables ---
# Customize these variables for your project
PROJECT_NAME := "your-project-name"
BUILD_DIR := "build"

# 📋 Default recipe: List all available commands
default:
    @just --list

# 🚀 Development commands
# dev:
#     @echo "🚀 Starting development server..."
#     @npm run dev || yarn dev || bun dev || deno task dev

# 🔥 Development with hot reload
# 🧹 Clean build artifacts and dependencies
clean:
    @echo "🧹 Cleaning build artifacts..."
    @rm -rf {{BUILD_DIR}}/ build/ out/ .next/ .nuxt/
    @rm -rf node_modules/ __pycache__/ .pytest_cache/ target/
    @find . -type f -name ".DS_Store" -delete
    @find . -type f -name "*.pyc" -delete

# 🧹 Deep clean (clean + remove lock files)
clean-all: clean
    @echo "🧹 Deep cleaning..."
    @rm -f package-lock.json yarn.lock pnpm-lock.yaml poetry.lock Cargo.lock go.sum

# 🔧 Setup pre-commit hooks
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
hooks-run:
    @echo "🕵️ Running pre-commit hooks..."
    @if command -v pre-commit >/dev/null 2>&1; then \
        pre-commit run --all-files; \
    elif [ -f "./scripts/hooks/pre-commit-init.sh" ]; then \
        ./scripts/hooks/pre-commit-init.sh run; \
    else \
        echo "No pre-commit setup found"; \
    fi
