---
title: "Guide Template - [Specific Guide Purpose]"
description: "Template for creating comprehensive, actionable guides following Anthropic prompt engineering best practices and structured documentation standards. This template provides a systematic framework for creating guides on technical processes, procedures, and workflows."
version: "1.0.0"
status: "draft"
type: "guide-template"
context: "documentation"
related:
  - 
---

> **🤖Agent Notes [Agent creating a guide using this template]**: This entire NOTE(s) section should be read, and followed by the AI assistant who's creating the guide using this template as a base. When the final document is created, these notes should be removed from the document. This instructions are **MANDATORY** for the AI assistant to follow when creating a guide using this template.
>
> **⚠️ Important**: When creating an actual guide from this template, remove all notes, guidance sections, placeholders, and instructional content. This includes:
>
> - All 🤖Agent Notes sections
> - All 📝Template Note sections (if any remain)
> - Example guidance and instructional text
> - Template placeholders ({{PLACEHOLDER}} text)
> - Any explanatory notes about template usage
> - This warning itself
>
> **📋 Guide Metadata Standardization**: All guides generated from this template must maintain consistent metadata structure. Every guide document requires the following YAML frontmatter format:
>
 > ```yaml
> ---
> title: "[Specific Guide Purpose] Guide"
> description: "[Clear, specific description of what the guide teaches and its intended outcomes]"
> version: "[Semantic version starting at 1.0.0]"
> status: "[draft|review|stable|deprecated]"
> type: "guide"
> context: "[domain-context]"
> related:
>   - [relative-path-to-related-guide-1.md]
>   - [relative-path-to-related-guide-2.md]
> ---
> ```

# Guide Template

## Purpose & Scope

> **🤖Agent Notes [Agent creating a guide using this template]**: This entire NOTE(s) section should be read, and followed by the AI assistant who's creating the guide using this template as a base. When the final document is created, these notes should be removed from the document. This instructions are **MANDATORY** for the AI assistant to follow when creating a guide using this template.
>
> **Action required**: Define the specific purpose and scope of your guide. This section establishes what knowledge or skill the guide teaches and what outcomes the reader should achieve.
>
> **💡 Template Structure**:
>
> ```
> **Learning Objective**: After completing this guide, you will be able to [SPECIFIC_CAPABILITY_OR_TASK].
> 
> **Target Audience**: This guide is designed for [AUDIENCE_DESCRIPTION] who have [PREREQUISITE_KNOWLEDGE].
> 
> **Problem Statement**: This guide addresses [SPECIFIC_PROBLEM] by providing [SOLUTION_APPROACH].
> 
> **Scope**: This guide covers [INCLUDED_TOPICS] and does not cover [EXCLUDED_TOPICS].
> ```
>
> **📚 Examples**:
>
> **Codebase Analysis Guide Example**:
>
> ```
> **Learning Objective**: After completing this guide, you will be able to systematically analyze any codebase using repomix to extract architectural patterns and generate comprehensive documentation.
> 
> **Target Audience**: This guide is designed for software engineers and technical leads who have basic command-line experience and need to understand unfamiliar codebases.
> 
> **Problem Statement**: This guide addresses the challenge of quickly understanding complex codebases by providing a systematic approach using repomix analysis tools.
> 
> **Scope**: This guide covers repomix installation, configuration, execution, and output analysis. It does not cover specific programming language analysis or manual code review techniques.
> ```

### Guide Context

<context>

> **🤖Agent Notes [Agent creating a guide using this template]**: This entire NOTE(s) section should be read, and followed by the AI assistant who's creating the guide using this template as a base. When the final document is created, these notes should be removed from the document. This instructions are **MANDATORY** for the AI assistant to follow when creating a guide using this template.
>
> **Action required**: Provide essential context information that readers need before starting the guide. This includes background knowledge, system requirements, and environmental setup.
>
> **💡 Template Structure**:
>
> ```
> **Background**: [ESSENTIAL_CONTEXT_INFORMATION]
> 
> **Prerequisites**:
> - [REQUIRED_KNOWLEDGE_OR_SKILL]
> - [REQUIRED_TOOL_OR_ACCESS]
> - [REQUIRED_SETUP_OR_CONFIGURATION]
> 
> **Assumptions**: This guide assumes [ENVIRONMENTAL_ASSUMPTIONS].
> ```

**Background**: [Provide essential background information about the topic]

**Prerequisites**:

- [Required knowledge, skills, or experience]
- [Required tools, software, or access permissions]
- [Required setup or configuration steps]

**Assumptions**: This guide assumes [environmental assumptions and setup expectations].

</context>

## Overview

> **🤖Agent Notes [Agent creating a guide using this template]**: This entire NOTE(s) section should be read, and followed by the AI assistant who's creating the guide using this template as a base. When the final document is created, these notes should be removed from the document. This instructions are **MANDATORY** for the AI assistant to follow when creating a guide using this template.
>
> **Action required**: Provide a high-level overview of the process that the guide will teach. This gives readers a mental model before diving into detailed steps.
>
> **💡 Template Structure**:
>
> ```
> **Process Overview**: [HIGH_LEVEL_DESCRIPTION_OF_WORKFLOW]
> 
> **Major Phases**:
> 1. [PHASE_1]: [DESCRIPTION_AND_PURPOSE]
> 2. [PHASE_2]: [DESCRIPTION_AND_PURPOSE]
> 3. [PHASE_3]: [DESCRIPTION_AND_PURPOSE]
> 
> **Estimated Time**: [TIME_REQUIREMENT]
> **Complexity Level**: [BEGINNER|INTERMEDIATE|ADVANCED]
> ```

**Process Overview**: [Provide a high-level description of the complete workflow or process]

**Major Phases**:
1. **[Phase 1 Name]**: [Description of what happens in this phase]
2. **[Phase 2 Name]**: [Description of what happens in this phase]
3. **[Phase 3 Name]**: [Description of what happens in this phase]

**Estimated Time**: [Total time required to complete the guide]

**Complexity Level**: [Beginner/Intermediate/Advanced]

## Step-by-Step Instructions

### Visual Flow (Optional)

> **🤖Agent Notes [Agent creating a guide using this template]**: This entire NOTE(s) section should be read, and followed by the AI assistant who's creating the guide using this template as a base. When the final document is created, these notes should be removed from the document. This instructions are **MANDATORY** for the AI assistant to follow when creating a guide using this template.
>
> **Action required**: Create a visual representation of the guide's process flow using Mermaid diagrams. This section is OPTIONAL but highly recommended for complex processes with multiple steps, decision points, or outputs.
>
> **💡 Template Structure**:
>
> ```
> **Process Flow**: [BRIEF_DESCRIPTION_OF_VISUAL_REPRESENTATION]
> 
> ```mermaid
> [MERMAID_DIAGRAM_CODE]
> ```
> 
> **Key Elements**:
> - **Input**: [WHAT_STARTS_THE_PROCESS]
> - **Decision Points**: [WHERE_USERS_MAKE_CHOICES]
> - **Outputs**: [WHAT_THE_PROCESS_PRODUCES]
> - **Validation Steps**: [WHERE_VERIFICATION_HAPPENS]
> ```
>
> **📚 Examples**:
>
> **Sequence Diagram Example (for linear processes)**:
>
> ```
> **Process Flow**: Sequential steps for codebase analysis using repomix
> 
> ```mermaid
> sequenceDiagram
>     participant User
>     participant Terminal
>     participant Repomix
>     participant Output
> 
>     User->>Terminal: Install repomix
>     Terminal->>User: Installation confirmation
>     User->>Terminal: Configure repomix.config.json
>     User->>Repomix: Execute repomix command
>     Repomix->>Output: Generate analysis report
>     User->>Output: Review and validate results
> ```
> ```
>
> **Flowchart Example (for processes with decision points)**:
>
> ```
> **Process Flow**: API setup with conditional configuration steps
> 
> ```mermaid
> flowchart TD
>     A[Start: API Setup] --> B[Install Dependencies]
>     B --> C{Environment Type?}
>     C -->|Development| D[Configure Dev Settings]
>     C -->|Production| E[Configure Prod Settings]
>     D --> F[Start Local Server]
>     E --> G[Deploy to Production]
>     F --> H[Test API Endpoints]
>     G --> H
>     H --> I{Tests Pass?}
>     I -->|Yes| J[Setup Complete ✅]
>     I -->|No| K[Debug and Fix Issues]
>     K --> H
> ```
> ```
>
> **Graph Example (for component relationships)**:
>
> ```
> **Process Flow**: System architecture setup showing component interactions
> 
> ```mermaid
> graph LR
>     A[Configuration Files] --> B[Application Setup]
>     B --> C[Database Connection]
>     B --> D[API Routes]
>     C --> E[Data Models]
>     D --> F[Authentication]
>     E --> G[Business Logic]
>     F --> G
>     G --> H[Response Generation]
>     H --> I[Client Application]
> ```
> ```

**Process Flow**: [Provide a brief description of what the visual representation shows]

```mermaid
[Insert appropriate Mermaid diagram code here - sequence, flowchart, or graph based on your process type]
```


### Step 1: [Step Title]

<step>

> **🤖Agent Notes [Agent creating a guide using this template]**: This entire NOTE(s) section should be read, and followed by the AI assistant who's creating the guide using this template as a base. When the final document is created, these notes should be removed from the document. This instructions are **MANDATORY** for the AI assistant to follow when creating a guide using this template.
>
> **Action required**: Replace this step with the actual first step of your guide. Each step should be specific, actionable, and include verification methods.

**Action**: [Describe exactly what the reader should do]

**Command/Code**:

```bash
# [Provide the actual command or code to execute]
```

**Expected Result**: [Describe what should happen when the step is completed successfully]

**Verification**: [Explain how to confirm the step was completed correctly]

</step>

**Troubleshooting**: [List common issues and their solutions for this step]

### Step 2: [Step Title]

<step>

**Action**: [Describe exactly what the reader should do]

**Command/Code**:

```bash
# [Provide the actual command or code to execute]
```

**Expected Result**: [Describe what should happen when the step is completed successfully]

**Verification**: [Explain how to confirm the step was completed correctly]

</step>

**Troubleshooting**: [List common issues and their solutions for this step]

> **🤖Agent Notes [Agent creating a guide using this template]**: Continue adding steps as needed. Each guide should have as many steps as necessary to complete the objective. Remove this note when creating actual guides.

## Validation & Testing

> **🤖Agent Notes [Agent creating a guide using this template]**: This entire NOTE(s) section should be read, and followed by the AI assistant who's creating the guide using this template as a base. When the final document is created, these notes should be removed from the document. This instructions are **MANDATORY** for the AI assistant to follow when creating a guide using this template.
>
> **Action required**: Provide comprehensive validation steps to ensure the guide's objective has been achieved successfully.

<validation>

**Validation Checklist**:

- [ ] [Validation item 1]
- [ ] [Validation item 2]
- [ ] [Validation item 3]

**Testing Procedures**:

1. **[Test Name]**: [Description of what to test and how]
   - Expected Result: [What should happen]
   - Pass Criteria: [How to determine success]

2. **[Test Name]**: [Description of what to test and how]
   - Expected Result: [What should happen]
   - Pass Criteria: [How to determine success]

**Quality Verification**:

- [Quality standard 1]: [How to verify]
- [Quality standard 2]: [How to verify]

**Final Acceptance Test**: [Comprehensive test that proves the guide's objective was achieved]

</validation>

## Troubleshooting

> **🤖Agent Notes [Agent creating a guide using this template]**: This entire NOTE(s) section should be read, and followed by the AI assistant who's creating the guide using this template as a base. When the final document is created, these notes should be removed from the document. This instructions are **MANDATORY** for the AI assistant to follow when creating a guide using this template.
>
> **Action required**: Create a comprehensive troubleshooting section that addresses common issues, error scenarios, and debugging approaches.

<troubleshooting>

### Common Issues

**Issue**: [Description of the problem]

- **Symptoms**: [How to recognize this issue]
- **Cause**: [Why this happens]
- **Solution**: [Step-by-step resolution]
- **Prevention**: [How to avoid this issue in the future]

**Issue**: [Description of the problem]

- **Symptoms**: [How to recognize this issue]
- **Cause**: [Why this happens]
- **Solution**: [Step-by-step resolution]
- **Prevention**: [How to avoid this issue in the future]

### Error Messages

**Error**: `[Exact error message]`

- **Meaning**: [What this error indicates]
- **Resolution**: [How to fix it]

**Error**: `[Exact error message]`

- **Meaning**: [What this error indicates]
- **Resolution**: [How to fix it]

### Debugging Strategies

1. **[Strategy Name]**: [When to use this approach and how]
2. **[Strategy Name]**: [When to use this approach and how]

### Recovery Procedures

**Scenario**: [Description of failure scenario]

- **Recovery Steps**: [How to recover from this situation]
- **Data Safety**: [How to protect important data during recovery]

</troubleshooting>

## Additional Resources

> **🤖Agent Notes [Agent creating a guide using this template]**: This entire NOTE(s) section should be read, and followed by the AI assistant who's creating the guide using this template as a base. When the final document is created, these notes should be removed from the document. This instructions are **MANDATORY** for the AI assistant to follow when creating a guide using this template.
>
> **Action required**: Provide links to related resources, advanced topics, and further learning materials.

<resources>

### Related Guides

- [Guide Title](relative-path-to-guide.md): [Brief description of relevance]
- [Guide Title](relative-path-to-guide.md): [Brief description of relevance]

### Documentation References

- [Official Documentation](URL): [Description of what this covers]
- [API Reference](URL): [Description of what this covers]

</resources>
