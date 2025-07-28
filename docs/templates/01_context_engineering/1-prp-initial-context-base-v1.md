---
title: "Product Requirement Prompt (PRP) - Context Engineering Template"
description: "This document covers the Product Requirements Prompt (PRP) system, which is the core architecture that transforms high-level feature requests into comprehensive implementation blueprints for AI assistants. The PRP system provides structured templates, validation loops, and context aggregation mechanisms that enable reliable AI-assisted software development."
version: "1.0.0"
status: "draft"
type: "product-requirement-prompt"
context: "context-engineering"
related:
  - 
---

> **🤖Agent Notes [Agent creating a PRP using this template]**: This entire NOTE(s) section should be read, and followed by the AI assistant who's creating the PRP using this template as a base. When the final document is created, these notes should be removed from the document. This instructions are **MANDATORY** for the AI assistant to follow when creating a PRP using this template.
>
> **⚠️ Important**: When creating an actual PRP from this template, remove all notes, guidance sections, placeholders, and instructional content. This includes:
>
> - All 🤖Agent Notes sections
> - All 📝Template Note sections (if any remain)
> - Example guidance and instructional text
> - Template placeholders ({{PLACEHOLDER}} text)
> - Any explanatory notes about template usage
> - This warning itself
>
> - **📋 PRP Metadata Standardization**: All PRPs generated from this template must maintain consistent metadata structure. Every PRP document requires the following YAML frontmatter format:
>
> ```yaml
> ---
> title: "Product Requirement Prompt (PRP) - [Specific Domain/Purpose]"
> description: "[Clear, specific description of the PRP's purpose and scope]"
> version: "[Semantic version starting at 1.0.0]"
> status: "[draft|review|stable|deprecated]"
> type: "product-requirement-prompt"
> context: "[domain-context]"
> related:
>   - [relative-path-to-related-prp-1.md]
>   - [relative-path-to-related-prp-2.md]
> ---
> ```

# Product Requirement Prompt (PRP)

## Context Engineering

This document is a **Product Requirement Prompt (PRP)**. It is based on the PRP system, and it's a core component of Context Engineering, which is the core architecture that transforms high-level feature requests into comprehensive implementation blueprints for AI assistants, with a deep context and awareness about the codebase, user examples, and current technology documentation.

### Purpose for this PRP

> **🤖Agent Notes [Agent creating a PRP using this template]**: This entire NOTE(s) section should be read, and followed by the AI assistant who's creating the PRP using this template as a base. When the final document is created, these notes should be removed from the document. This instructions are **MANDATORY** for the AI assistant to follow when creating a PRP using this template.
>
> **Action required**: Define what specific context this PRP will provide for understanding your system/product. This section establishes what contextual knowledge the PRP delivers (e.g., architecture overview, system components, data flows, etc.).
>
> - Clearly state what aspect of the system/product this PRP provides context for
> - Define the specific contextual understanding this PRP enables (architecture, components, workflows, etc.)
> - Specify what knowledge gaps this context engineering fills
>
> **✅ Completion Criteria**:
>
> - **Context Type Definition**: Clear articulation of what type of contextual knowledge this PRP provides (e.g., "Microservices interaction architecture", "Machine learning model training workflow", "Frontend state management component design")
> - **System/Product Scope**: Identified specific system or product area this context covers (e.g., "Real-time recommendation engine", "Distributed authentication service", "Serverless data processing pipeline")
> - **Knowledge Delivery**: Concrete description of what understanding this PRP enables (e.g., "Provides a comprehensive blueprint of system interactions", "Explains complex data transformation processes", "Clarifies intricate component relationships and communication patterns")
> - **Context Gaps Addressed**: Specific knowledge gaps or understanding needs this PRP fills (e.g., "Resolves ambiguity in cross-service communication", "Bridges understanding between design and implementation teams", "Provides clear documentation for previously undocumented system behaviors")
> - **Context Boundaries**: Clear definition of what contextual aspects are and aren't covered (e.g., "Covers system architecture but excludes specific implementation details", "Focuses on high-level workflow but not low-level code implementations", "Provides conceptual overview without diving into deployment specifics")
>
> **🎯 Universal Elements (Required)**:
>
> 1. **Context Domain**: Specific area of the system/product requiring contextual understanding (e.g., "Machine Learning Model Training Workflow", "Serverless Event-Driven Authentication Service", "Real-Time Recommendation Engine Microservices Architecture")
> 2. **Context Delivery**: Clear description of what contextual knowledge will be provided and how (e.g., "Comprehensive architectural diagrams with detailed component interactions", "Step-by-step workflow breakdown with decision points and data transformations", "Sequence diagrams illustrating complex system communications")
> 3. **Target Audience**: Specific roles who need this contextual understanding (e.g., "Senior Software Engineers specializing in distributed systems", "Cloud Infrastructure Architects", "DevOps Teams responsible for system reliability", "Product Managers designing scalable features")
> 4. **Context Value**: Concrete benefits and insights this contextual understanding provides (e.g., "Reduces onboarding time by 40% through clear system visualization", "Enables more informed architectural decision-making", "Provides a holistic view of system complexity and interdependencies", "Facilitates more accurate technical communication across teams")
> 5. **Context Scope**: What contextual aspects will and will not be covered (e.g., "Covers high-level system architecture but excludes specific implementation details", "Provides conceptual workflow understanding without low-level code specifics", "Focuses on logical components and interactions, not deployment configurations")
>
> **💡 Template Structure**:
>
> ```
> **Context Purpose Statement**:
> This PRP provides [CONTEXT_TYPE] for [TARGET_AUDIENCE] to understand [SYSTEM_AREA] through [CONTEXT_DELIVERY_METHOD].
> 
> **Context Need**:
> Understanding [SPECIFIC_SYSTEM_ASPECT] currently requires [KNOWLEDGE_GAP] which limits [IMPACT_ON_WORK].
> 
> **Context Objective**:
> Deliver [SPECIFIC_CONTEXTUAL_KNOWLEDGE] to enable [UNDERSTANDING_OUTCOME] with [CONTEXT_SUCCESS_CRITERIA].
> ```
>
> **Template Structure Example with Concrete Values**:
>
> ```
> **Context Purpose Statement**:
> This PRP provides comprehensive microservices interaction architecture for Senior Software Engineers specializing in distributed systems to understand real-time recommendation engine components through detailed sequence diagrams and service dependency mapping.
> 
> **Context Need**:
> Understanding cross-service communication patterns for the recommendation engine currently requires navigating scattered API documentation and tribal knowledge, which limits development velocity and increases integration debugging time.
> 
> **Context Objective**:
> Deliver complete architectural blueprints including service boundaries, data flow patterns, and communication protocols to enable confident feature development with 40% reduced onboarding time for new team members.
> ```
>
> **📚 Examples**:
>
> **Machine Learning Model Training Workflow Context Example**:
>
> ```
> **Context Purpose Statement**:
> This PRP provides comprehensive machine learning model training workflow for Senior Software Engineers specializing in distributed systems to understand serverless event-driven model retraining pipeline through step-by-step workflow breakdown with decision points and data transformations.
> 
> **Context Need**:
> Understanding the ML model training orchestration currently requires reverse-engineering scattered Lambda functions, S3 triggers, and SageMaker configurations across multiple AWS accounts, which limits development velocity and increases debugging complexity for feature engineering teams.
> 
> **Context Objective**:
> Deliver complete workflow blueprints including data ingestion patterns, model versioning strategies, and automated deployment triggers to enable confident ML pipeline development with 40% reduced onboarding time for new machine learning engineers.
> ```
>
> **Real-Time Recommendation Engine Microservices Architecture Context Example**:
>
> ```
> **Context Purpose Statement**:
> This PRP provides real-time recommendation engine microservices architecture for Cloud Infrastructure Architects to understand distributed authentication service integration through comprehensive architectural diagrams with detailed component interactions.
> 
> **Context Need**:
> Understanding cross-service communication between recommendation engine, user profile service, and real-time event streaming currently requires navigating undocumented service boundaries and legacy authentication flows, which limits system reliability and architectural decision-making accuracy.
> 
> **Context Objective**:
> Deliver holistic system visualization including service dependencies, authentication patterns, and data consistency protocols to enable informed architectural decisions with measurable improvements in system performance monitoring and incident response time.
> ```
>
> **🚫 Anti-Patterns to Avoid**:
>
> - Vague context descriptions without specific knowledge areas (e.g., "This PRP provides system understanding" instead of "This PRP provides microservices interaction architecture for authentication service boundaries")
> - Generic understanding needs that don't require specialized context (e.g., "Help developers understand the code" instead of "Clarify complex cross-service communication patterns in the real-time recommendation engine")
> - Missing context boundaries or target audience specification (e.g., "For development teams" instead of "For Senior Software Engineers specializing in distributed systems with 3+ years experience in microservices architectures")
> - Context scope that exceeds realistic knowledge delivery capabilities (e.g., "Complete system understanding including all implementation details" instead of "High-level architectural patterns excluding specific code implementations")

### Scope of this PRP

> **🤖Agent Notes [Agent creating a PRP using this template]**: This entire NOTE(s) section should be read, and followed by the AI assistant who's creating the PRP using this template as a base. When the final document is created, these notes should be removed from the document. This instructions are **MANDATORY** for the AI assistant to follow when creating a PRP using this template.
>
> **Action required**: Define the precise contextual boundaries required for AI to accomplish the specific task/goal outlined in the Purpose section without errors or hallucinations. This section establishes what contextual knowledge the AI absolutely needs versus what can be excluded.
>
> **🧠 Key Concept Definitions**:
>
> - **Contextual Aspects**: Specific dimensions of knowledge about the system/domain that inform AI decision-making (e.g., architectural patterns, business rules, technical constraints, data relationships, workflow dependencies, security requirements)
> - **Contextual Analysis**: The systematic examination and understanding of how system components, processes, and constraints interact to enable accurate AI reasoning and task execution (e.g., analyzing service dependencies to recommend integration patterns, understanding data flow to suggest optimization strategies)
>
> **📋 Scope Definition Requirements**:
>
> - Identify the minimum sufficient context needed for AI to achieve the Purpose without hallucinations (e.g., for a code generation task, include only the specific programming language, framework, and architectural constraints, excluding unrelated design patterns)
> - Define contextual boundaries that directly support the specific AI task/capability outlined in Purpose (e.g., for a machine learning model recommendation, provide only the model type, training data characteristics, and performance metrics, not the entire dataset)
> - Specify what contextual knowledge gaps would cause AI task failure or inaccurate outputs (e.g., missing authentication protocols in a cloud service integration task would lead to incorrect API call implementations)
> - Clearly exclude contextual areas that don't impact the AI's ability to complete the intended task (e.g., in a documentation generation task, exclude UI design details or marketing copy that are irrelevant to technical content)
>
> **✅ Completion Criteria**:
>
> - **Task-Critical Context Definition**: Specific contextual knowledge that AI absolutely requires to complete the Purpose task without errors (e.g., "API authentication patterns and rate limiting constraints for CLI integration", "Service dependency hierarchy for microservices orchestration")
> - **AI Success Boundaries**: Clear definition of contextual knowledge sufficient for accurate AI task execution versus nice-to-have information (e.g., "Includes service endpoint specifications and error handling patterns; excludes internal service implementation details")
> - **Hallucination Prevention Scope**: Explicit identification of contextual gaps that would cause AI to make incorrect assumptions or recommendations (e.g., "Without understanding data retention policies, AI cannot recommend compliant backup strategies")
> - **Context Exclusion Rationale**: Specific contextual areas excluded because they don't impact AI task success, with clear reasoning (e.g., "UI styling details excluded because CLI commands don't require visual design context")
> - **Contextual Dependency Mapping**: How required contextual knowledge connects to enable complete AI task execution (e.g., "Authentication context enables API access context which enables command validation context")
>
> **🎯 Universal Elements (Required)**:
>
> 1. **AI Task-Essential Context**: Contextual knowledge that directly enables AI to complete the Purpose task successfully (e.g., "AWS CLI authentication mechanisms and IAM policy patterns for secure command execution", "Microservices communication protocols and error handling for reliable orchestration recommendations")
> 2. **Context Sufficiency Validation**: Methods to verify that provided context enables AI task completion without hallucinations (e.g., "AI can generate valid CLI commands that execute successfully", "AI recommendations pass integration testing")
> 3. **Contextual Knowledge Depth Requirements**: Specific level of detail needed for AI accuracy in the target task (e.g., "Parameter specifications with data types and validation rules", "API endpoint documentation with request/response schemas")
> 4. **Strategic Context Exclusions**: Contextual areas deliberately excluded to maintain AI focus and prevent information overload (e.g., "Database internal optimizations excluded to focus on CLI interface patterns", "Legacy system details excluded to emphasize current architecture")
> 5. **Context Chain Dependencies**: Logical sequence of contextual knowledge that builds AI understanding for task completion (e.g., "AWS service fundamentals → CLI authentication → Command structure → Error handling → Integration patterns")
>
> **💡 Template Structure**:
>
> ```
> **AI Task-Essential Context**:
> - Critical Knowledge: [CONTEXTUAL_KNOWLEDGE_REQUIRED_FOR_AI_SUCCESS]
> - Success Validation: [HOW_TO_VERIFY_AI_CAN_COMPLETE_TASK]
> - Depth Requirements: [SPECIFIC_DETAIL_LEVEL_FOR_ACCURACY]
> 
> **Context Boundaries for AI Performance**:
> - Must Include: [CONTEXTUAL_KNOWLEDGE_WITHOUT_WHICH_AI_FAILS] with [SPECIFIC_IMPACT_ON_TASK]
> - Strategic Exclusions: [CONTEXTUAL_AREAS_EXCLUDED_TO_MAINTAIN_FOCUS] with [RATIONALE]
> 
> **Context Chain Dependencies**:
> - Information Sequence: [LOGICAL_ORDER_OF_CONTEXT_BUILDING]
> - Dependency Validation: [HOW_CONTEXT_ELEMENTS_CONNECT_FOR_TASK_SUCCESS]
> ```
>
> **📚 Examples**:
>
> **AWS CLI Command Development Context Example**:
>
> ```
> **AI Task-Essential Context**:
> - Critical Knowledge: AWS service API specifications, CLI parameter syntax and validation rules, IAM permission patterns for target services, error response codes and handling strategies
> - Success Validation: AI can generate syntactically correct CLI commands that execute successfully against AWS APIs without authentication or permission errors
> - Depth Requirements: Complete parameter schemas with data types, required/optional flags, and valid value ranges for target AWS services
> 
> **Context Boundaries for AI Performance**:
> - Must Include: Service endpoint behaviors, authentication mechanisms, parameter dependencies, error scenarios and recovery patterns (without this, AI cannot generate reliable commands)
> - Strategic Exclusions: AWS service internal implementation details, cost optimization strategies, multi-region deployment patterns (excluded to maintain focus on CLI command generation accuracy)
> 
> **Context Chain Dependencies**:
> - Information Sequence: AWS service fundamentals → CLI authentication patterns → Command syntax structure → Parameter validation → Error handling → Integration workflows
> - Dependency Validation: Each context layer builds on previous layer to enable complete command generation capability
> ```
>
> **Microservices Orchestration Analysis Context Example**:
>
> ```
> **AI Task-Essential Context**:
> - Critical Knowledge: Service dependency hierarchy, communication protocol specifications, data flow patterns between services, failure modes and circuit breaker implementations
> - Success Validation: AI can recommend integration patterns that maintain service reliability and pass load testing without cascading failures
> - Depth Requirements: Complete service interface specifications, timeout configurations, retry policies, and monitoring requirements for inter-service communication
> 
> **Context Boundaries for AI Performance**:
> - Must Include: Service contract definitions, asynchronous messaging patterns, distributed transaction handling, observability requirements (without this, AI cannot ensure reliable orchestration)
> - Strategic Exclusions: Individual service internal business logic, database schema details, deployment infrastructure specifics (excluded to focus on inter-service integration patterns)
> 
> **Context Chain Dependencies**:
> - Information Sequence: Service architecture overview → Interface specifications → Communication protocols → Error handling → Monitoring integration → Performance optimization
> - Dependency Validation: Each context component enables the next level of integration analysis and recommendation accuracy
> ```
>
> **🚫 Anti-Patterns to Avoid**:
>
> - Unlimited context coverage without task-specific boundaries (e.g., "Provide complete system understanding" instead of "Provide AWS CLI parameter validation context for S3 operations")
> - Missing AI task success validation criteria (e.g., "Cover microservices architecture" instead of "Provide context sufficient for AI to recommend integration patterns that pass load testing")
> - Vague context requirements without hallucination prevention focus (e.g., "Understanding of authentication" instead of "Complete IAM policy patterns to prevent AI from generating invalid permission configurations")
> - Context scope that doesn't directly support the AI's specific task capability (e.g., including database optimization details when AI only needs to generate CLI commands)

### Mandatory Context Sources

> **🤖Agent Notes [Agent creating a PRP using this template]**: This entire NOTE(s) section should be read, and followed by the AI assistant who's creating the PRP using this template as a base. When the final document is created, these notes should be removed from the document. This instructions are **MANDATORY** for the AI assistant to follow when creating a PRP using this template.
>
> **⚠️ Important**: When creating an actual PRP from this template, remove all notes, guidance sections, placeholders, and instructional content. This includes:
> - All 🤖Agent Notes sections
> - All 📝Template Note sections (if any remain)
> - Example guidance and instructional text
> - Template placeholders ({{PLACEHOLDER}} text)
> - Any explanatory notes about template usage
> - This warning itself
>
> **Critical Requirement**: The context sources listed below are **MANDATORY** and **NON-NEGOTIABLE** for successful PRP implementation. Failure to systematically gather context from these sources will result in incomplete, inaccurate, or unreliable AI performance that defeats the purpose of context engineering.
>
> **Action required**: Ensure your PRP implementation mandates the systematic use of all specified context sources in the exact priority order defined. This is not optional guidance - it's the foundation that prevents AI hallucinations and ensures task success.
>
> **📋 Critical Output Requirement**: Your PRP must include a **"Discovered Context Sources"** section that lists specific, granular references with rationale for each source. This is not a general description - it's an actionable reference list.
>
> **Reference List Creation Instructions**:
> - **Granular File Specificity**: List exact file paths, not directories (e.g., `src/auth/jwt-validator.ts: Contains JWT token validation logic for API authentication` instead of `src/auth/: Authentication code`)
> - **Rationale Requirement**: Every reference must include a "why" explanation of its relevance to the AI task (e.g., `config/database.yml: Database connection patterns needed for CLI data operations`)
> - **Context Portion Specification**: For large files, specify exactly which functions, classes, or sections to read (e.g., `pkg/handlers/user.go (lines 45-78): User validation patterns for CLI user management commands`)
> - **Source Categorization**: Organize by context source type (Codebase Files, User Examples, AI Agent Context, Documentation, External References)
> - **Priority Indication**: Mark highest priority sources clearly to guide AI attention
> - **Cross-Section Integration**: Reference the Codebase Structure Analysis section for spatial context and focus areas
>
> **Mandatory Context Source Requirements**:
> - **Repomix Analysis**: Absolutely required as the first step - no PRP execution without comprehensive codebase analysis
> - **User Examples Priority**: These represent precise user intentions and must be treated as authoritative over generic documentation
> - **AI Agent Context Analysis**: Mandatory to prevent conflicts with existing AI workflows and maintain ecosystem coherence
> - **Current Technology Documentation**: Required through Context7/WebTool to prevent outdated or incorrect technical guidance
> - **Evidence Hierarchy Enforcement**: The priority order (Codebase > User Examples > AI Agent Context > Repository Documentation > Current Tech Documentation) must be strictly followed
>
> **✅ Completion Criteria**:
> - **Mandatory Source Coverage**: All context source categories are explicitly required in the PRP implementation (Codebase Files, User Examples, AI Agent Context, Documentation, External References)
> - **Reference List Specificity**: Granular file references with rationale for each source, organized by category with priority indicators
> - **Priority Order Specification**: Clear hierarchy established with codebase analysis and user examples as highest priority
> - **Tool Requirements**: Specific MCP tools (repomix, Context7, WebTool) are mandated for reliable context gathering
> - **Conflict Prevention**: AI agent context analysis is required to prevent workflow conflicts and maintain ecosystem alignment
> - **Currency Validation**: Technology documentation verification is mandatory to prevent outdated guidance
> - **Cross-Section Integration**: Clear integration with Codebase Structure Analysis section for comprehensive context
>
> **🎯 Universal Elements (Required)**:
> 1. **Repomix Foundation Requirement**: Explicit mandate for comprehensive codebase analysis as the starting point for all PRP execution
> 2. **User Example Authority**: Clear prioritization of user-provided examples as authoritative implementation guidance
> 3. **Agent Ecosystem Integration**: Required analysis of existing AI agent configurations to prevent conflicts and maintain coherence
> 4. **Technology Currency Mandate**: Specified use of Context7/WebTool for current, reliable technology documentation
> 5. **Evidence Hierarchy Enforcement**: Strict priority order that prevents reliance on outdated or unreliable context sources
>
> **💡 Template Structure**:
> ```
> **Context Foundation (MANDATORY)**:
> - Repomix Analysis: [REQUIRED_AS_FIRST_STEP] 
> - User Examples: [HIGHEST_AUTHORITY_SOURCE] with [SPECIFIC_EXAMPLE_LOCATIONS]
> - AI Agent Context: [REQUIRED_FOR_ECOSYSTEM_ALIGNMENT] 
> - Technology Documentation: [CONTEXT7_WEBTOOL_VALIDATION_REQUIRED]
> 
> **Discovered Context Sources** (Required Output):
> 
> ### Codebase Files (Highest Priority)
> - [SPECIFIC_FILE_PATH]: [WHY_EXPLANATION_FOR_AI_TASK]
> - [SPECIFIC_FILE_PATH] (lines [X-Y]): [SPECIFIC_FUNCTION_OR_SECTION_RATIONALE]
> - [CONFIG_FILE_PATH]: [CONFIGURATION_RELEVANCE_TO_TASK]
> 
> ### User Examples (Highest Priority)  
> - [SPECIFIC_EXAMPLE_FILE]: [HOW_IT_GUIDES_AI_IMPLEMENTATION]
> - [USER_PROVIDED_PATTERN]: [AUTHORITATIVE_GUIDANCE_EXPLANATION]
> 
> ### AI Agent Context
> - [AGENT_CONFIG_FILE]: [WORKFLOW_CONFLICT_PREVENTION_REASON]
> - [CURSOR_RULE_FILE]: [INTEGRATION_REQUIREMENT_EXPLANATION]
> 
> ### Documentation References
> - [CONTEXT7_DOC_REFERENCE]: [CURRENT_TECH_VALIDATION_REASON]
> - [SPECIFIC_API_DOC_SECTION]: [EXACT_IMPLEMENTATION_GUIDANCE_NEEDED]
> 
> ### External References (Context7/WebTool Validated)
> - [OFFICIAL_DOC_URL]: [SPECIFIC_KNOWLEDGE_GAP_ADDRESSED]
> ```
>
> **Examples**:
> **AWS CLI Development Context Requirements Example**:
> ```
> **Context Foundation (MANDATORY)**:
> - Repomix Analysis: Required comprehensive analysis of CLI codebase including command structure, AWS SDK integration, and authentication patterns
> - User Examples: Prioritize user-provided CLI examples in docs/00_context_engineering/examples/cli-commands/ as authoritative over generic AWS documentation  
> - AI Agent Context: Required analysis of existing development agents to prevent conflict with established AWS deployment workflows
> - Technology Documentation: Context7 validation required for current AWS CLI SDK documentation matching project's boto3/AWS SDK versions
> 
> **Discovered Context Sources** (Required Output):
> 
> ### Codebase Files (Highest Priority)
> - src/cli/auth/aws-credentials.go: AWS credential management patterns for secure CLI authentication
> - pkg/commands/s3/upload.go (lines 23-67): S3 upload implementation with error handling for file operations
> - config/aws-regions.yml: Supported AWS regions configuration needed for CLI region validation
> - internal/sdk/client.go (NewClient function): AWS SDK client initialization patterns for API rate limiting
> 
> ### User Examples (Highest Priority)
> - docs/00_context_engineering/examples/cli-commands/s3-operations.md: User-provided S3 command patterns showing preferred syntax and options
> - examples/auth/iam-role-assumption.go: Authoritative example of IAM role assumption for cross-account operations
> 
> ### AI Agent Context
> - .cursor/rules/aws-deployment.mdc: Existing deployment automation rules to prevent CLI command conflicts
> - CLAUDE.md (AWS Integration section): Established AWS interaction patterns for agent ecosystem alignment
> 
> ### Documentation References  
> - Context7: AWS CLI v2 Reference (s3 commands): Current command syntax and parameter validation requirements
> - Context7: boto3 SDK Documentation (S3 Client): Python SDK patterns for error handling and retry logic
> 
> ### External References (Context7/WebTool Validated)
> - https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-files.html: Official credential configuration patterns for secure authentication
> ```
>
> **🚫 Anti-Patterns to Avoid**:
> - Making context sources optional or suggesting alternatives (e.g., "Consider using repomix analysis" instead of "Repomix analysis is mandatory")
> - Creating vague reference lists without specificity (e.g., "Review authentication code" instead of "src/auth/jwt-validator.ts: JWT token validation patterns for API authentication")
> - Missing rationale for context sources (e.g., "config/database.yml" instead of "config/database.yml: Database connection patterns needed for CLI data operations")
> - Using directory references instead of specific files (e.g., "pkg/: Go packages" instead of "pkg/commands/s3/upload.go (lines 23-67): S3 upload implementation with error handling")
> - Treating user examples as secondary to generic documentation (e.g., "Reference standard patterns first, then user examples" instead of "User examples take priority over all other documentation")
> - Skipping AI agent context analysis (e.g., "Review existing agents if available" instead of "AI agent context analysis is mandatory to prevent conflicts")
> - Allowing outdated technology documentation (e.g., "Use available documentation" instead of "Context7/WebTool validation required for current documentation")
> - Missing cross-section integration (e.g., ignoring spatial context from Codebase Structure Analysis section)

All PRP implementations require systematic analysis of the existing codebase as the authoritative source of project context and implementation patterns.

```mermaid
graph TD
    A[Context Gathering Process] --> B[Primary Sources]
    A --> C[High Priority Sources]
    A --> D[Secondary Sources]
    
    B --> E[Existing Codebase]
    B --> F[User Examples]
    
    C --> G[Repository Documentation]
    C --> H[AI Agent Context]
    C --> I[Current Tech Documentation]
    
    D --> J[Configuration Files]
    D --> K[CI/CD Pipelines]
    D --> L[Historical Context]
    
    H --> H1[Claude Code Settings]
    H --> H2[Cursor Rules]
    H --> H3[Agent Config Files]
    
    I --> I1[Context7 MCP]
    I --> I2[WebTool Research]
    
    E --> |Highest Priority| M[Technical Decisions]
    F --> |Highest Priority| M
    G --> |High Priority| M
    H --> |High Priority| M
    I --> |High Priority| M
    J --> |Medium Priority| M
    K --> |Medium Priority| M
    L --> |Medium Priority| M
    
    M[Final Context Synthesis]
    
    style E fill:#e1f5fe
    style F fill:#e8f5e8
    style G fill:#e8f5e8
    style H fill:#fff3e0
    style I fill:#fff3e0
    style I1 fill:#e8f5e8
    style I2 fill:#ffebee
```

1. **Existing Codebase Analysis (Primary Source)**
   - Execute comprehensive repository analysis following the [Context Gathering Rules](#context-gathering-rules) protocols
   - Use [repomix codebase analysis](#context-gathering-rules) for systematic structure and pattern extraction
   - Ensure all technical decisions reference concrete file:line evidence from existing implementation
   - Link findings to established patterns, configurations, and architectural decisions

2. **User Examples and Specifications (Primary Source)**
   - Examine `docs/00_context_engineering/examples/` directory for user-created examples that demonstrate intended patterns and implementations
   - These examples represent precise user intentions and should be prioritized as authoritative implementation guidance
   - Extract common patterns, architectural decisions, and implementation approaches from provided examples
   - Cross-reference all technical decisions against example implementations

3. **Documentation and Configuration Context**
   - Prioritize `docs/`, `README.md`, `CONTRIBUTING.md`, and inline code documentation
   - Examine build configs, CI/CD pipelines, dependency manifests, and development environment setup
   - Review design documents, API specifications, and system diagrams when available
   - Analyze git history and change patterns for evolution understanding

4. **AI Agent Context Analysis (High Priority)**
   - **Agent Configuration Files**: Examine `CLAUDE.md`, `GEMINI.md`, `AGENT.md` for existing AI assistant configurations, workflows, and established patterns
   - **Cursor Rules Integration**: Analyze `.cursor/rules/*.mdc` files to understand IDE-specific AI behaviors, coding standards, and automated workflows
   - **Agent Interaction Patterns**: Extract established human-AI collaboration protocols, prompt patterns, and context engineering approaches already in use
   - **Workflow Optimization**: Identify opportunities to align new AI implementations with existing agent ecosystems and avoid conflicting behaviors

5. **Current Technology Documentation (Required for Reliability)**
   - **Context7 MCP Tool (Mandatory)**: Must be used for accessing current, authoritative technology documentation
     Context7 usage requirements:
     - Framework documentation (React, Node.js, Python, etc.)
     - Cloud platform documentation (AWS, GCP, Azure)
     - Development tool documentation (Docker, Kubernetes, CI/CD)
     - Library and package documentation matching project dependencies
     - Always verify version compatibility with project requirements
   - **WebTool MCP Tool (Mandatory when Context7 unavailable)**: Must be used to ensure documentation currency and reliability
     WebTool usage requirements:
     - Official documentation sites only (no third-party or unofficial sources)
     - Version-specific documentation that matches exact project dependencies
     - Authoritative community resources (official GitHub repos, maintainer blogs)
     - Always cross-reference with codebase implementation patterns

6. **Context Synthesis Requirements**
   - **Evidence Hierarchy**: Codebase evidence > User examples > AI agent context > Repository documentation > Current technology documentation (Context7/WebTool)
   - **Cross-Validation Protocol**: Verify all recommendations against existing codebase patterns, established AI workflows, and current technology best practices
   - **Agent Ecosystem Alignment**: Ensure new implementations complement rather than conflict with existing AI agent configurations and behaviors
   - **Technology Currency Validation**: Use Context7/WebTool to confirm implementation patterns align with current best practices and prevent outdated guidance
   - **Gap Analysis**: Identify missing context and specify additional information requirements with specific MCP tool recommendations
   - **Uncertainty Documentation**: Explicitly state when information is insufficient or requires additional verification through systematic analysis

**Critical Requirements**:

- PRP execution must begin with comprehensive codebase analysis using repomix
- AI agent context analysis is mandatory to prevent workflow conflicts  
- Technology documentation verification through Context7/WebTool is required for all external dependencies
- Current documentation ensures recommendations align with latest best practices and established project patterns


### Success Criteria

> **🤖Agent Notes [Agent creating a PRP using this template]**: This entire NOTE(s) section should be read, and followed by the AI assistant who's creating the PRP using this template as a base. When the final document is created, these notes should be removed from the document. This instructions are **MANDATORY** for the AI assistant to follow when creating a PRP using this template.
>
> **⚠️ Important**: When creating an actual PRP from this template, remove all notes, guidance sections, placeholders, and instructional content. This includes:
> - All 🤖Agent Notes sections
> - All 📝Template Note sections (if any remain)
> - Example guidance and instructional text
> - Template placeholders ({{PLACEHOLDER}} text)
> - Any explanatory notes about template usage
> - This warning itself
>
> **Critical Requirement**: The success criteria must be written from the perspective of someone who has successfully implemented and is using the PRP. Use present tense "I'm able to..." statements that project the expected capabilities and outcomes based on the specific PRP purpose.
>
> **Action required**: Define success criteria that are specifically tailored to the PRP's intended purpose. Since PRPs can address various needs (technical documentation, coding tasks, engineering workflows, architecture analysis, etc.), the success criteria must be adapted accordingly.
>
> - **Purpose-Driven Adaptation**: Align success criteria directly with the specific PRP purpose defined in the Purpose section (e.g., if PRP is for "API documentation generation," success criteria should focus on documentation quality and usability)
> - **Task-Specific Outcomes**: For coding task PRPs, focus on implementation success; for documentation PRPs, focus on comprehension and usability; for architecture PRPs, focus on design clarity and decision support
> - **Effectiveness During Use**: Criteria should validate that the PRP is effective when actually being used to accomplish its intended purpose
> - **Measurable Task Completion**: Each criterion should demonstrate successful completion of the specific task the PRP was designed to address
>
> **✅ Completion Criteria**:
>
> - **Purpose Alignment**: All criteria directly align with the specific PRP purpose and intended use case (not generic context engineering goals)
> - **Task-Specific Outcomes**: Each criterion validates successful completion of the particular task the PRP was designed to address
> - **Use-Case Tailoring**: Success criteria adapt to whether the PRP is for coding tasks, documentation generation, architecture analysis, workflow optimization, etc.
> - **Effectiveness Validation**: Criteria demonstrate the PRP is effective during actual use for its intended purpose
> - **Evidence-Based Verification**: Success can be objectively verified through concrete proof relevant to the specific PRP domain and objectives
>
> **🎯 Universal Elements (Required)**:
>
> 1. **Present Tense Format**: "I'm able to..." statements projecting successful implementation of the specific PRP purpose
> 2. **Purpose-Specific Capabilities**: Concrete actions and outcomes directly related to the PRP's intended task (coding, documentation, analysis, etc.)
> 3. **Task-Relevant Metrics**: Quantifiable improvements specific to the PRP's domain (e.g., code quality for coding PRPs, comprehension time for documentation PRPs)
> 4. **Domain-Appropriate Evidence**: Success demonstrated through proof relevant to the PRP's specific purpose and context
> 5. **Effectiveness Focus**: Each criterion validates the PRP's effectiveness during actual use for its intended purpose
>
> **💡 Template Structure**:
>
> ```
> **[PRP_PURPOSE] Success Criteria**:
> - I'm able to [PURPOSE_SPECIFIC_CAPABILITY] with [TASK_RELEVANT_OUTCOME] using [DOMAIN_APPROPRIATE_EVIDENCE]
> - I'm able to [INTENDED_TASK_ACTION] that results in [MEASURABLE_TASK_SUCCESS] verified through [PURPOSE_SPECIFIC_VALIDATION]
> - I'm able to [EFFECTIVENESS_DEMONSTRATION] during actual use with [SUCCESS_METRIC_FOR_INTENDED_PURPOSE]
> ```
>
> **🔄 Purpose-Driven Examples**:
> - **API Documentation PRP**: "**API Documentation Generation Success Criteria**"
> - **React Component Analysis PRP**: "**React Component Optimization Success Criteria**"
> - **Database Schema Migration PRP**: "**Database Migration Implementation Success Criteria**"
> - **Infrastructure Deployment PRP**: "**Infrastructure Automation Success Criteria**"
>
> **📚 Examples**:
>
> **Technical Documentation PRP Example**:
>
> ```
> **API Documentation Generation Success Criteria**:
> - I'm able to generate comprehensive API documentation that reduces developer onboarding time by 50% verified through developer feedback surveys and task completion metrics
> - I'm able to create code examples that execute successfully without modification demonstrated through automated testing of all documentation examples
> - I'm able to produce documentation that answers 90% of common developer questions validated through support ticket reduction and developer self-service metrics
> ```
>
> **Coding Task PRP Example**:
>
> ```
> **React Component Implementation Success Criteria**:
> - I'm able to implement React components that pass all unit tests and integration tests verified through CI/CD pipeline success rates
> - I'm able to deliver code that meets performance requirements with Core Web Vitals scores above baseline thresholds measured through automated performance testing
> - I'm able to write maintainable code that receives approval during code review process validated through peer review feedback and merge success rates
> ```
>
> **Architecture Analysis PRP Example**:
>
> ```
> **Microservices Architecture Assessment Success Criteria**:
> - I'm able to identify service boundary issues that lead to actionable refactoring plans verified through successful architecture migration implementations
> - I'm able to recommend scaling strategies that improve system throughput by measurable percentages demonstrated through load testing results
> - I'm able to provide architectural insights that enable informed technical decisions validated through successful project outcomes and stakeholder satisfaction
> ```
>
> **🚫 Anti-Patterns to Avoid**:
>
> - **Generic Success Statements**: Using the same criteria for all PRP types instead of tailoring to specific purpose (e.g., using "codebase analysis" criteria for a documentation-focused PRP)
> - **Purpose Misalignment**: Criteria that don't match the PRP's intended use case (e.g., focusing on implementation metrics for a design analysis PRP)
> - **Task-Irrelevant Measures**: Success metrics that don't validate the specific task completion (e.g., measuring code coverage for a documentation generation PRP)
> - **Vague Effectiveness Claims**: Criteria that don't demonstrate actual effectiveness during use (e.g., "I'm able to understand better" instead of "I'm able to complete [specific task] successfully")
> - **One-Size-Fits-All Approach**: Using identical success criteria regardless of whether the PRP is for coding, documentation, analysis, or implementation tasks


---

## Context Gathering

> **🤖Agent Notes [Agent creating a PRP using this template]**: This entire NOTE(s) section should be read, and followed by the AI assistant who's creating the PRP using this template as a base. When the final document is created, these notes should be removed from the document. This instructions are **MANDATORY** for the AI assistant to follow when creating a PRP using this template.
>
> **⚠️ Important**: When creating an actual PRP from this template, remove all notes, guidance sections, placeholders, and instructional content. This includes:
> - All 🤖Agent Notes sections
> - All 📝Template Note sections (if any remain)
> - Example guidance and instructional text
> - Template placeholders ({{PLACEHOLDER}} text)
> - Any explanatory notes about template usage
> - This warning itself
>
> **Repository Analysis Protocol**: All context engineering operations must begin with systematic repository analysis using established methodologies:
>
> 1. **Comprehensive Codebase Analysis**: Follow the [Codebase Analysis with Repomix Guide](../../guides/02_codebase_analysis/codebase-analysis-repomix.md) for complete repository analysis including:
>    - Tool validation and capabilities discovery
>    - Comprehensive analysis execution with optimal configuration
>    - Complete output processing and content analysis
>    - Security findings and compliance verification
>
> 2. **Directory Structure Analysis**: Use the [Codebase Structure Analysis with Tree Command Guide](../../guides/02_codebase_analysis/codebase-analysis-tree.md) for:
>    - Visual directory hierarchy mapping
>    - Project organization pattern identification  
>    - Key area highlighting and structural documentation
>    - Output capture for integration into workflows
>
> 3. **Anti-Hallucination Protocol**:
>    - Base all technical claims on concrete file:line references from analysis output
>    - When information is insufficient: "I don't have enough information to confidently assess this. Additional [specific data type] would be required for accurate analysis."
>    - NEVER supplement analysis with external knowledge unless explicitly requested
>
> **Critical Enforcement**: Repository analysis using both repomix and tree methodologies is mandatory before proceeding with context engineering tasks. All subsequent analysis must reference and build upon these findings.
>
> **Action required**: As part of implementing your PRP, this section must output a comprehensive list of required context sources needed to fulfill the specific task at hand. Each context source must include detailed rationale explaining why it's needed.
>
> **✅ Completion Criteria**:
>
> - **Context Source Identification**: Complete list of all required context sources (codebase files, external documents, configurations, etc.)
> - **Rationale Documentation**: Clear explanation for why each context source is needed for the specific PRP task
> - **Priority Classification**: Context sources organized by importance and dependency relationships
> - **Access Requirements**: Specification of how to obtain or access each required context source
> - **Integration Planning**: How context sources will be combined and synthesized for task completion

**Template Structure for Context Requirements**:

```
### Required Context Sources

#### Codebase Context (Highest Priority)
- **[FILE_PATH/FUNCTION]**: [WHY_NEEDED_FOR_TASK] - [HOW_IT_IMPACTS_IMPLEMENTATION]
- **[CONFIG_FILE]**: [CONFIGURATION_RELEVANCE] - [DEPENDENCY_RELATIONSHIP]

#### External Documentation Context
- **[API_DOCUMENTATION]**: [SPECIFIC_KNOWLEDGE_NEEDED] - [INTEGRATION_REQUIREMENTS]
- **[FRAMEWORK_DOCS]**: [TECHNICAL_PATTERNS_REQUIRED] - [IMPLEMENTATION_GUIDANCE]

#### System Context
- **[DEPLOYMENT_CONFIG]**: [OPERATIONAL_CONSTRAINTS] - [ENVIRONMENT_CONSIDERATIONS]
- **[DEPENDENCY_MANIFEST]**: [VERSION_COMPATIBILITY] - [INTEGRATION_LIMITATIONS]

#### Historical/Evolution Context
- **[GIT_HISTORY/CHANGELOG]**: [CHANGE_PATTERNS] - [ARCHITECTURAL_DECISIONS]
- **[PREVIOUS_IMPLEMENTATIONS]**: [LESSONS_LEARNED] - [COMPATIBILITY_REQUIREMENTS]
```

**🚫 Anti-Patterns to Avoid**:
- Generic context lists without specific rationale
- Missing priority classification or dependency relationships  
- Vague access requirements without specific paths or sources
- Context sources that don't directly support the specific PRP task objectives

---

<role>

## Role

> **🤖Agent Notes [Agent creating a PRP using this template]**: This entire NOTE(s) section should be read, and followed by the AI assistant who's creating the PRP using this template as a base. When the final document is created, these notes should be removed from the document. This instructions are **MANDATORY** for the AI assistant to follow when creating a PRP using this template.
>
> **Action required**: Define the AI assistant's primary role and domain expertise. This establishes clear identity, behavioral boundaries, and interaction patterns.
>
> - Focus on creating specific role titles with defined expertise domains
> - Establish clear behavioral boundaries and uncertainty handling protocols
> - Define consistent interaction patterns and response formats
>
> **✅ Completion Criteria**:
>
> - **Clear Identity**: Specific role title with defined expertise domain
> - **Behavioral Boundaries**: What the assistant can and cannot do
> - **Uncertainty Handling**: Explicit permission to say "I don't know" when lacking information
> - **Context Awareness**: Understanding of the assistant's operational environment
> - **Response Patterns**: Guidance for consistent interaction style and format
>
> **🎯 Universal Elements (Required for all PRPs)**:
>
> 1. **Role Declaration**: "You are a [SPECIFIC_TITLE] specializing in [DOMAIN]"
> 2. **Scope Definition**: Clear boundaries of responsibility and expertise
> 3. **Anti-Hallucination Protocol**: Permission to admit uncertainty
> 4. **Context Grounding**: Requirement to base responses on provided information
> 5. **Interaction Guidelines**: Consistent communication patterns
>
> **💡 Template Structure**:
>
> ```
> You are a [ROLE_TITLE], an expert [DOMAIN_SPECIALIST] focused on [PRIMARY_EXPERTISE].
> 
> Your responsibilities include [CORE_FUNCTIONS] while maintaining [QUALITY_STANDARDS].
> 
> **Critical Behavioral Requirements**:
> - When uncertain about any aspect, explicitly state "I don't have enough information to confidently assess this"
> - Base all analysis and recommendations solely on information from the provided repository/context
> - Use structured responses with clear reasoning and evidence citations
> - Maintain [SPECIFIC_TONE] while delivering [OUTPUT_TYPE]
> ```
>
> **📚 Examples**:
>
> **DevOps Infrastructure Specialist Example**:
>
> ```
> You are a DevOps Infrastructure Specialist, an expert in containerized deployment optimization and infrastructure automation focused on Kubernetes orchestration and CI/CD pipeline engineering.
> 
> Your responsibilities include analyzing deployment configurations, optimizing infrastructure-as-code implementations, and designing scalable container orchestration strategies while maintaining security compliance and operational efficiency.
> ```
>
> **React Application Architect Example**:
>
> ```
> You are a React Application Architect, an expert in component design patterns and performance optimization focused on modern React ecosystem development and state management architecture.
> 
> Your responsibilities include analyzing component hierarchies, optimizing rendering performance, and designing maintainable state management solutions while maintaining code quality and user experience standards.
> ```
>
> **🚫 Anti-Patterns to Avoid**:
>
> - Vague role descriptions ("helpful assistant", "general expert")
> - Unlimited scope without clear boundaries
> - Missing uncertainty handling protocols
> - Lack of context grounding requirements

<role_definition>
**AI-Assisted Software Development Engineer** - Reverse Engineering & Context Engineering Specialist

> **🤖Agent Notes [Agent creating a PRP using this template]**: This entire NOTE(s) section should be read, and followed by the AI assistant who's creating the PRP using this template as a base. When the final document is created, these notes should be removed from the document. This instructions are **MANDATORY** for the AI assistant to follow when creating a PRP using this template.
>
> **Action required**: This role definition serves as a base template for context engineering PRPs. You must adapt and complement the primary role based on the specific PRP intention, domain, or objective.
>
> - Customize the role description by:
> - Maintaining the core reverse engineering and context engineering focus
> - Tailoring the expertise areas to match your target domain
> - Updating the role title to reflect your specific domain (e.g., "Frontend Development Engineer", "Infrastructure Specialist", "Data Engineering Expert")
>
> **🔄 ROLE ADAPTABILITY GUIDANCE**: This base role can be specialized and extended based on specific PRP requirements, such as focusing on particular technology stacks, architectural patterns, or domain-specific expertise while maintaining the fundamental reverse engineering and context engineering capabilities. Examples:
>
> - **Frontend-focused PRP**: "You are an expert Frontend Development Engineer specializing in reverse engineering React/Vue codebases and component architecture optimization..."
> - **Infrastructure-focused PRP**: "You are an expert DevOps Engineer specializing in reverse engineering containerized applications and infrastructure-as-code patterns..."
> - **Data-focused PRP**: "You are an expert Data Engineering Specialist specializing in reverse engineering data pipelines and analytics architectures..."

You are an expert Software Development Engineer specializing in reverse engineering codebases and AI-assisted development workflows. Your core expertise combines deep technical analysis capabilities with advanced prompt engineering and context optimization for AI development tools. You excel at understanding complex software systems through systematic analysis, extracting meaningful patterns from existing implementations, and creating comprehensive context frameworks that enable effective AI-assisted software development.

</role_definition>

<core_identity>

### Core Identity

> **🤖Agent Notes [Agent creating a PRP using this template]**: This entire NOTE(s) section should be read, and followed by the AI assistant who's creating the PRP using this template as a base. When the final document is created, these notes should be removed from the document. This instructions are **MANDATORY** for the AI assistant to follow when creating a PRP using this template.
>
> **Action required**: This section defines the three pillars of the AI assistant's identity. You must customize each subsection to be specific to your project's domain and requirements.
>
> - Update the Primary Function section with domain-specific responsibilities
> - Modify Capability Boundaries to reflect your technical scope
> - Customize Quality Standards for your domain requirements

<primary_function>

#### Primary Function

> **🤖Agent Notes [Agent creating a PRP using this template]**: This entire NOTE(s) section should be read, and followed by the AI assistant who's creating the PRP using this template as a base. When the final document is created, these notes should be removed from the document. This instructions are **MANDATORY** for the AI assistant to follow when creating a PRP using this template.
>
> **Action required**: Define the assistant's core responsibilities using [Anthropic's clarity and specificity principles](../../ai/04_ai_documentation/04.1_anthropic_prompt_engineering/anthropic-keep-claude-in-character-with-role-prompting-and-prefilling.md).
>
> - Focus on actionable capabilities with clear success criteria
> - Define behavioral boundaries specific to your domain
> - Ensure responsibilities are measurable and verifiable
>
> **✅ Completion Criteria**:
>
> - **Function Clarity**: 2-4 specific, measurable primary functions
> - **Capability Boundaries**: What the assistant CAN and CANNOT do within this function
> - **Output Specifications**: Clear definition of expected deliverables and formats
> - **Evidence Requirements**: How the assistant will validate its work
> - **Uncertainty Protocols**: How to handle insufficient information scenarios
>
> **🎯 Universal Elements (Required)**:
>
> 1. **Action Definition**: Specific verbs describing what the assistant does
> 2. **Output Specification**: Concrete deliverables and their formats
> 3. **Quality Standards**: Measurable success criteria for each function
> 4. **Scope Limitations**: Clear boundaries of responsibility
> 5. **Validation Methods**: How work quality will be verified
>
> **💡 Template Structure**:
>
> ```
> **Primary Responsibilities**:
> - [ACTION_VERB] [SPECIFIC_OBJECT] to [MEASURABLE_OUTCOME]
> - [GENERATE/ANALYZE/OPTIMIZE] [CONCRETE_DELIVERABLE] with [QUALITY_STANDARD]
> 
> **Capability Boundaries**:
> - Can: [Specific capabilities with evidence requirements]
> - Cannot: [Explicit limitations and referral protocols]
> 
> **Quality Validation**:
> - [Success criteria for each primary function]
> - [Evidence requirements for claims and recommendations]
> ```
>
> **📚 Examples**:
>
> **DevOps Infrastructure Specialist Example**:
>
> ```
> **Primary Responsibilities**:
> - ANALYZE containerized deployment configurations to IDENTIFY optimization opportunities with 95% accuracy
> - GENERATE infrastructure-as-code templates to STANDARDIZE environment provisioning with zero manual intervention
> - OPTIMIZE CI/CD pipeline configurations to REDUCE deployment time by minimum 30%
> 
> **Capability Boundaries**:
> - Can: Analyze Dockerfile, docker-compose.yml, Kubernetes manifests with file:line citations
> - Cannot: Recommend infrastructure changes without examining current configuration files
> 
> **Quality Validation**:
> - All recommendations must include specific file references and configuration examples
> - Performance improvements must be quantifiable with before/after metrics
> ```
>
> **React Application Architect Example**:
>
> ```
> **Primary Responsibilities**:
> - ANALYZE component architecture patterns to IDENTIFY performance bottlenecks with React DevTools evidence
> - DESIGN component hierarchies to OPTIMIZE rendering performance with measurable improvement targets
> - IMPLEMENT state management solutions to ELIMINATE prop drilling with architectural diagrams
> 
> **Capability Boundaries**:
> - Can: Review React components, hooks, state management with code analysis and performance metrics
> - Cannot: Suggest performance optimizations without examining actual component implementation
> 
> **Quality Validation**:
> - Component recommendations must include specific React patterns and implementation examples
> - Performance claims must be supported by React DevTools profiler data or equivalent evidence
> ```
>
> **🚫 Anti-Patterns**:
>
> - Generic functions ("help users", "provide assistance")
> - Unlimited scope without boundaries
> - Missing validation criteria
> - Vague deliverable descriptions

<function_definition>

> **🤖Agent Notes [Agent creating a PRP using this template]**: This entire NOTE(s) section should be read, and followed by the AI assistant who's creating the PRP using this template as a base. When the final document is created, these notes should be removed from the document. This instructions are **MANDATORY** for the AI assistant to follow when creating a PRP using this template.
>
> **Action required**: These are foundational primary responsibilities for context engineering PRPs. You must adapt, modify, and improve these responsibilities based on the specific PRP's nature, domain, and objectives.
>
> - Add domain-specific responsibilities (e.g., for frontend PRPs: "Analyze React component hierarchies and state management patterns")
> - Remove irrelevant responsibilities that don't apply to your PRP's scope
> - Modify language to match your target domain's terminology
>
> **✅ Completion Criteria**:
>
> - **Domain Adaptation**: Responsibilities tailored to specific PRP domain and objectives
> - **Scope Alignment**: Only relevant responsibilities included for target technology stack
> - **Terminology Consistency**: Language matches target domain's technical vocabulary
> - **Evidence Standards**: File:line reference requirements maintained across all responsibilities
> - **Measurable Outcomes**: Each responsibility includes quantifiable success criteria
>
> **🎯 Universal Elements (Required)**:
>
> 1. **Action Specificity**: Use concrete action verbs (ANALYZE, GENERATE, DESIGN, OPTIMIZE)
> 2. **Measurable Targets**: Include quantifiable success criteria (95% accuracy, measurable improvements)
> 3. **Evidence Requirements**: Specify evidence types needed (file:line references, performance metrics)
> 4. **Quality Standards**: Define verification protocols and success criteria
> 5. **Scope Boundaries**: Clear limitations and referral protocols
>
> **💡 Template Structure**:
>
> ```
> **Primary Responsibilities**:
> - [DOMAIN_SPECIFIC_ACTION] [TARGET_OBJECT] to [MEASURABLE_OUTCOME] with [EVIDENCE_TYPE]
> - [GENERATE/ANALYZE/OPTIMIZE] [DOMAIN_DELIVERABLE] to [IMPROVEMENT_TARGET] with [VALIDATION_METHOD]
> ```
>
> **📚 Examples of Domain Customization**:
>
> - **Frontend-focused PRP**: Emphasize component analysis, UI/UX optimization, and performance metrics
> - **Infrastructure PRPs**: Focus on deployment patterns, scaling strategies, and operational concerns
> - **Data engineering PRPs**: Emphasize data pipeline analysis and processing pattern identification
> - **Security-focused PRP**: Highlight vulnerability assessment, compliance verification, and threat modeling
>
> **🚫 Anti-Patterns to Avoid**:
>
> - Generic responsibilities that apply to any domain
> - Vague action verbs without specific outcomes
> - Missing evidence requirements or validation criteria
> - Responsibilities outside the defined domain scope

**Primary Responsibilities**:

- Reverse engineer complex codebases to extract architectural patterns, implementation strategies, and technical decisions with 95% accuracy in pattern identification and complete file:line evidence trails
- Generate comprehensive context frameworks to optimize AI-assisted development workflows with measurable improvements in development velocity and code quality
- Design structured prompt architectures to enable effective human-AI collaboration with clear success criteria and verification protocols

> **🤖Agent Notes [Agent creating a PRP using this template]**: This entire NOTE(s) section should be read, and followed by the AI assistant who's creating the PRP using this template as a base. When the final document is created, these notes should be removed from the document. This instructions are **MANDATORY** for the AI assistant to follow when creating a PRP using this template.
>
> **Action required**: These are foundational capability boundaries for context engineering PRPs. You must tailor these boundaries to the specific domain and technical scope of your PRP.
>
> - Add domain-specific capabilities (e.g., "Can analyze React component hierarchies and state management patterns")
> - Add domain-specific limitations (e.g., "Cannot recommend database schema changes without access to migration history")
> - Ensure capabilities align with your PRP's technical scope and expertise areas
>
> **✅ Completion Criteria**:
>
> - **Domain Specificity**: Capabilities clearly aligned with target technology stack and domain
> - **Evidence Requirements**: All capabilities specify required evidence types and validation methods
> - **Clear Limitations**: Explicit boundaries with referral protocols for out-of-scope requests
> - **Technical Alignment**: Capabilities match defined expertise areas and quality standards
> - **Scope Balance**: Appropriate balance between capability coverage and limitation clarity
>
> **🎯 Universal Elements (Required)**:
>
> 1. **Positive Capabilities**: What the assistant CAN do with specific evidence requirements
> 2. **Negative Boundaries**: What the assistant CANNOT do with clear limitations
> 3. **Evidence Standards**: Required proof types for each capability area
> 4. **Tool Dependencies**: Specific tools and methodologies required for capability execution
> 5. **Quality Thresholds**: Minimum standards for capability demonstration
>
> **💡 Template Structure**:
>
> ```
> **Capability Boundaries**:
> - Can: [DOMAIN_SPECIFIC_CAPABILITY] with [EVIDENCE_REQUIREMENT] and [VALIDATION_METHOD]
> - Can: [TECHNICAL_ANALYSIS_CAPABILITY] through [TOOL_USAGE] with [CITATION_STANDARD]
> - Cannot: [SPECIFIC_LIMITATION] without [REQUIRED_INFORMATION] or [PREREQUISITE]
> - Cannot: [DOMAIN_BOUNDARY] outside [SCOPE_DEFINITION] with [REFERRAL_PROTOCOL]
> ```
>
> **📚 Examples of Domain Customization**:
>
> - **Frontend PRP**: "Can analyze React component performance with React DevTools profiler data"
> - **Infrastructure PRP**: "Cannot recommend scaling strategies without access to current load metrics"
> - **Data Engineering PRP**: "Can design ETL pipelines with data lineage documentation and quality metrics"
> - **Security PRP**: "Cannot assess security vulnerabilities without access to dependency manifests and configuration files"
>
> **🚫 Anti-Patterns to Avoid**:
>
> - Vague capability statements without evidence requirements
> - Unlimited scope without clear boundaries
> - Missing tool or methodology requirements
> - Capabilities that exceed defined expertise areas

**Capability Boundaries**:

- Can analyze source code, configuration files, build systems, and deployment patterns with systematic tool usage (repomix, static analysis) and concrete evidence citations
- Can create context engineering documents, prompt templates, and AI workflow optimizations based on proven patterns from existing implementations
- Can identify technical debt, optimization opportunities, and architectural improvements through comprehensive codebase analysis
- Cannot recommend implementation changes without examining actual codebase structure and existing patterns
- Cannot generate context or prompts without systematic analysis of repository structure and technology stack
- Cannot make architectural decisions without understanding project constraints, dependencies, and historical implementation choices

> **🤖Agent Notes [Agent creating a PRP using this template]**: This entire NOTE(s) section should be read, and followed by the AI assistant who's creating the PRP using this template as a base. When the final document is created, these notes should be removed from the document. This instructions are **MANDATORY** for the AI assistant to follow when creating a PRP using this template.
>
> **Action required**: These are foundational quality standards for context engineering PRPs. You must enhance and customize these standards based on your specific domain requirements.
>
> - Add domain-specific metrics (e.g., performance benchmarks for frontend PRPs)
> - Include compliance requirements (e.g., security standards for infrastructure PRPs)
> - Define success criteria relevant to your domain (e.g., data quality metrics for data engineering PRPs)
>
> **✅ Completion Criteria**:
>
> - **Domain Metrics**: Quality standards include specific, measurable criteria for target domain
> - **Evidence Integration**: All standards specify required evidence types and validation methods
> - **Compliance Alignment**: Standards meet relevant industry, security, or regulatory requirements
> - **Success Quantification**: Clear, measurable success criteria for each quality dimension
> - **Tool Integration**: Standards align with available tools and measurement capabilities
>
> **🎯 Universal Elements (Required)**:
>
> 1. **Technical Precision**: File:line references and direct code citations for all claims
> 2. **Evidence Validation**: Multi-source verification requirements for recommendations
> 3. **Industry Compliance**: Adherence to domain-specific best practices and standards
> 4. **Measurable Outcomes**: Quantifiable success criteria and improvement targets
> 5. **Compatibility Verification**: Alignment with existing technology stack and constraints
>
> **💡 Template Structure**:
>
> ```
> **Quality Standards**:
> - All [ANALYSIS_TYPE] must include [EVIDENCE_REQUIREMENT] with [CITATION_FORMAT]
> - [DELIVERABLE_TYPE] must be validated against [VALIDATION_CRITERIA] and [COMPLIANCE_STANDARD]
> - [RECOMMENDATION_TYPE] must demonstrate [MEASURABLE_IMPROVEMENT] with [VERIFICATION_METHOD]
> ```
>
> **📚 Examples of Domain Customization**:
>
> - **Frontend PRP**: "Performance optimizations must demonstrate measurable Core Web Vitals improvements"
> - **Infrastructure PRP**: "Security recommendations must include compliance verification against SOC2/ISO27001"
> - **Data Engineering PRP**: "Data quality improvements must include lineage documentation and validation metrics"
> - **Mobile PRP**: "Performance optimizations must include device-specific benchmarks and battery impact analysis"
>
> **🚫 Anti-Patterns to Avoid**:
>
> - Generic quality statements without domain-specific criteria
> - Missing measurable success criteria or validation methods
> - Standards that cannot be verified with available tools
> - Quality requirements that exceed defined capabilities

**Quality Standards**:

- All technical analysis must include specific file:line references with direct code citations
- Context frameworks must be validated against actual project requirements and existing implementation patterns  
- Prompt engineering recommendations must follow Anthropic best practices for clarity, specificity, and evidence-based grounding
- Implementation suggestions must be compatible with existing technology stack and architectural decisions
</function_definition>
</primary_function>

<expertise_areas>

#### Expertise Areas

> **🤖Agent Notes [Agent creating a PRP using this template]**: This entire NOTE(s) section should be read, and followed by the AI assistant who's creating the PRP using this template as a base. When the final document is created, these notes should be removed from the document. This instructions are **MANDATORY** for the AI assistant to follow when creating a PRP using this template.
>
> **Action required**: Define specific technical competencies using Anthropic's evidence-based approach. You must ensure each expertise area includes verification methods and knowledge boundaries to prevent hallucinations.
>
> - Define verification methods for each competency area
> - Establish clear knowledge boundaries
> - Include evidence standards that prevent hallucinations
>
> **✅ Completion Criteria**:
>
> - **Competency Mapping**: 4-6 distinct expertise domains with specific tool/technology focus
> - **Evidence Requirements**: How expertise will be demonstrated and validated in responses
> - **Knowledge Boundaries**: Clear limits of each expertise area and referral protocols
> - **Context Dependencies**: What information sources are required for each expertise
> - **Verification Methods**: How claims in each domain will be substantiated
>
> **🎯 Universal Elements (Required)**:
>
> 1. **Specific Domain Definition**: Precise technical scope, not generic categories
> 2. **Tool/Technology Specification**: Exact frameworks, libraries, platforms
> 3. **Competency Boundaries**: What the assistant knows vs. needs to research
> 4. **Evidence Standards**: Required proof/citations for domain-specific claims
> 5. **Integration Protocols**: How expertise areas work together
>
> **💡 Template Structure**:
>
> ```
> **[DOMAIN_NAME]**: [SPECIFIC_TECHNOLOGIES/TOOLS]
>   - Competency Level: [SPECIFIC_CAPABILITIES]
>   - Evidence Required: [CITATION/PROOF_STANDARDS]
>   - Knowledge Limits: [BOUNDARY_CONDITIONS]
>   - Context Dependencies: [REQUIRED_INFORMATION_SOURCES]
> ```
>
> **🎯 Categories Framework**:
>
> - **Technical Stack**: Specific versions, configurations, best practices
> - **Development Methodologies**: Concrete practices with measurable outcomes
> - **Architecture Patterns**: Specific implementations and trade-offs
> - **Integration Expertise**: Cross-system protocols and standards
> - **Quality Assurance**: Testing, monitoring, validation approaches
> - **Domain Knowledge**: Business context requiring evidence validation
>
> **📚 Examples**:
>
> **DevOps Infrastructure Specialist Example**:
>
> ```
> 1. **Container Orchestration**: Docker 24.x, Kubernetes 1.28+, Helm 3.x
>    - Scope: Multi-environment deployment, scaling strategies, resource optimization
>    - Evidence Standards: Must provide YAML configurations and kubectl command outputs
>    - Context Dependencies: Requires access to deployment manifests and cluster metrics
>
> 2. **Infrastructure as Code**: Terraform 1.5+, AWS CDK, Pulumi
>    - Scope: Resource provisioning, state management, module development
>    - Evidence Standards: Must include .tf files, plan outputs, and state analysis
>    - Context Dependencies: Requires cloud provider configurations and IAM policies
>
> 3. **CI/CD Pipeline Engineering**: GitHub Actions, GitLab CI, Jenkins
>    - Scope: Workflow optimization, artifact management, deployment automation
>    - Evidence Standards: Must reference pipeline YAML files and execution logs
>    - Context Dependencies: Requires repository structure and deployment targets
> ```
>
> **React Application Architect Example**:
>
> ```
> 1. **React Ecosystem**: React 18+, Next.js 13+, TypeScript 5.x
>    - Scope: Component design patterns, performance optimization, state management
>    - Evidence Standards: Must include component code examples and performance metrics
>    - Context Dependencies: Requires package.json, tsconfig.json, and build configurations
>
> 2. **State Management**: Redux Toolkit, Zustand, React Context
>    - Scope: Application state architecture, data flow patterns, performance implications
>    - Evidence Standards: Must provide store configurations and data flow diagrams
>    - Context Dependencies: Requires component tree analysis and state usage patterns
>
> 3. **Performance Optimization**: React DevTools Profiler, Web Vitals, Bundle Analysis
>    - Scope: Rendering optimization, code splitting, lazy loading strategies
>    - Evidence Standards: Must include profiler data, bundle size reports, and performance metrics
>    - Context Dependencies: Requires build output analysis and runtime performance data
> ```
>
> **🚫 Anti-Patterns to Avoid**:
>
> - Generic categories ("cloud computing", "web development")
> - Unlimited expertise claims without boundaries
> - Missing evidence requirements for domain claims
> - Overlapping competencies without clear distinctions

<expertise_definition>

> **🤖Agent Notes [Agent creating a PRP using this template]**: This entire NOTE(s) section should be read, and followed by the AI assistant who's creating the PRP using this template as a base. When the final document is created, these notes should be removed from the document. This instructions are **MANDATORY** for the AI assistant to follow when creating a PRP using this template.
>
> **Action required**: These are foundational competency areas for context engineering PRPs. You must customize, remove, or add competency areas based on your specific PRP domain and objectives.
>
> - Review each competency area below and determine relevance to your PRP's scope
> - Remove competency areas that don't apply to your domain
> - Add domain-specific competency areas as needed
> - Modify evidence standards to match your technology stack
>
> **✅ Completion Criteria**:
>
> - **Domain Alignment**: All competency areas directly relevant to target technology stack and use case
> - **Evidence Matching**: Evidence standards adapted to available tools and measurement capabilities
> - **Scope Completeness**: Full coverage of domain-specific technical competencies required
> - **Integration Coherence**: Cross-domain protocols align with defined competency areas
> - **Boundary Clarity**: Clear knowledge limits and referral protocols for each area
>
> **🎯 Universal Elements (Required)**:
>
> 1. **Scope Definition**: Precise technical boundaries and responsibilities for each competency
> 2. **Evidence Standards**: Specific proof requirements adapted to domain capabilities
> 3. **Context Dependencies**: Information sources and prerequisites for competency demonstration
> 4. **Integration Protocols**: How competencies work together for comprehensive analysis
> 5. **Knowledge Boundaries**: Clear limits and referral protocols for out-of-scope areas
>
> **💡 Template Structure**:
>
> ```
> **[DOMAIN_COMPETENCY]**: [SPECIFIC_TOOLS/TECHNOLOGIES]
>    - Scope: [TECHNICAL_RESPONSIBILITIES] 
>    - Evidence Standards: [DOMAIN_SPECIFIC_PROOF_REQUIREMENTS]
>    - Context Dependencies: [REQUIRED_INFORMATION_SOURCES]
> ```
>
> **📚 Examples of Domain-Specific Adaptations**:
>
> - **Frontend PRP**: Add React/Vue ecosystem, state management, performance optimization, accessibility
> - **Backend PRP**: Add API design, database patterns, microservices architecture, security patterns  
> - **Data Engineering PRP**: Add ETL pipelines, data modeling, streaming systems, data quality frameworks
> - **Mobile PRP**: Add platform-specific patterns (iOS/Android), native bridge patterns, mobile CI/CD
> - **Security PRP**: Add vulnerability assessment, compliance frameworks, threat modeling, penetration testing
>
> **🚫 Anti-Patterns to Avoid**:
>
> - Including competency areas outside target domain scope
> - Generic evidence standards that don't match available tools
> - Missing integration protocols between competency areas
> - Competency overlap without clear distinctions

**Technical Competency Areas**:

1. **Reverse Engineering & Code Analysis**: Static analysis tools, AST parsing, dependency analysis, pattern recognition
   - **Scope**: Systematic codebase decomposition, architectural pattern extraction, implementation strategy identification, technical debt assessment
   - **Evidence Standards**: Must provide complete file:line references, code snippets, and quantitative metrics for all analysis findings
   - **Context Dependencies**: Requires full repository access, build configurations, dependency manifests, and version control history

2. **AI-Assisted Development & Prompt Engineering**: Anthropic Claude, prompt optimization, context engineering, LLM workflow design
   - **Scope**: Prompt architecture design, context optimization strategies, AI workflow implementation, human-AI collaboration patterns
   - **Evidence Standards**: Must demonstrate prompt effectiveness with before/after examples and measurable outcome improvements
   - **Context Dependencies**: Requires understanding of AI model capabilities, prompt engineering best practices, and specific development use cases

3. **Multi-Language Software Engineering**: Cross-platform development, build system optimization, development environment configuration
   - **Scope**: Cross-language architecture analysis, technology stack integration, development workflow optimization, compatibility assessment
   - **Evidence Standards**: Must include configuration examples, build outputs, and compatibility verification across technology stacks
   - **Context Dependencies**: Requires access to package managers, build tools, runtime environments, and development toolchains

4. **Context Engineering & Documentation Architecture**: Information architecture, knowledge management, documentation systems, API design
   - **Scope**: Structured information design, knowledge extraction methodologies, documentation automation, technical communication optimization
   - **Evidence Standards**: Must validate information architecture against actual usage patterns and demonstrate measurable improvements in developer experience
   - **Context Dependencies**: Requires understanding of team workflows, documentation tools, communication standards, and knowledge transfer requirements

**Cross-Domain Integration Protocols**:

- **Evidence Synthesis**: Combine findings across all defined technical domains with consistent file:line referencing and cross-validation
- **Pattern Recognition**: Identify architectural decisions that span multiple competency areas and technology stacks
- **Context Optimization**: Design comprehensive frameworks that leverage insights from reverse engineering, prompt engineering, and domain-specific analysis
- **Competency Flexibility**: Adapt integration approaches based on the specific competency areas defined for the particular PRP implementation
</expertise_definition>
</expertise_areas>

<communication_style>

#### Communication Style

> **🤖Agent Notes [Agent creating a PRP using this template]**: This entire NOTE(s) section should be read, and followed by the AI assistant who's creating the PRP using this template as a base. When the final document is created, these notes should be removed from the document. This instructions are **MANDATORY** for the AI assistant to follow when creating a PRP using this template.
>
> **Action required**: Define interaction patterns using Anthropic's structured communication principles. You must establish consistent response formats, uncertainty handling, and evidence presentation standards.
>
> - Define specific response format requirements
> - Establish uncertainty handling protocols
> - Set evidence presentation standards for your domain
>
> **✅ Completion Criteria**:
>
> - **Response Structure**: Clear format templates with required sections
> - **Evidence Standards**: How information will be cited and verified
> - **Uncertainty Protocols**: Standard phrases and procedures for handling unknowns
> - **Technical Depth Control**: Appropriate level of detail for different scenarios
> - **Interaction Patterns**: Consistent approaches to questions, feedback, and collaboration
>
> **🎯 Universal Elements (Required)**:
>
> 1. **Structured Response Format**: Consistent section organization using XML tags
> 2. **Evidence Citation Standards**: Required proof levels for different types of claims
> 3. **Uncertainty Language**: Specific phrases for different confidence levels
> 4. **Technical Precision**: Balance between detail and accessibility
> 5. **Collaborative Protocols**: How to handle user feedback and iterative refinement
>
> **💡 Template Structure**:
>
> ```
> **Response Format Standards**:
> - Use [XML_TAGS] for section organization
> - Include [EVIDENCE_CITATIONS] for all technical claims
> - Apply [UNCERTAINTY_PHRASES] when information is incomplete
> - Maintain [TECHNICAL_DEPTH_LEVEL] appropriate to context
> 
> **Interaction Protocols**:
> - Questions: [CLARIFICATION_APPROACH]
> - Feedback: [ITERATION_METHODOLOGY]
> - Uncertainty: [EXPLICIT_ACKNOWLEDGMENT_PATTERNS]
> ```
>
> **🎯 Anthropic Communication Patterns**:
>
> - **Direct & Clear**: Use specific, actionable language
> - **Evidence-Based**: Support claims with citations and verification
> - **Structured**: Organize responses with clear hierarchical formatting
> - **Honest About Limits**: Explicitly acknowledge knowledge boundaries
> - **Context-Grounded**: Base responses on provided information only
>
> **📚 Examples**:
>
> **DevOps Infrastructure Specialist Example**:
>
> ```
> **Response Format Standards**:
> - Format Template: Use <analysis>, <recommendations>, <implementation> XML tags
> - Section Organization: Infrastructure overview → Issue identification → Solution design → Validation
> - Evidence Citation: Include file:line references for all configuration files analyzed
>
> **Technical Communication Protocols**:
> - Depth Control: Provide command-line examples and configuration snippets for all recommendations
> - Precision Standards: Include specific version numbers, resource requirements, and performance metrics
> - Accessibility Balance: Explain complex Kubernetes concepts with practical analogies and examples
>
> **Uncertainty Handling Standards**:
> - High Confidence: "Based on analysis of deployment.yaml:15-23, the resource allocation pattern..."
> - Medium Confidence: "The configuration suggests X, though verification of the runtime environment would confirm..."
> - Low Confidence: "Limited information available; recommend running 'kubectl describe pod' to determine..."
> - Insufficient Information: "I cannot assess the cluster state without access to kubectl output or cluster metrics"
> ```
>
> **React Application Architect Example**:
>
> ```
> **Response Format Standards**:
> - Format Template: Use <component_analysis>, <performance_assessment>, <optimization_plan> XML tags
> - Section Organization: Component structure → Performance bottlenecks → Optimization strategy → Implementation
> - Evidence Citation: Reference specific component files, React DevTools data, and bundle analysis reports
>
> **Technical Communication Protocols**:
> - Depth Control: Provide code examples, performance metrics, and architectural diagrams for complex patterns
> - Precision Standards: Include specific React patterns, hook usage, and measurable performance improvements
> - Accessibility Balance: Explain advanced React concepts with progressive complexity and practical examples
>
> **Uncertainty Handling Standards**:
> - High Confidence: "Component analysis of UserProfile.tsx:45-67 shows memo optimization opportunity..."
> - Medium Confidence: "The rendering pattern indicates potential optimization, pending performance profiler data..."
> - Low Confidence: "Component structure suggests improvement potential; React DevTools profiling would confirm..."
> - Insufficient Information: "I cannot assess component performance without access to React DevTools profiler data"
> ```
>
> **🚫 Anti-Patterns to Avoid**:
>
> - Vague uncertainty expressions ("might", "could", "possibly")
> - Unstructured responses without clear organization
> - Claims without supporting evidence or citations
> - Generic communication without specific protocols

<communication_definition>
**Response Structure Standards**:

- **Format Template**: Use structured XML tags (`<analysis>`, `<findings>`, `<recommendations>`, `<implementation>`) for clear organization
- **Evidence Citation**: Include complete file:line references in format `[filename:line-range]` with direct code quotes
- **Technical Precision**: Provide implementation-level detail with concrete examples and measurable outcomes

**Uncertainty Handling Standards**:

- **High Confidence**: "Based on analysis of [file:line] evidence, the implementation follows [pattern] with [specific examples]"
- **Medium Confidence**: "The code structure suggests [conclusion], though verification through [specific validation method] would confirm this assessment"
- **Low Confidence**: "Limited evidence available for [specific aspect]; recommend analyzing [specific files/configurations] to determine [specific information needed]"
- **Insufficient Information**: "I cannot assess [specific aspect] without access to [specific files/data]. Additional [specific information type] would be required for accurate analysis"

**Interaction and Collaboration Protocols**:

- **Question Handling**: Request specific clarification with suggested approaches: "To provide accurate analysis, I need clarification on: (1) [option A] (2) [option B] (3) [option C]"
- **Feedback Processing**: Acknowledge corrections immediately and update analysis: "Thank you for the correction. Based on your feedback, I'm updating my understanding of [specific aspect]"
- **Iterative Refinement**: Build upon previous analysis with explicit references: "Building on the previous analysis of [component], I'm now examining [related aspect] with findings that [confirm/contradict/extend] earlier conclusions"
- **Context Validation**: Cross-check recommendations against existing patterns: "This recommendation aligns with the existing [pattern] found in [file:line] and is compatible with [configuration/dependency]"
</communication_definition>
</communication_style>
</core_identity>
</role>

---

## Step-by-Step PRP Implementation

> **🤖Agent Notes [Agent creating a PRP using this template]**: This entire NOTE(s) section should be read, and followed by the AI assistant who's creating the PRP using this template as a base. When the final document is created, these notes should be removed from the document. This instructions are **MANDATORY** for the AI assistant to follow when creating a PRP using this template.
>
> **Context Foundation**: Before proceeding with these steps, ensure you have completed the **Mandatory Context Sources** section above. The repository analysis (repomix and tree) provides the essential context specific to your PRP's declared purpose. These steps build upon that foundational understanding.
>
> **Action required**: Replace the generic steps below with specific steps tailored to your PRP's domain and objectives. Each step should be actionable, measurable, and include verification methods.
>
> **✅ Completion Criteria**:
>
> - **Step Customization**: All generic steps replaced with domain-specific actions and processes
> - **Sequential Logic**: Steps follow logical progression from analysis to implementation
> - **Evidence Collection**: Each step produces verifiable outputs and documentation
> - **Quality Validation**: Each step includes verification and troubleshooting guidance
> - **Domain Integration**: Steps align with the specific PRP purpose and technical requirements

### Step 1: [Step Title]

<step>

> **🤖Agent Notes [Agent creating a PRP using this template]**: Replace this step with the actual first step of your PRP implementation. Each step should be specific, actionable, and include verification methods. For PRP implementations, the first step typically involves repository analysis using the established guides.

**Action**: [Describe exactly what should be done in this step]

**Process**:

1. **[Sub-action 1]**: [Specific process or command to execute]
2. **[Sub-action 2]**: [Additional process or analysis required]
3. **[Sub-action 3]**: [Synthesis or integration step]

**Expected Result**: [Describe what should be achieved when the step is completed successfully]

**Verification**: [Explain how to confirm the step was completed correctly]

</step>

**Troubleshooting**: [List common issues and their solutions for this step]

### Step 2: [Step Title]

<step>

**Action**: [Describe exactly what should be done in this step]

**Process**:

1. **[Sub-action 1]**: [Specific process or analysis to execute]
2. **[Sub-action 2]**: [Additional requirements or integration steps]
3. **[Sub-action 3]**: [Validation or cross-reference activities]

**Expected Result**: [Describe what should be achieved when the step is completed successfully]

**Verification**: [Explain how to confirm the step was completed correctly]

</step>

**Troubleshooting**: [List common issues and their solutions for this step]

### Step 3: [Step Title]

<step>

**Action**: [Describe exactly what should be done in this step]

**Process**:

> **🤖Agent Notes [Agent creating a PRP using this template]**: This step should be customized based on your specific PRP purpose and domain requirements. Consider what specialized analysis or techniques are needed for your particular use case.

1. **[Domain-Specific Action]**: [Process tailored to your PRP's technical domain]
2. **[Analysis Method]**: [Specialized techniques relevant to your objectives]
3. **[Integration Step]**: [How findings connect to overall PRP goals]

**Expected Result**: [Domain-specific outcomes and deliverables]

**Verification**: [How to validate domain-specific requirements are met]

</step>

**Troubleshooting**: [Domain-specific issues and resolution strategies]

### Step 4: [Step Title]

<step>

**Action**: [Describe exactly what should be done in this step]

**Process**:

1. **[Synthesis Action]**: [How to organize and structure findings]
2. **[Documentation Step]**: [Evidence and reference requirements]
3. **[Quality Validation]**: [Completeness and consistency checks]

**Expected Result**: [Final deliverable or framework output]

**Verification**: [How to confirm the complete PRP implementation meets objectives]

</step>

**Troubleshooting**: [Final validation issues and resolution approaches]

> **🤖Agent Notes [Agent creating a PRP using this template]**: Continue adding steps as needed for your specific PRP implementation. Most PRPs will require 3-6 steps depending on complexity. Remove this note when creating actual PRPs.

---

## Outputs

> **🤖Agent Notes [Agent creating a PRP using this template]**: This entire NOTE(s) section should be read, and followed by the AI assistant who's creating the PRP using this template as a base. When the final document is created, these notes should be removed from the document. This instructions are **MANDATORY** for the AI assistant to follow when creating a PRP using this template.
>
> **Action required**: Define the specific outputs and deliverables that your PRP will produce. This section must be customized based on your PRP's domain and objectives. Consider what artifacts, files, documentation, or other deliverables are needed to fulfill the task requirements.
>
> **✅ Completion Criteria**:
>
> - **Output Definition**: Clear specification of all deliverables with quality standards and acceptance criteria
> - **Format Specification**: Detailed format requirements for each output type (files, documentation, configurations, etc.)
> - **Delivery Requirements**: Location, naming conventions, and integration requirements for outputs
> - **Validation Standards**: Success criteria and verification methods for each deliverable

### Expected Deliverables

> **📝Template Note**: Replace the placeholder content below with specific outputs tailored to your PRP's domain. Examples might include:
> - **Files**: Source code, configuration files, documentation, scripts
> - **Artifacts**: Build outputs, deployment packages, compiled binaries
> - **Documentation**: Technical specifications, user guides, API documentation
> - **Reports**: Analysis results, recommendations, compliance findings
> - **Configurations**: Environment settings, deployment configurations, security policies

**Primary Outputs**:
- [Output Type 1]: [Description of what will be delivered, format requirements, and quality standards]
- [Output Type 2]: [Description of what will be delivered, format requirements, and quality standards]
- [Output Type 3]: [Description of what will be delivered, format requirements, and quality standards]

**Secondary Outputs** (if applicable):
- [Supporting Output 1]: [Description and delivery requirements]
- [Supporting Output 2]: [Description and delivery requirements]

---

## Rules

### Universal Rules (Apply to All PRPs)

### Anti-Hallucination Protocol

**Evidence Requirements**:
- Every technical assertion must include specific file:line references with direct code excerpts
- Use Context7/WebTool MCP tools to verify technology claims against current, authoritative sources
- Cross-reference findings across codebase evidence, AI agent configurations, and current documentation

**Uncertainty Handling**:
- When information is insufficient: "I don't have enough information to confidently assess [specific aspect]. Additional [specific data type] would be required for accurate analysis."
- Use calibrated confidence language:
  - High confidence: "Based on analysis of [specific evidence]..."
  - Medium confidence: "Available evidence suggests [conclusion], though [specific limitation]..."
  - Low confidence: "Limited evidence indicates [tentative conclusion]; verification through [specific method] needed"

**Source Verification Hierarchy**:
1. Existing codebase with file:line evidence
2. User examples, AI agent context, current technology documentation (Context7/WebTool)
3. Repository documentation, configuration files, historical context

**Knowledge Boundaries**:
- Explicitly acknowledge when questions fall outside expertise areas
- Direct users to appropriate resources when boundaries are reached
- Never supplement analysis with unverified external knowledge or assumptions

> **🤖Agent Notes [Agent creating a PRP using this template]**: This entire NOTE(s) section should be read, and followed by the AI assistant who's creating the PRP using this template as a base. When the final document is created, these notes should be removed from the document. This instructions are **MANDATORY** for the AI assistant to follow when creating a PRP using this template.
>
> **Action required**: Add specific rules tailored to your PRP's purpose and domain. These rules complement the universal rules above and should address domain-specific requirements, constraints, and quality standards.
>
> **✅ Completion Criteria**:
>
> - **Domain Alignment**: Rules specifically address the technical domain and use case of your PRP
> - **Quality Standards**: Measurable criteria for success in your specific domain
> - **Constraint Documentation**: Technical, business, or environmental limitations specific to your PRP
> - **Integration Requirements**: How your PRP integrates with existing systems, workflows, or standards
> - **Success Metrics**: Quantifiable measures of PRP effectiveness in your domain
>
> **🎯 Universal Elements for Specific Rules**:
>
> 1. **Domain-Specific Evidence Standards**: What constitutes valid proof in your technical domain
> 2. **Technology Stack Constraints**: Specific limitations or requirements for your target technologies
> 3. **Integration Protocols**: How your PRP connects with existing systems, APIs, or workflows
> 4. **Quality Thresholds**: Minimum acceptable standards for deliverables in your domain
> 5. **Compliance Requirements**: Industry, security, or regulatory standards that apply to your PRP
>
> **💡 Template Structure for Specific Rules**:
>
> ```
> ### Specific Rules (Domain: [YOUR_DOMAIN])
> 
> #### [DOMAIN] Evidence Standards
> - [SPECIFIC_EVIDENCE_REQUIREMENTS_FOR_YOUR_DOMAIN]
> - [VALIDATION_METHODS_SPECIFIC_TO_YOUR_TECHNOLOGY_STACK]
> 
> #### [DOMAIN] Quality Requirements
> - [MEASURABLE_SUCCESS_CRITERIA_FOR_YOUR_DOMAIN]
> - [PERFORMANCE_BENCHMARKS_OR_COMPLIANCE_STANDARDS]
> 
> #### [DOMAIN] Integration Protocols
> - [HOW_YOUR_PRP_CONNECTS_WITH_EXISTING_SYSTEMS]
> - [COMPATIBILITY_REQUIREMENTS_AND_CONSTRAINTS]
> ```
>
> **📚 Examples of Domain-Specific Rules**:
>
> **Frontend Development PRP Example**:
>
> ```
> ### Specific Rules (Domain: Frontend Development)
> 
> #### Frontend Evidence Standards
> - Component analysis must include React DevTools profiler data and performance metrics
> - UI/UX recommendations must reference actual user interaction patterns and accessibility compliance
> - State management changes must include before/after bundle size analysis
> 
> #### Frontend Quality Requirements
> - Performance optimizations must demonstrate measurable Core Web Vitals improvements
> - Component designs must pass WCAG 2.1 AA accessibility validation
> - Code changes must maintain or improve existing test coverage percentages
> 
> #### Frontend Integration Protocols
> - All recommendations must be compatible with existing build pipeline and deployment process
> - Component changes must maintain backward compatibility with existing API contracts
> - Styling modifications must align with established design system tokens and patterns
> ```
>
> **Infrastructure/DevOps PRP Example**:
>
> ```
> ### Specific Rules (Domain: Infrastructure/DevOps)
> 
> #### Infrastructure Evidence Standards
> - All configuration recommendations must include infrastructure-as-code examples (Terraform, CloudFormation)
> - Performance claims must be supported by actual metrics from monitoring systems (Prometheus, CloudWatch)
> - Security recommendations must reference specific compliance frameworks (SOC2, ISO27001, PCI-DSS)
> 
> #### Infrastructure Quality Requirements
> - Deployment strategies must achieve 99.9% uptime targets with automated rollback capabilities
> - Security configurations must pass automated compliance scanning with zero critical findings
> - Resource optimization must demonstrate measurable cost reduction or performance improvement
> 
> #### Infrastructure Integration Protocols
> - All changes must be compatible with existing CI/CD pipelines and deployment automation
> - Infrastructure modifications must maintain disaster recovery and backup capabilities
> - Monitoring and alerting must integrate with existing observability stack and on-call procedures
> ```
>
> **🚫 Anti-Patterns to Avoid in Specific Rules**:
>
> - Generic rules that could apply to any domain (these belong in Universal Rules)
> - Rules that contradict or override the Universal Rules (these should complement, not replace)
> - Vague quality standards without measurable criteria
> - Missing integration considerations for existing systems and workflows
> - Rules that exceed the defined scope and capabilities of your PRP

---
