# Project Context Input Form

## Objective

To provide the essential information required for an AI agent to generate a complete `init-context-type-{specific}.md` document for your project (where `{specific}` represents your application type like `full`, `cli`, `web-app`, etc.). Please be concise but clear. The AI will expand on these points using proven context engineering methodologies to create comprehensive project documentation.

This form serves as the foundation for generating detailed architecture, tech stack, reference documentation, and other downstream documents that enable enterprise-grade AI operations with 10x better accuracy than traditional approaches.

---

## Section 2: Project & Product Definition

### 2.1 GitHub Repository

*The AI will automatically configure repository settings using industry best practices. Only provide the essential details below.*

**Repository Name** (`repository_name`):
[Enter the exact repository name as it will appear on GitHub, using kebab-case format]

> [!NOTE]
> **Examples**: `cloud-cost-cli`, `user-management-api`, `react-dashboard`, `ml-training-pipeline`

**One-Sentence Description** (`repository_description`):
[Write a clear, concise description that explains what this project does and who it's for]

> [!NOTE]
> **Examples**:
>
> - "A powerful CLI tool for analyzing and optimizing AWS cloud costs across multiple accounts"
> - "RESTful API service for managing user authentication and authorization in microservices architecture"
> - "React-based dashboard for visualizing real-time analytics data from multiple sources"

**Key Technology Topics** (Comma-separated):
[List 4-8 relevant tags that describe your technology stack and domain]

> [!NOTE]
> **Examples**:
>
> - CLI Tool: `go, cli, aws, cost-management, devops, automation`
> - Web App: `react, typescript, nodejs, postgresql, authentication, dashboard`
> - API Service: `python, fastapi, docker, kubernetes, microservices, rest-api`

### 2.3 Problem & Value Proposition

*This section is critical for context engineering. The AI will refine your input, but the core problem and solution must come from you.*

**The Problem We Are Solving:**
[Describe in 1-2 sentences the specific pain point, challenge, or inefficiency that your project addresses for its target users]

> [!NOTE]
> **Examples**:
>
> - "DevOps teams struggle to track and optimize cloud spending across multiple AWS accounts, leading to budget overruns and wasted resources"
> - "Developers working with microservices lack a centralized way to manage user authentication, resulting in inconsistent security implementations"
> - "Data analysts spend hours manually collecting and formatting metrics from different sources instead of focusing on insights"

**Our Unique Value Proposition:**
[Explain in 1-2 sentences the specific benefit or solution your project provides that differentiates it from existing alternatives]

> [!NOTE]
> **Examples**:
>
> - "Provides automated cost analysis with actionable recommendations, reducing cloud spending by 20-40% through intelligent resource optimization"
> - "Offers a unified authentication service with plug-and-play integration, reducing development time by 60% while ensuring security compliance"
> - "Delivers real-time analytics dashboard with automated data collection, enabling analysts to focus on insights rather than data preparation"

---

## Section 3: Features

*List the high-level capabilities your project will provide. The AI will convert these into formal Epics and User Stories with detailed acceptance criteria.*

### MVP (Minimum Viable Product) Features

[List the absolutely essential features needed for a functional first release. Focus on core value delivery - typically 3-6 features]

- [Feature 1: Core functionality]
- [Feature 2: Essential capability]
- [Feature 3: Basic requirement]

> [!NOTE]
> **Examples by Application Type**:
>
> **CLI Tool**:
>
> - Fetch and list all repositories from a GitHub organization
> - Clone repositories to organized local directory structure  
> - Sync command to detect and clone new repositories
> - Basic authentication with GitHub personal access tokens
>
> **Web Application**:
>
> - User registration and login with email verification
> - Create and manage personal dashboard with widgets
> - Real-time data visualization with interactive charts
> - Export reports in PDF and CSV formats
>
> **API Service**:
>
> - RESTful endpoints for user CRUD operations
> - JWT-based authentication and authorization
> - Rate limiting and request validation
> - Comprehensive API documentation with OpenAPI spec

### Next Phase Features (Optional)

[List important enhancements for the second iteration. These add significant value but aren't required for initial launch]

- [Enhancement 1: Improved functionality]
- [Enhancement 2: Performance optimization]
- [Enhancement 3: Extended capability]

> [!NOTE]
> **Examples**:
>
> - Multi-organization support with bulk operations
> - Advanced filtering and search capabilities
> - Performance optimizations and caching
> - Integration with popular third-party services
> - Advanced analytics and reporting features

### Nice to Have Features (Optional)

[List desirable features for future releases. These improve user experience but have lower priority]

- [Nice-to-have 1: Convenience feature]
- [Nice-to-have 2: Advanced functionality]
- [Nice-to-have 3: Integration feature]

> [!NOTE]
> **Examples**:
>
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
- [ ] CLI Tool (Command-line interface application)
- [ ] Desktop Application (Native desktop app with GUI)
- [ ] AI Agent / Automation (Autonomous system with tool integration)
- [ ] Library / SDK (Reusable code package for other developers)

> [!NOTE]
> **Application Type Guide**:
>
> - **Web Application**: Choose if users interact through a browser interface (React, Vue, Angular apps)
> - **API Service**: Choose if you're building backend services consumed by other applications
> - **CLI Tool**: Choose for command-line utilities and developer tools
> - **Desktop Application**: Choose for native desktop software (Electron, native apps)
> - **AI Agent**: Choose for autonomous systems that use tools and make decisions
> - **Library/SDK**: Choose if you're building reusable components for other developers

**Architectural Preferences or Constraints** (Optional):
[Specify any architectural requirements, patterns, or constraints that must be followed]

> [!NOTE]
> **Examples**:
>
> - "Must use serverless architecture for cost optimization and auto-scaling"
> - "Prefer microservices approach with clear service boundaries"
> - "Must implement Clean Architecture with hexagonal pattern for testability"
> - "Require event-driven architecture with message queues for decoupling"
> - "Must support multi-tenant SaaS architecture with data isolation"

**Idiomatic Design Pattern Preferences** (Optional):
[Specify preferred design patterns that align with your technology choices and team expertise]

> [!NOTE]
> **Examples by Technology**:
>
> - **Go**: "Use Repository pattern for data access, Command pattern for CLI operations"
> - **React**: "Implement container/presentational components, use custom hooks for logic"
> - **Python**: "Apply Factory pattern for object creation, Strategy pattern for algorithms"
> - **Java**: "Use Builder pattern for complex objects, Observer pattern for event handling"
> - **Node.js**: "Implement middleware pattern for request processing, Module pattern for organization"

---

## Section 6: User & Developer Experience (UX/DX)

*Define the core principles that will guide how users interact with your application.*

**Core Experience Principles** (Optional):
[Describe the fundamental design principles and interaction patterns that should guide the user experience]

> [!NOTE]
> **Examples by Application Type**:
>
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
[Specify the main programming language and version number]

> [!NOTE]
> **Examples**: `Go 1.21`, `Python 3.11`, `TypeScript 5.0`, `Java 17`, `Rust 1.70`

**Core Frameworks & Versions:**
[List the main frameworks, libraries, and their specific versions]

> [!NOTE]
> **Examples**:
>
> - **CLI**: `Cobra 1.8, Viper 1.17, go-github v56`
> - **Web**: `React 18.2, Next.js 14.0, Tailwind CSS 3.3`
> - **API**: `FastAPI 0.104, SQLAlchemy 2.0, Pydantic 2.4`

**Database & Version:**
[Specify database technology and version if your project requires data persistence]

> [!NOTE]
> **Examples**: `PostgreSQL 15`, `MongoDB 7.0`, `SQLite 3.44`, `Redis 7.2`, `None (stateless)`

**Key Tooling:**
[List development, build, and deployment tools]

> [!NOTE]
> **Examples**: `Docker 24.x, GoReleaser 1.21, GitHub Actions, Terraform 1.6`

### Option B: I need a recommendation

**My Goal:**
[Describe your requirements and constraints, and the AI will suggest an appropriate tech stack]

> [!NOTE]
> **Examples**:
>
> - "Need a highly scalable backend for real-time data processing with 10k+ concurrent users"
> - "Want a simple, maintainable stack for a cross-platform desktop app with offline capabilities"
> - "Require a serverless architecture for a cost-effective API with unpredictable traffic"

---

## Section 8: Third Party Integrations

*List external services and APIs your project will integrate with.*

**Required External Services:**
[List each third-party service, API, or integration your project depends on]

- [Service 1: Purpose and integration type]
- [Service 2: Purpose and integration type]
- [Service 3: Purpose and integration type]

> [!NOTE]
> **Examples**:
>
> - **Authentication**: `Auth0 (OAuth 2.0 for user management)`, `GitHub API (repository access)`
> - **Payments**: `Stripe API (subscription billing)`, `PayPal SDK (one-time payments)`
> - **Communication**: `SendGrid (email notifications)`, `Twilio (SMS alerts)`
> - **Storage**: `AWS S3 (file storage)`, `Cloudinary (image processing)`
> - **Monitoring**: `DataDog (application monitoring)`, `Sentry (error tracking)`

---

## Section 9 & 10: Setup & Deployment

*Specify how your project will be distributed and deployed.*

**Target Deployment Environment:**
[Describe where and how your application will be deployed and distributed]

> [!NOTE]
> **Examples**:
>
> - **CLI Tool**: `GitHub Releases (binaries), Homebrew (macOS), apt/yum (Linux), npm registry`
> - **Web App**: `Vercel (frontend), AWS ECS (backend), CloudFront CDN`
> - **API Service**: `Kubernetes cluster, Docker containers, AWS Lambda (serverless)`
> - **Library**: `npm registry, PyPI, crates.io, Maven Central`

**Non-Standard Setup Notes** (Optional):
[Document any special requirements, dependencies, or setup considerations]

> [!NOTE]
> **Examples**:
>
> - "Requires Git installed in PATH for repository operations"
> - "Needs access to private npm registry at registry.company.com"
> - "Must have OpenSSL 1.1+ for cryptographic operations"
> - "Requires GPU drivers for machine learning inference"

---

## Section 12: Reference & Documentation

*Provide links to essential documentation that the AI should reference during development. The documentation can also be completed by the AI agent, inferring from the previous sections of this form*

**Must-Have Documentation Links** (Optional):
[Include URLs to critical documentation, style guides, or API references]

- [Link 1: Official documentation or API reference]
- [Link 2: Style guide or coding standards]
- [Link 3: Framework or library documentation]

> [!NOTE]
> **Examples**:
>
> - `https://docs.github.com/en/rest` (GitHub REST API documentation)
> - `https://cobra.dev/` (Cobra CLI framework guide)
> - `https://react.dev/` (React official documentation)
> - `https://fastapi.tiangolo.com/` (FastAPI framework documentation)
> - `https://kubernetes.io/docs/` (Kubernetes deployment guide)
