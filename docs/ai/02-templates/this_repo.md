# Repository Context Template

<!-- Template for AI agents to understand repository structure and make appropriate modifications -->
<!-- This provides comprehensive context for automated repository customization -->

## 📋 Project Overview

### Project Identity
> [!NOTE]
> **Instructions**: Fill in the basic identity of your project. This helps establish the project's purpose and scope at a glance.
> - **Name**: The official name of your project.
> - **Purpose**: A concise summary of what the project does and the problem it solves.
- **Name**: {Project Name}
- **Type**: {CLI Tool | Web Application | Library | Framework | API Service | Mobile App | Desktop Application | Other}
- **Purpose**: {1-2 sentence description of what this project does and why it exists}
- **Target Audience**: {Who will use this project - developers, end users, enterprises, etc.}

### Primary Language & Runtime
- **Main Language**: {Go | JavaScript/TypeScript | Python | Rust | Java | C# | Other}
> [!NOTE]
> **Instructions**: Specify the core programming language and the environment it runs on. This is critical for setting up the correct tooling and dependencies.
> - **Minimum Version**: Be specific about the version to avoid compatibility issues.
- **Runtime/Platform**: {Node.js | .NET | JVM | Native | Browser | Other}
- **Minimum Version**: {Specify minimum supported version}

## 🛠️ Technology Stack

### Core Technologies
- **Primary Framework**: {Express.js | React | Django | Gin | FastAPI | Spring Boot | Other | None}
> [!NOTE]
> **Instructions**: List the main frameworks and tools that are central to your project's functionality. This helps contributors understand the core architecture.
- **Database**: {PostgreSQL | MySQL | MongoDB | SQLite | Redis | None | Other}
- **Authentication**: {JWT | OAuth2 | Session-based | None | Other}
- **Testing Framework**: {Jest | pytest | go test | JUnit | Other | None}

### Development Tools
> [!NOTE]
> **Instructions**: Detail the tools used for development, such as build systems, linters, and formatters. This ensures a consistent development experience.
> - **CI/CD**: Mentioning your CI/CD provider helps in understanding the automated workflows.
- **Build System**: {npm/yarn | go modules | pip | cargo | gradle | maven | other}
- **Linting**: {ESLint | golangci-lint | flake8 | clippy | other | none}
- **Formatting**: {Prettier | gofmt | black | rustfmt | other | none}
- **CI/CD**: {GitHub Actions | GitLab CI | Jenkins | other | none}

### External Dependencies
List key external libraries, frameworks, or services:
> [!NOTE]
> **Instructions**: List major third-party dependencies. This is not for *all* dependencies, but for key ones that define the project's capabilities (e.g., a major API client or a critical utility library).
- {Dependency 1}: {Purpose/Role in project}
- {Dependency 2}: {Purpose/Role in project}
- {Dependency 3}: {Purpose/Role in project}

## 🏗️ Architecture & Structure

### Project Type Classification
> [!NOTE]
> **Instructions**: Check the boxes that best describe your project's architecture. This gives a high-level view of its structure.
- [ ] **Command Line Interface (CLI)**
- [ ] **Web API/Service**
- [ ] **Frontend Application**
- [ ] **Full-Stack Application**
- [ ] **Library/Package**
- [ ] **Microservice**
- [ ] **Monorepo**
- [ ] **Docker-based Application**
- [ ] **Serverless Function**

### Key Directories & Their Purpose
```
{project-root}/
├── {src/|lib/|app/} - {Description of main source directory}
├── {tests/|__tests__/|test/} - {Testing structure}
├── {docs/|documentation/} - {Documentation organization}
├── {config/|configs/} - {Configuration files}
├── {scripts/|bin/} - {Build/deployment scripts}
└── {other key directories} - {Their purposes}
```
