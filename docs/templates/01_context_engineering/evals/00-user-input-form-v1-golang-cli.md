# Project Context Input Form

## Objective

To provide the essential information required for an AI agent to generate a complete `init-context-type-{specific}.md` document for your project (where `{specific}` represents your application type like `full`, `cli`, `web-app`, etc.). Please be concise but clear. The AI will expand on these points using proven context engineering methodologies to create comprehensive project documentation.

This form serves as the foundation for generating detailed architecture, tech stack, reference documentation, and other downstream documents that enable enterprise-grade AI operations with 10x better accuracy than traditional approaches.

---

## Section 2: Project & Product Definition

### 2.1 GitHub Repository

*The AI will automatically configure repository settings using industry best practices. Only provide the essential details below.*

**Repository Name** (`repository_name`):
gloton

> [!NOTE]
> **Examples**: `cloud-cost-cli`, `user-management-api`, `react-dashboard`, `ml-training-pipeline`

**One-Sentence Description** (`repository_description`):
A powerful Golang CLI tool that fetches and synchronizes all repositories from GitHub organizations to your local filesystem.

> [!NOTE]
> **Examples**: 
> - "A powerful CLI tool for analyzing and optimizing AWS cloud costs across multiple accounts"
> - "RESTful API service for managing user authentication and authorization in microservices architecture"
> - "React-based dashboard for visualizing real-time analytics data from multiple sources"

**Key Technology Topics** (Comma-separated):
go, cli, github, git, repository-management, organization-sync, developer-tools

> [!NOTE]
> **Examples**: 
> - CLI Tool: `go, cli, aws, cost-management, devops, automation`
> - Web App: `react, typescript, nodejs, postgresql, authentication, dashboard`
> - API Service: `python, fastapi, docker, kubernetes, microservices, rest-api`

### 2.3 Problem & Value Proposition

*This section is critical for context engineering. The AI will refine your input, but the core problem and solution must come from you.*

**The Problem We Are Solving:**
Developers working with large GitHub organizations often struggle to manage and keep track of numerous repositories, requiring manual cloning and frequent checks for new repositories, leading to fragmented local development environments and missed project updates.

> [!NOTE]
> **Examples**:
> - "DevOps teams struggle to track and optimize cloud spending across multiple AWS accounts, leading to budget overruns and wasted resources"
> - "Developers working with microservices lack a centralized way to manage user authentication, resulting in inconsistent security implementations"
> - "Data analysts spend hours manually collecting and formatting metrics from different sources instead of focusing on insights"

**Our Unique Value Proposition:**
Gloton provides automated organization-wide repository discovery and synchronization, enabling developers to maintain complete, up-to-date local mirrors of entire GitHub organizations with a single command, eliminating manual repository management overhead.

> [!NOTE]
> **Examples**:
> - "Provides automated cost analysis with actionable recommendations, reducing cloud spending by 20-40% through intelligent resource optimization"
> - "Offers a unified authentication service with plug-and-play integration, reducing development time by 60% while ensuring security compliance"
> - "Delivers real-time analytics dashboard with automated data collection, enabling analysts to focus on insights rather than data preparation"

---

## Section 3: Features

*List the high-level capabilities your project will provide. The AI will convert these into formal Epics and User Stories with detailed acceptance criteria.*

### MVP (Minimum Viable Product) Features

[List the absolutely essential features needed for a functional first release. Focus on core value delivery - typically 3-6 features]

- Fetch and list all repositories from a specified GitHub organization
- Clone all repositories from an organization to a local directory structure
- Sync command to check for new repositories and clone them locally
- Basic authentication support (personal access tokens)
- Simple progress indicators for clone/sync operations
- Command-line help and usage documentation

> [!NOTE]
> **Examples by Application Type**:
> 
> **CLI Tool**:
> - Fetch and list all repositories from a GitHub organization
> - Clone repositories to organized local directory structure  
> - Sync command to detect and clone new repositories
> - Basic authentication with GitHub personal access tokens
> 
> **Web Application**:
> - User registration and login with email verification
> - Create and manage personal dashboard with widgets
> - Real-time data visualization with interactive charts
> - Export reports in PDF and CSV formats
> 
> **API Service**:
> - RESTful endpoints for user CRUD operations
> - JWT-based authentication and authorization
> - Rate limiting and request validation
> - Comprehensive API documentation with OpenAPI spec

### Next Phase Features (Optional)

[List important enhancements for the second iteration. These add significant value but aren't required for initial launch]

- Support for multiple organizations in a single sync operation
- Incremental sync (pull latest changes for existing repos)
- Filtering options (by language, activity, size, etc.)
- Parallel cloning for improved performance
- Configuration file support for default settings
- Branch selection options (default, all, or specific branches)

> [!NOTE]
> **Examples**:
> - Multi-organization support with bulk operations
> - Advanced filtering and search capabilities
> - Performance optimizations and caching
> - Integration with popular third-party services
> - Advanced analytics and reporting features

### Nice to Have Features (Optional)

[List desirable features for future releases. These improve user experience but have lower priority]

- Web UI dashboard showing sync status and repository overview
- Webhook integration for real-time synchronization
- Repository health metrics and reporting
- Integration with popular IDEs and editors
- Docker container support for isolated environments
- Backup and restore functionality for local repository collections

> [!NOTE]
> **Examples**:
> - Web UI dashboard for visual management
> - Mobile app companion
> - Advanced customization options
> - AI-powered recommendations
> - Enterprise SSO integration

---

## Section 4 & 5: Architecture & Software Design

*These selections will determine the architectural patterns and design approaches used throughout your project.*

**Application Type** (Choose one):
- [ ] Web Application (Frontend + Backend with user interface)
- [ ] API Service (Backend service with REST/GraphQL endpoints)
- [x] CLI Tool (Command-line interface application)
- [ ] Desktop Application (Native desktop app with GUI)
- [ ] AI Agent / Automation (Autonomous system with tool integration)
- [ ] Library / SDK (Reusable code package for other developers)

> [!NOTE]
> **Application Type Guide**:
> - **Web Application**: Choose if users interact through a browser interface (React, Vue, Angular apps)
> - **API Service**: Choose if you're building backend services consumed by other applications
> - **CLI Tool**: Choose for command-line utilities and developer tools
> - **Desktop Application**: Choose for native desktop software (Electron, native apps)
> - **AI Agent**: Choose for autonomous systems that use tools and make decisions
> - **Library/SDK**: Choose if you're building reusable components for other developers

**Architectural Preferences or Constraints** (Optional):
Clean Architecture with clear separation of concerns: CLI layer, business logic layer, and external service layer. Prefer modular design with pluggable authentication providers and storage backends.

> [!NOTE]
> **Examples**:
> - "Must use serverless architecture for cost optimization and auto-scaling"
> - "Prefer microservices approach with clear service boundaries"
> - "Must implement Clean Architecture with hexagonal pattern for testability"
> - "Require event-driven architecture with message queues for decoupling"
> - "Must support multi-tenant SaaS architecture with data isolation"

**Idiomatic Design Pattern Preferences** (Optional):
Use the Command pattern for CLI operations, Repository pattern for GitHub API interactions, and Strategy pattern for different sync strategies. Leverage Go's interfaces for testability and dependency injection.

> [!NOTE]
> **Examples by Technology**:
> - **Go**: "Use Repository pattern for data access, Command pattern for CLI operations"
> - **React**: "Implement container/presentational components, use custom hooks for logic"
> - **Python**: "Apply Factory pattern for object creation, Strategy pattern for algorithms"
> - **Java**: "Use Builder pattern for complex objects, Observer pattern for event handling"
> - **Node.js**: "Implement middleware pattern for request processing, Module pattern for organization"

---

## Section 6: User & Developer Experience (UX/DX)

*Define the core principles that will guide how users interact with your application.*

**Core Experience Principles** (Optional):
The CLI must be highly discoverable with excellent --help text for all commands and subcommands. Follow UNIX philosophy with clear, predictable command structure. Provide verbose and quiet modes for different use cases. All operations should be idempotent and safe to run multiple times. Error messages must be actionable with clear next steps.

> [!NOTE]
> **Examples by Application Type**:
> - **CLI Tool**: "Must be highly discoverable with excellent --help text, follow UNIX philosophy with predictable commands"
> - **Web Application**: "Prioritize mobile-first responsive design with intuitive navigation and fast load times"
> - **API Service**: "Design must be strictly RESTful with consistent naming, comprehensive documentation, and clear error messages"
> - **Desktop App**: "Focus on native platform conventions with keyboard shortcuts and accessible UI components"
> - **Library/SDK**: "Provide simple, well-documented APIs with sensible defaults and clear migration paths"

---

## Section 7: Tech Stack

*Specify your technology choices. If unsure, describe your goals and the AI will recommend an optimal stack.*

### Option A: I have a specific stack in mind

**Primary Language & Version:**
Go 1.21

> [!NOTE]
> **Examples**: `Go 1.21`, `Python 3.11`, `TypeScript 5.0`, `Java 17`, `Rust 1.70`

**Core Frameworks & Versions:**
Cobra 1.8 (CLI framework), go-github v56 (GitHub API client), Viper 1.17 (configuration management)

> [!NOTE]
> **Examples**: 
> - **CLI**: `Cobra 1.8, Viper 1.17, go-github v56`
> - **Web**: `React 18.2, Next.js 14.0, Tailwind CSS 3.3`
> - **API**: `FastAPI 0.104, SQLAlchemy 2.0, Pydantic 2.4`

**Database & Version:**
SQLite 3.44 (local metadata storage for sync state)

> [!NOTE]
> **Examples**: `PostgreSQL 15`, `MongoDB 7.0`, `SQLite 3.44`, `Redis 7.2`, `None (stateless)`

**Key Tooling:**
Docker 24.x (containerization), GoReleaser 1.21 (release automation), golangci-lint 1.54 (code quality)

> [!NOTE]
> **Examples**: `Docker 24.x, GoReleaser 1.21, GitHub Actions, Terraform 1.6`

---

## Section 8: Third Party Integrations

*List external services and APIs your project will integrate with.*

**Required External Services:**
[List each third-party service, API, or integration your project depends on]

- GitHub REST API v4 (repository discovery and metadata)
- GitHub GraphQL API v4 (efficient bulk queries for organization data)
- Git protocol (repository cloning and synchronization)

> [!NOTE]
> **Examples**:
> - **Authentication**: `Auth0 (OAuth 2.0 for user management)`, `GitHub API (repository access)`
> - **Payments**: `Stripe API (subscription billing)`, `PayPal SDK (one-time payments)`
> - **Communication**: `SendGrid (email notifications)`, `Twilio (SMS alerts)`
> - **Storage**: `AWS S3 (file storage)`, `Cloudinary (image processing)`
> - **Monitoring**: `DataDog (application monitoring)`, `Sentry (error tracking)`

---

## Section 9 & 10: Setup & Deployment

*Specify how your project will be distributed and deployed.*

**Target Deployment Environment:**
GitHub Releases (cross-platform binaries), Homebrew (macOS), apt/yum repositories (Linux), Go modules (go install), Docker Hub (containerized version)

> [!NOTE]
> **Examples**:
> - **CLI Tool**: `GitHub Releases (binaries), Homebrew (macOS), apt/yum (Linux), npm registry`
> - **Web App**: `Vercel (frontend), AWS ECS (backend), CloudFront CDN`
> - **API Service**: `Kubernetes cluster, Docker containers, AWS Lambda (serverless)`
> - **Library**: `npm registry, PyPI, crates.io, Maven Central`

**Non-Standard Setup Notes** (Optional):
Requires Git to be installed and accessible in PATH for repository cloning operations. GitHub personal access token needed for private repositories and higher API rate limits.

> [!NOTE]
> **Examples**:
> - "Requires Git installed in PATH for repository operations"
> - "Needs access to private npm registry at registry.company.com"
> - "Must have OpenSSL 1.1+ for cryptographic operations"
> - "Requires GPU drivers for machine learning inference"

---

## Section 12: Reference & Documentation

*Provide links to essential documentation that the AI should reference during development.*

> [!NOTE]
> **🤖 AI Agent Instructions for Intelligent Documentation Handling:**
>
> **📋 Documentation Enhancement Protocol:**
>
> ```
> 1. 🔍 VALIDATE PROVIDED LINKS → Check all user-provided URLs for accessibility and currency
> 2. 🔄 UPDATE OUTDATED LINKS → Suggest current versions unless user explicitly requires specific versions
> 3. 📚 INFER MISSING DOCS → Based on tech stack (Section 7), add essential missing documentation
> 4. 🌐 WEB SEARCH VALIDATION → Use web search to find canonical, official documentation URLs
> 5. ✅ VERIFY COMPLETENESS → Ensure all core technologies have appropriate documentation coverage
> ```
>
> **🔧 Link Validation & Update Protocol:**
> - **Accessibility Check**: Verify all provided URLs return 200 OK status
> - **Currency Assessment**: If links point to outdated versions (e.g., React 16 docs when project uses React 18), suggest current version
> - **User Intent Respect**: If user explicitly states "must use version X.Y", preserve their specified version
> - **Canonical Source Priority**: Always prefer official documentation over third-party tutorials
>
> **📚 Tech Stack Documentation Inference:**
> Based on technologies specified in Section 7, automatically add missing essential documentation:
> - **Primary Language**: Official language documentation and best practices guide
> - **Core Frameworks**: Getting started guides, API references, and migration guides
> - **Database Systems**: Installation guides, query references, and performance optimization docs
> - **Development Tools**: CLI references, configuration guides, and troubleshooting docs
> - **Deployment Platforms**: Deployment guides, service documentation, and monitoring setup
>
> **🌐 Web Search Strategy for Documentation Discovery:**
> - Search Pattern: `"official [technology] documentation site:[official-domain]"`
> - Validation: Confirm found URLs are from official sources (github.com/org, official project domains)
> - Version Alignment: Ensure documentation version matches tech stack version from Section 7
> - Completeness Check: Verify documentation covers installation, basic usage, and advanced features
>
> **📊 Documentation Completeness Matrix:**
> Ensure coverage for each tech stack component:
> - ✅ **Installation/Setup**: How to install and configure
> - ✅ **Getting Started**: Basic usage examples and tutorials  
> - ✅ **API Reference**: Complete API documentation or command reference
> - ✅ **Best Practices**: Official style guides and recommended patterns
> - ✅ **Migration/Updates**: Version upgrade guides when applicable

**Must-Have Documentation Links** (Optional):
[Include URLs to critical documentation, style guides, or API references that the AI should reference and validate]

- https://docs.github.com/en/rest (GitHub REST API documentation)
- https://cobra.dev/ (Cobra CLI framework documentation)
- https://pkg.go.dev/github.com/google/go-github (go-github library documentation)
- https://git-scm.com/docs (Git command line documentation)
- https://goreleaser.com/quick-start/ (GoReleaser for automated releases)

> [!NOTE]
> **Examples of AI Documentation Enhancement**:
>
> **Scenario 1 - Outdated Link Provided:**
> - User provides: `https://reactjs.org/docs/getting-started.html` (React 16 docs)
> - Project uses: React 18.2 (from Section 7)
> - AI Action: Suggest `https://react.dev/` (current React docs) unless user specifies React 16 requirement
>
> **Scenario 2 - Missing Documentation Inference:**
> - User provides: Only React documentation link
> - Tech Stack includes: React 18.2, TypeScript 5.0, Tailwind CSS 3.3
> - AI Action: Add missing docs for TypeScript (`https://www.typescriptlang.org/docs/`) and Tailwind (`https://tailwindcss.com/docs`)
>
> **Scenario 3 - Comprehensive Tech Stack Coverage:**
> - Tech Stack: Go 1.21, Cobra 1.8, PostgreSQL 15, Docker 24.x
> - AI Should Add:
>   - `https://go.dev/doc/` (Go official documentation)
>   - `https://cobra.dev/` (Cobra CLI framework)
>   - `https://www.postgresql.org/docs/15/` (PostgreSQL 15 documentation)
>   - `https://docs.docker.com/` (Docker official documentation)
>
> **Validation Examples:**
> - ✅ **Good**: `https://docs.github.com/en/rest` (Official GitHub API docs, current)
> - ⚠️ **Update Needed**: `https://v4.mui.com/` → `https://mui.com/` (MUI v4 to current v5)
> - ❌ **Invalid**: `https://example.com/broken-link` → Find official alternative via web search

