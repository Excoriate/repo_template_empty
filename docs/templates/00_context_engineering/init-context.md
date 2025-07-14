# Initial Context Engineering: {{repository_name}}

> **💡 Context Engineering Note:** This document provides comprehensive repository context for AI assistants, AI Agents, and Developers/Maintainers using proven context engineering methodologies. As highlighted by industry leaders in 2025, context engineering represents a fundamental shift from experimental AI use to enterprise-grade AI operations, providing 10x better accuracy and 100x fewer production failures compared to traditional "vibe coding" approaches. It serves as the foundation for understanding the complete project landscape and enables generation of detailed architecture, tech stack, reference documentation, and other downstream documents.

## What is Context Engineering?

Context engineering has emerged as the dominant methodology in AI development, representing a paradigm shift from simple prompt crafting to comprehensive information architecture design. As noted by [Analytics India Magazine](https://analyticsindiamag.com/ai-features/context-engineering-is-the-new-vibe-coding/), "when LLMs fail, it's not because the model is broken — it's because the system around it didn't set it up for success."

### Key Components of Context Engineering

**Information Ecosystem Management:**

- **System Instructions and Role Definitions**: Clear, structured directives that define AI behavior and capabilities
- **Conversation History and Memory Management**: Tracking past interactions to maintain coherence and build upon previous context
- **Relevant Documents and Knowledge Base**: Curated external knowledge injection with proper prioritization and chunking
- **Tool Outputs and API Integration**: Real-time data from external systems integrated seamlessly into context
- **Structured Information Architecture**: Organizing data to fit within token constraints while maximizing relevance

**Systems-Level Approach:**
Unlike prompt engineering's focus on individual interactions, context engineering orchestrates multiple layers of information to create a dynamic, intelligent environment. This approach transforms AI from simple responders into intelligent collaborators capable of understanding nuance, user preferences, and complex workflows.

### Context Engineering vs. Traditional Approaches

| Approach | Focus | Methodology | Outcomes |
|----------|-------|-------------|----------|
| **Prompt Engineering** | Individual instructions | Crafting better prompts | Variable results, limited scalability |
| **Vibe Coding** | Intuitive AI interaction | "Feeling your way" through tasks | Experimental, high failure rate |
| **Context Engineering** | Information ecosystem | Systematic framework design | Enterprise-grade reliability, scalable AI operations |

---

## Table of Contents

- [Initial Context Engineering: {{repository\_name}}](#initial-context-engineering-repository_name)
  - [What is Context Engineering?](#what-is-context-engineering)
    - [Key Components of Context Engineering](#key-components-of-context-engineering)
    - [Context Engineering vs. Traditional Approaches](#context-engineering-vs-traditional-approaches)
  - [Table of Contents](#table-of-contents)
  - [How to use this document?](#how-to-use-this-document)
    - [Context Engineering Implementation Structure](#context-engineering-implementation-structure)
    - [Context Engineering Methodology Applied](#context-engineering-methodology-applied)
    - [AI Assistant Obligations](#ai-assistant-obligations)
  - [Workflow](#workflow)
    - [Initial Context as an Input for PRP](#initial-context-as-an-input-for-prp)
    - [Steps](#steps)
    - [Context Engineering Flow Principles](#context-engineering-flow-principles)
    - [Inputs \& Outputs](#inputs--outputs)
      - [Visual Flow](#visual-flow)
      - [Input Components](#input-components)
      - [Output Generation](#output-generation)
  - [Context Engineering Initial Context](#context-engineering-initial-context)
    - [1. Product, Application, or Tool Description](#1-product-application-or-tool-description)
    - [1.1 GitHub Repository](#11-github-repository)
      - [Output Format](#output-format)
    - [1.2 Application/Tool/Product Name](#12-applicationtoolproduct-name)
    - [1.3 Primary Purpose (High-Level Description)](#13-primary-purpose-high-level-description)
    - [2. Features](#2-features)
    - [3. Architecture Overview](#3-architecture-overview)
    - [4. Implementation Requirements](#4-implementation-requirements)
    - [5. Tech Stack](#5-tech-stack)
    - [5.1 Primary Language](#51-primary-language)
    - [5.2 Programming Language Specific Packages, Libraries or Frameworks](#52-programming-language-specific-packages-libraries-or-frameworks)
    - [5.3 Project Structure](#53-project-structure)
    - [5.4 Development Tools](#54-development-tools)
    - [5.5 Containerization (if applicable)](#55-containerization-if-applicable)
    - [5.6 CI/CD Workflow (if applicable)](#56-cicd-workflow-if-applicable)
    - [5.7 Cloud Platform (if applicable)](#57-cloud-platform-if-applicable)
    - [5.8 Infrastructure \& DevOps (if applicable)](#58-infrastructure--devops-if-applicable)
    - [5.9 Others (if applicable)](#59-others-if-applicable)
    - [6. Architecture (optional)](#6-architecture-optional)
      - [6.1 Software/Design Pattern(s)](#61-softwaredesign-patterns)
      - [6.2 Software Architecture (optional)](#62-software-architecture-optional)
    - [7. Context Required](#7-context-required)
    - [Development Environment Setup](#development-environment-setup)
    - [Dependencies \& Prerequisites](#dependencies--prerequisites)
    - [Environment Variables](#environment-variables)
    - [External Services](#external-services)
    - [Configuration Requirements](#configuration-requirements)
    - [8. Other Considerations](#8-other-considerations)
    - [**OTHER CONSIDERATIONS:** Requirements \& Gotchas](#other-considerations-requirements--gotchas)
      - [Development Constraints](#development-constraints)
      - [Common Gotchas AI Assistants Miss](#common-gotchas-ai-assistants-miss)
      - [Performance Considerations](#performance-considerations)
      - [Security Requirements](#security-requirements)
      - [Deployment Notes](#deployment-notes)

---

## How to use this document?

This document implements **context engineering best practices** to create comprehensive information ecosystems for AI systems. Each section is designed following proven context engineering methodologies:

### Context Engineering Implementation Structure

- **🤖 Hint for the AI Assistant**: Structured context guidance that provides semantic understanding and role definition for AI systems, following context engineering principles of clear instruction architecture
- **⬇️ Outcome from this section**: Explicit outcome tracking that enables AI systems to validate completeness and maintain consistency across context layers. No section can be skipped, and each section must be completed with all the required information identified as outcome.
- **📋 Template Variables**: Standardized placeholders (e.g., `{{repository_name}}`) that enable dynamic context adaptation while maintaining structural integrity

### Context Engineering Methodology Applied

This document leverages key context engineering principles:

1. **Structured Information Architecture**: Each section builds upon previous context to create comprehensive understanding
2. **Tool Integration**: Sections are designed to integrate with external data sources and repository analysis tools
3. **Prioritized Information Flow**: Content is organized to maximize AI comprehension within token constraints
4. **Systematic Validation**: Outcome tracking ensures complete context capture before proceeding

### AI Assistant Obligations

The AI assistant must complete each numbered section following context engineering protocols:

- Maintain consistency with established context patterns
- Validate outcomes against provided [example init-context.md](init-context-example.md) file
- Ensure information architecture supports downstream AI operations
- Apply systematic thinking rather than intuitive "vibe-based" approaches

---

## Workflow

### Initial Context as an Input for PRP

This workflow follows a **context engineering workflow** to assess a first initial context, which's a "vertical slice" of all the neccessary context, and then use that context to create a comprehensive information ecosystem for the AI assistant. This document, once completed, constitutes the most important input for any PRP (Product Requirement Prompt)

### Steps

1. **Context Priming Phase**: User provides initial information through the [helper prompt](init-context-helper-prompt.md) to establish foundational context layers and semantic understanding framework. This [helper prompt](init-context-helper-prompt.md) is a prompt that is used to guide the AI assistant to understand the user's requirements, and complete each section of the [init-context.md](init-context.md) file throughtout an assisted and verified process.
2. **Concrete Context Grounding**: User provides examples to enable pattern recognition and contextual anchoring, supporting the AI's understanding through tangible reference points (following context engineering's emphasis on concrete examples over abstract descriptions)
3. **Structured Context Generation**: The comprehensive initial context is systematically generated in [initial_context.md](../../00_context_engineering/init-context.md) following structured information architecture principles. This document is the most important input for any PRP (Product Requirement Prompt)

### Context Engineering Flow Principles

This process implements key context engineering methodologies:

- **Layered Information Building**: Each step builds upon previous context to create comprehensive understanding. Each section provides key information to specifics PRPs (Product Requirement Prompts) to complete each documentation layer in the [docs](../../../docs/) directory.
- **Concrete Grounding**: Examples in the [examples](../../00_context_engineering/examples/) directory provide essential pattern recognition, guidance, known-patterns and implementation details for AI assistants.
- **Structured Output**: Final context document follows systematic organization for optimal AI consumption.
- **Validation Loops**: Each phase includes outcome verification to ensure context completeness

### Inputs & Outputs

#### Visual Flow

> **🚀 Context Engineering Dual-Input Architecture**
>
> Following [industry research findings](https://medium.com/@tam.tamanna18/understanding-context-engineering-c7bfeeb41889), this dual-input architecture ensures AI systems receive both conceptual guidance and concrete reference points, enabling **10x better accuracy** compared to traditional prompt-based approaches.
>
> **Visual Input Flow:**
> ```
> ┌─────────────────────────────────────────────────────────────────┐
> │                    CONTEXT ENGINEERING WORKFLOW                 │
> └─────────────────────────────────────────────────────────────────┘
>                                 │
>                                 ▼
>                    ┌─────────────────────────┐
>                    │       USER INPUTS       │
>                    └─────────────────────────┘
>                                 │
>         ┌───────────────────────┼───────────────────────┐
>         ▼                       │                       ▼
> ┌───────────────────┐           │           ┌───────────────────┐
> │  HELPER PROMPT    │           │           │    EXAMPLES       │
> │  (Required)       │           │           │   (Optional)      │
> │                   │           │           │                   │
> │ • Repository info │           │           │ • Code samples    │
> │ • Tech stack      │           │           │ • Config files   │
> │ • Requirements    │           │           │ • Links/URLs      │
> │ • Architecture    │           │           │ • Documentation  │
> └───────────────────┘           │           └───────────────────┘
>         │                       │                       │
>         └───────────────────────┼───────────────────────┘
>                                 ▼
>                    ┌─────────────────────────┐
>                    │    AI ASSISTANT         │
>                    │    PROCESSES INPUTS     │
>                    └─────────────────────────┘
>                                 │
>                                 ▼
>                    ┌─────────────────────────┐
>                    │       GENERATES         │
>                    └─────────────────────────┘
>                                 │
>         ┌───────────────────────┼───────────────────────┐
>         ▼                       │                       ▼
> ┌───────────────────┐           │           ┌───────────────────┐
> │  init-context.md  │           │           │  examples/        │
> │                   │           │           │  directory        │
> │ • Complete context│           │           │                   │
> │ • PRP-ready       │           │           │ • Refined examples│
> │ • All sections    │           │           │ • Generated files │
> │ • Template vars   │           │           │ • Reference docs  │
> └───────────────────┘           │           └───────────────────┘
> ```
>

#### Input Components


- ✅ **Helper Prompt (Required):** User answers guided questions from [helper prompt](init-context-helper-prompt.md) to provide systematic project information
- ✅ **Examples (Optional):** User provides example files, code samples, documentation, or links in the [examples directory](../../00_context_engineering/examples) for AI reference and pattern recognition

#### Output Generation

- 📄 **init-context.md:** Complete [initial context](../../00_context_engineering/init_context.md) document ready for PRP (Product Requirement Prompt) usage
- 📁 **examples/ directory:** Refined [examples](../../00_context_engineering/examples/), generated reference files, and processed documentation from user inputs


---

## Context Engineering Initial Context

### 1. Product, Application, or Tool Description

### 1.1 GitHub Repository

> [!NOTE]
> **🤖 Instructions for AI Assistant:**
> 
> **📋 Process Flow - Follow these steps in order:**
> ```
> 1. 🔍 ANALYZE → Extract repository info from user prompt
> 2. 📂 CATEGORIZE → Separate user-specified vs. auto-inferred settings  
> 3. 📊 GENERATE TABLE → Create summary with source/logic column
> 4. ⚙️ CREATE YAML → Generate detailed configuration with comments
> 5. ✅ VALIDATE → Check syntax and completeness
> 6. 📤 PRESENT → Output in mandatory structure format
> ```
> 
> **🔧 Detailed Steps:**
> - 📍 Analyze the repository location from user's helper prompt (default: `github.com/Excoriate/{{repository_name}}`)
> - 🏷️ Extract repository metadata (name, description, tech stack)
> - 🗂️ Categorize settings as user-specified vs. auto-inferred based on analysis
> - 📋 Generate both summary table and detailed YAML configuration
> - 📖 Reference [settings.yaml](../../../.github/settings.yml) for complete configuration structure
> 
> **🔄 Template Variable Handling:**
> - ✏️ Replace `{{repository_name}}` with actual repository name from user input
> - 📝 Replace `{{repository_description}}` with actual description from analysis
> - 🏗️ Keep template variables in YAML only when showing configuration structure/examples
> - 💯 Use actual values in the summary table output
> 
> **✅ Validation Requirements:**
> - 🔍 Verify repository exists and is accessible (if analyzing existing repo)
> - ⚖️ Check for obvious inconsistencies between stated purpose and detected tech stack
> - 📋 Validate YAML syntax before presenting configuration
> - 🔧 Ensure all required fields have values (use defaults when user input incomplete)
> - 📚 Cross-reference against settings.yml schema for completeness
> 
> **🚨 Error Handling & Fallback Strategies:**
> - **❌ Missing Repository:** If repository doesn't exist or isn't accessible, proceed with template structure using provided information
> - **⚠️ Incomplete Information:** Use organization defaults (Excoriate standards) for missing user specifications
> - **🔧 Tech Stack Detection Failure:** Request clarification or use "general" labels and minimal CI requirements
> - **❌ Invalid Input:** Politely request correction while providing helpful examples of expected format
> - **⚡ Conflicting Requirements:** Prioritize security and best practices, note conflicts in output
 
> [!NOTE]
> **⬇️ Expected Outcomes:**
> - ☑️ Git Repository Location: `github.com/Excoriate/{{repository_name}}`
> - ☑️ GitHub Repository Settings configuration matching requirements from settings.yaml

#### Output Format

**MANDATORY STRUCTURE - Present in this exact order:**

1. **Repository Summary Table:**

| GitHub Repository | Description | Configurable Settings | Source/Logic |
|------------------|-------------|----------------------|--------------|
| `{{repository_name}}` | `{{repository_description}}` | **User-Specified:**<br>- Repository name and description<br>- Technology-specific topics<br>- Team access permissions<br>- Branch protection requirements<br><br>**Auto-Inferred:**<br>- Labels based on tech stack<br>- CI/CD status checks<br>- Security configurations<br>- Best practice defaults | **User Input:** Direct from helper prompt<br>**Analysis:** Tech stack detection from codebase<br>**Defaults:** Organization-wide best practices<br>**Security:** Industry standard configurations |

2. **Complete GitHub Repository Settings Configuration:**

*Note: Replace template variables `{{variable}}` with actual analyzed values. Variables with `:-default` show fallback values when analysis is incomplete.*

```yml
# Core Repository Configuration (User-Specified + Auto-Inferred)
repository:
  name: {{repository_name}}                    # REPLACE: Actual repository name
  description: {{repository_description}}      # REPLACE: Actual description from analysis
  topics: {{tech_stack_topics}}               # REPLACE: Auto-inferred from primary language & frameworks
                                               # Example: ["typescript", "react", "nodejs"]

# Team Access Configuration (User-Specified or Default Best Practices)
teams:
  - name: maintainers
    permission: admin
  - name: contributors  
    permission: push

# Technology-Specific Labels (Auto-Inferred from Tech Stack)
labels:
  - name: {{primary_language}}                # REPLACE: Detected primary language
    color: "{{language_color}}"               # REPLACE: Standard color for language
    description: "{{primary_language}} related changes"
  - name: {{framework_name}}                  # REPLACE: Detected framework if applicable
    color: "{{framework_color}}"              # REPLACE: Framework-specific color
    description: "{{framework_name}} specific functionality"

# Branch Protection (User Requirements + Security Best Practices)
branches:
  - name: main
    protection:
      required_pull_request_reviews:
        required_approving_review_count: {{min_reviewers:-1}}      # DEFAULT: 1 reviewer minimum
        require_code_owner_reviews: {{require_codeowners:-true}}   # DEFAULT: true
      required_status_checks:
        contexts: {{ci_status_checks}}                             # REPLACE: Auto-inferred from CI/CD workflow
                                                                   # Example: ["ci/lint", "ci/test", "ci/build"]
      restrictions:
        users: [{{repository_owner:-"Excoriate"}}]                # DEFAULT: "Excoriate"
```

Entire [settings.yml](../../../.github/settings.yml) file is present on this repo, and is modified according to the user's requirements.


### 1.2 Application/Tool/Product Name

> [!IMPORTANT]
> **🤖 Hint for the AI Assistant:**
> - 📝 Use the exact repository name as the primary product identifier
> - 🔍 Ensure consistency with the GitHub repository's canonical name
> - 🏷️ Only deviate if explicitly specified by the product manager or stakeholder
> - 📌 Example: For `ai-assistant-template`, use "AI Assistant Template" as the full product name

> **⬇️ Outcome from this section**
> 
> - ☑️ Application/Tool/Product Name: `{{repository_name}}`
> - ☑️ Application/Tool/Product Description: `{{repository_description}}`

### 1.3 Primary Purpose (High-Level Description)

> [!IMPORTANT]
> **🤖 Hint for the AI Assistant:**
> - 🎯 Define the fundamental purpose and core problem being solved
> - 👥 Identify primary users and target audience clearly
> - 💡 Articulate unique value proposition and innovative approach
> - 🚀 Highlight key features and distinctive capabilities
> - 📊 Ensure description enables rapid comprehension of strategic intent

> **⬇️ Outcome from this section**
> 
> - ☑️ Primary Purpose: `{{primary_purpose}}`
> - ☑️ Target Users: `{{target_users}}`
> - ☑️ Core Value Proposition: `{{core_value_proposition}}`
> - ☑️ Key Differentiators: `{{key_differentiators}}`
> - ☑️ Problem Statement: `{{problem_statement}}`

### 2. Features

> [!IMPORTANT]
> **🤖 Hint for the AI Assistant:**
> - 🎯 Define primary feature categories that represent core functionality areas, and align with the primary purpose and value proposition.
> - 📋 List 4-6 specific capabilities per feature category with clear descriptions
> - 💼 Focus on user-facing functionality and business value
> - 📁 Reference concrete examples in the examples/ directory
> - 🔗 Ensure features align with the primary purpose and value proposition

> **⬇️ Outcome from this section**
> 
> - ☑️ Primary Feature or Main Functionality: `{{primary_feature_category}}`
> - ☑️ Core Features: `{{core_features}}`
> - ☑️ List of (MVP) Features: `{{mvp_features}}`
> - ☑️ Feature-to-Purpose Alignment: `{{feature_to_purpose_alignment}}`

### 3. Architecture Overview

> [!IMPORTANT]
> **🤖 Hint for the AI Assistant:**
> - 🏗️ Describe the high-level system architecture and component relationships
> - 📊 Map data flow patterns and integration points between major components
> - 🔗 Identify external system dependencies and communication protocols
> - 🎯 Explain architectural patterns and design principles applied
> - 📋 Include deployment architecture and infrastructure patterns

> **⬇️ Outcome from this section**
> 
> - ☑️ System Architecture Pattern: `{{architecture_pattern}}`
> - ☑️ Core Components: `{{core_components}}`
> - ☑️ Data Flow Architecture: `{{data_flow_pattern}}`
> - ☑️ Integration Points: `{{integration_points}}`
> - ☑️ Deployment Architecture: `{{deployment_architecture}}`
> - ☑️ Scalability Strategy: `{{scalability_approach}}`

### 4. Implementation Requirements

> [!IMPORTANT]
> **🤖 Hint for the AI Assistant:**
> - ⚙️ Define functional and non-functional requirements for implementation
> - 🔒 Specify security, compliance, and regulatory requirements
> - 📈 Detail performance, scalability, and reliability requirements
> - 🎯 List integration requirements and external service dependencies
> - 📋 Include operational requirements for monitoring and maintenance

> **⬇️ Outcome from this section**
> 
> - ☑️ Functional Requirements: `{{functional_requirements}}`
> - ☑️ Non-Functional Requirements: `{{non_functional_requirements}}`
> - ☑️ Security Requirements: `{{security_requirements}}`
> - ☑️ Performance Requirements: `{{performance_requirements}}`
> - ☑️ Integration Requirements: `{{integration_requirements}}`
> - ☑️ Operational Requirements: `{{operational_requirements}}`

### 5. Tech Stack

> [!IMPORTANT]
> **🤖 Hint for the AI Assistant:**
> - 🔍 Identify the primary runtime environment, language, framework, and database technologies (if applicable)
> - 📦 Include containerization, orchestration, CI/CD, and cloud platform technologies
> - 🛠️ Specify development tools, package managers, build tools, and testing frameworks
> - 🔗 Ensure all technologies align with the primary purpose and value proposition

> **⬇️ Outcome from this section**
> 
> - ☑️ Primary Language: `{{primary_language}}`
> - ☑️ Programming Language Specific Packages, Libraries or Frameworks: `{{language_packages_frameworks}}`
> - ☑️ Project Structure: `{{project_structure}}`
> - ☑️ Development Tools: `{{development_tools}}`
> - ☑️ Containerization: `{{container_technology}}` (if applicable)
> - ☑️ CI/CD Workflow: `{{cicd_workflow}}` (if applicable)
> - ☑️ Cloud Platform: `{{cloud_platform}}` (if applicable)
> - ☑️ Infrastructure & DevOps: `{{infrastructure_and_devops}}` (if applicable)
> - ☑️ Others: `{{other_technologies}}` (if applicable)

### 5.1 Primary Language

> [!IMPORTANT]
> **🤖 Hint for the AI Assistant:**
> - 📝 Specify the main programming language(s) used in the project
> - 🔢 Include version requirements (e.g., Python 3.9+, Node.js 18+, Go 1.21+)
> - 📋 List alternative languages if used for specific components
> - 🎯 Justify language choice based on project requirements and constraints

**Primary Language:** `{{primary_language}}`
**Version Requirement:** `{{language_version}}`
**Rationale:** `{{language_choice_rationale}}`

### 5.2 Programming Language Specific Packages, Libraries or Frameworks

> [!IMPORTANT]
> **🤖 Hint for the AI Assistant:**
> - 📦 List core frameworks and libraries essential to the project
> - 🔗 Include version constraints for critical dependencies
> - 🎯 Focus on major frameworks that define the application architecture
> - 📋 Group by functionality (web framework, ORM, testing, etc.)

**Core Framework:** `{{core_framework}}`
**Key Libraries:**
- `{{library_1}}`: `{{library_1_purpose}}`
- `{{library_2}}`: `{{library_2_purpose}}`
- `{{library_3}}`: `{{library_3_purpose}}`

### 5.3 Project Structure

> [!IMPORTANT]
> **🤖 Hint for the AI Assistant:**
> - 📁 Describe the high-level directory organization
> - 🗂️ Explain key directories and their purposes
> - 📋 Mention any architectural patterns reflected in structure
> - 🎯 Highlight conventions that developers must follow

**Structure Pattern:** `{{project_structure_pattern}}`
**Key Directories:**
- `{{dir_1}}`: `{{dir_1_purpose}}`
- `{{dir_2}}`: `{{dir_2_purpose}}`
- `{{dir_3}}`: `{{dir_3_purpose}}`

### 5.4 Development Tools

> [!IMPORTANT]
> **🤖 Hint for the AI Assistant:**
> - 🛠️ List essential tools for development workflow
> - 📝 Include IDE/editor recommendations with extensions
> - 📦 Specify package managers and build tools
> - 🧪 List testing frameworks and quality assurance tools

**IDE/Editor:** `{{preferred_ide}}`
**Package Manager:** `{{package_manager}}`
**Build Tools:** `{{build_tools}}`
**Testing Framework:** `{{testing_framework}}`
**Linting/Formatting:** `{{linting_tools}}`

### 5.5 Containerization (if applicable)

> [!IMPORTANT]
> **🤖 Hint for the AI Assistant:**
> - 🐳 Specify container technology and version
> - 📋 Describe container orchestration if used
> - 🔧 Include base images and multi-stage build patterns
> - 📝 Mention container registry and deployment strategy

**Container Technology:** `{{container_technology}}`
**Base Image:** `{{container_base_image}}`
**Orchestration:** `{{container_orchestration}}`
**Registry:** `{{container_registry}}`

### 5.6 CI/CD Workflow (if applicable)

> [!IMPORTANT]
> **🤖 Hint for the AI Assistant:**
> - 🔄 Describe the continuous integration platform
> - 📋 List key pipeline stages (build, test, deploy)
> - 🎯 Include deployment targets and strategies
> - 🔒 Mention security scanning and quality gates

**CI/CD Platform:** `{{cicd_platform}}`
**Pipeline Stages:** `{{pipeline_stages}}`
**Deployment Strategy:** `{{deployment_strategy}}`
**Quality Gates:** `{{quality_gates}}`

### 5.7 Cloud Platform (if applicable)

> [!IMPORTANT]
> **🤖 Hint for the AI Assistant:**
> - ☁️ Specify primary cloud provider and region preferences
> - 📋 List key cloud services used (compute, storage, database)
> - 🔒 Include authentication and security configurations
> - 💰 Mention cost optimization considerations

**Cloud Provider:** `{{cloud_provider}}`
**Primary Services:**
- **Compute:** `{{cloud_compute_service}}`
- **Storage:** `{{cloud_storage_service}}`
- **Database:** `{{cloud_database_service}}`
- **Networking:** `{{cloud_networking_service}}`

### 5.8 Infrastructure & DevOps (if applicable)

> [!IMPORTANT]
> **🤖 Hint for the AI Assistant:**
> - 🏗️ Describe Infrastructure as Code (IaC) tools used
> - 📊 List monitoring and observability solutions
> - 🔒 Include security and compliance tools
> - 📋 Mention backup and disaster recovery strategies

**Infrastructure as Code:** `{{iac_tool}}`
**Monitoring:** `{{monitoring_solution}}`
**Logging:** `{{logging_solution}}`
**Security Tools:** `{{security_tools}}`
**Backup Strategy:** `{{backup_strategy}}`

### 5.9 Others (if applicable)

> [!IMPORTANT]
> **🤖 Hint for the AI Assistant:**
> - 🔧 Include any additional tools or technologies not covered above
> - 📋 Mention external services or APIs
> - 🎯 List development productivity tools
> - 📝 Include documentation or communication tools

**Additional Tools:** `{{additional_tools}}`
**External Services:** `{{external_services}}`
**Documentation:** `{{documentation_tools}}`
**Communication:** `{{communication_tools}}`

---

### 6. Architecture (optional)

> [!IMPORTANT]
> **🤖 Hint for the AI Assistant:**
> - 🏗️ This section is optional but highly recommended for complex systems
> - 📐 Focus on software design patterns and architectural decisions that shape the codebase
> - 🎯 Distinguish between design patterns (code-level) and software architecture (system-level)
> - 📋 Include rationale for architectural choices and trade-offs considered
> - 🔗 Reference how architecture aligns with the primary purpose and requirements

> **⬇️ Outcome from this section**
> 
> - ☑️ Software/Design Patterns: `{{design_patterns}}`
> - ☑️ Software Architecture: `{{software_architecture}}`
> - ☑️ Architectural Rationale: `{{architectural_rationale}}`

#### 6.1 Software/Design Pattern(s)

> [!IMPORTANT]
> **🤖 Hint for the AI Assistant:**
> - 🎨 Identify key design patterns used throughout the codebase (e.g., Factory, Observer, Strategy)
> - 📦 Include architectural patterns like MVC, MVP, MVVM, or Repository pattern
> - 🔄 Describe how patterns solve specific problems in the domain
> - 📝 Reference pattern implementation locations in the codebase
> - 🎯 Focus on patterns that significantly impact code organization and maintainability

**Design Patterns Applied:** `{{applied_design_patterns}}`
**Pattern Implementation Details:** `{{pattern_implementation}}`
**Pattern Rationale:** `{{pattern_rationale}}`

#### 6.2 Software Architecture (optional)

> [!IMPORTANT]
> **🤖 Hint for the AI Assistant:**
> - 🏛️ Describe high-level software architecture (e.g., Layered, Hexagonal, Clean Architecture)
> - 📊 Map major components and their relationships
> - 🔗 Explain how different modules/packages interact
> - 📈 Include data flow and control flow patterns
> - 🎯 Connect architecture to non-functional requirements (scalability, maintainability, testability)

**Software Architecture Style:** `{{architecture_style}}`
**Component Organization:** `{{component_organization}}`
**Module Relationships:** `{{module_relationships}}`
**Data/Control Flow:** `{{data_control_flow}}`

---

### 7. Context Required

### Development Environment Setup
{{setup_requirements}}

### Dependencies & Prerequisites
- {{prerequisite_1}}: {{prerequisite_1_version}} - {{prerequisite_1_purpose}}
- {{prerequisite_2}}: {{prerequisite_2_version}} - {{prerequisite_2_purpose}}
- {{prerequisite_3}}: {{prerequisite_3_version}} - {{prerequisite_3_purpose}}

### Environment Variables
{{environment_variables_description}}

### External Services
- {{external_service_1}}: {{external_service_1_purpose}}
- {{external_service_2}}: {{external_service_2_purpose}}

### Configuration Requirements
{{configuration_requirements}}

---

### 8. Other Considerations

### **OTHER CONSIDERATIONS:** Requirements & Gotchas

#### Development Constraints
- {{constraint_1}}: {{constraint_1_description}}
- {{constraint_2}}: {{constraint_2_description}}

#### Common Gotchas AI Assistants Miss
- {{gotcha_1}}: {{gotcha_1_explanation}}
- {{gotcha_2}}: {{gotcha_2_explanation}}
- {{gotcha_3}}: {{gotcha_3_explanation}}

#### Performance Considerations
{{performance_considerations}}

#### Security Requirements
{{security_requirements}}

#### Deployment Notes
{{deployment_notes}}

---
