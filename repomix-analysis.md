This file is a merged representation of a subset of the codebase, containing specifically included files and files not matching ignore patterns, combined into a single document by Repomix.
The content has been processed where content has been compressed (code blocks are separated by ⋮---- delimiter).

# File Summary

## Purpose
This file contains a packed representation of the entire repository's contents.
It is designed to be easily consumable by AI systems for analysis, code review,
or other automated processes.

## File Format
The content is organized as follows:
1. This summary section
2. Repository information
3. Directory structure
4. Repository files (if enabled)
5. Multiple file entries, each consisting of:
  a. A header with the file path (## File: path/to/file)
  b. The full contents of the file in a code block

## Usage Guidelines
- This file should be treated as read-only. Any changes should be made to the
  original repository files, not this packed version.
- When processing this file, use the file path to distinguish
  between different files in the repository.
- Be aware that this file may contain sensitive information. Handle it with
  the same level of security as you would the original repository.
- Pay special attention to the Repository Description. These contain important context and guidelines specific to this project.

## Notes
- Some files may have been excluded based on .gitignore rules and Repomix's configuration
- Binary files are not included in this packed representation. Please refer to the Repository Structure section for a complete list of file paths, including binary files
- Only files matching these patterns are included: **/*
- Files matching these patterns are excluded: node_modules/**, .git/**, coverage/**, dist/**, build/**, *.log, .DS_Store, thumbs.db, *.tmp, *.temp, .repomix-output.*, repomix-output.*
- Files matching patterns in .gitignore are excluded
- Files matching default ignore patterns are excluded
- Content has been compressed - code blocks are separated by ⋮---- delimiter

# User Provided Header
Repository Template - AI-friendly codebase representation for analysis and development

# Directory Structure
```
.claude/
  settings.local.json
.cursor/
  rules/
    cursor-documentation-clarity-enforcement.mdc
    cursor-repository-context-review.mdc
    cursor-repository-context-updates.mdc
    cursor-rule-create-command.mdc
    cursor-rules-creation-standards.mdc
    cursor-rules-editing-standards.mdc
    cursor-rules-location.mdc
    cursor-task-breakdown-enforcement.mdc
    docs-markdown-formatting.mdc
    docs-markdown-metadata.mdc
    dotfiles-management.mdc
    justfile-main-task-executor.mdc
    shell-script-compliance.mdc
.github/
  ISSUE_TEMPLATE/
    bug_report.yml
    documentation.yml
    feature_request.yml
    rfc.yml
  workflows/
    bump.yml
    ci-docker.yaml
    ci-typescript.yaml
    issue-comment-created.yml
    jsr-publish.yml
    lock-threads.yml
    stale-actions.yaml
  auto-comment.yml
  CODEOWNERS
  config.yml
  labeler.yml
  no-response.yml
  PULL_REQUEST_TEMPLATE.md
  settings.yml
  stale.yml
docs/
  00_context_engineering/
    examples/
    pre_research/
  01_concepts/
  02_product/
  03_architecture/
  04_work_organization/
  05_guides/
    05_1_styleguides/
    05_2_how_to/
  06_workflows/
  07_stdlib_ai_agents/
  08_references/
    08_1_internal/
    08_2_external/
    08_2_libs/
  09_ai/
    01_tasks/
    02_scratchpads/
    03_product_requirement_prompts/
    04_ai_documentation/
      04.1_anthropic_prompt_engineering/
        anthropic-be-clear-direct-and-detailed.md
        anthropic-building-with-extended-thinking.md
        anthropic-chain-complex-prompts-for-stronger-performance.md
        anthropic-claude-4-prompt-engineering-best-practices.md
        anthropic-extending-thinking.md
        anthropic-keep-claude-in-character-with-role-prompting-and-prefilling.md
        anthropic-let-claude-think-chain-of-thought-prompting-to-increase-performance.md
        anthropic-long-context-prompting-tips.md
        anthropic-prefill-claudes-response-for-greater-output-control.md
        anthropic-reduce-hallucinations.md
        anthropic-use-examples-multishot-prompting-to-guide-claudes-behavior.md
        anthropic-use-xml-tags-to-structure-your-prompts.md
      04.2_claude_code/
        claude_code_troubleshoot.md
        claude-code-administration.md
        claude-code-commands.md
        claude-code-common-workflows.md
        claude-code-documentation-overview.md
        claude-code-github-actions.md
        claude-code-hooks.md
        claude-code-mcp.md
        claude-code-memory.md
        claude-code-monitoring.md
        claude-code-overview.md
        claude-code-settings.md
  99_archive/
  templates/
    00_context_engineering/
      evals/
      init-context-example.md
      init-context-type-full.md
      user-input-form-v1.md
    00_overview/
      about-this-repo.md
      persona-definition.md
    01-repository-readiness-specification.md
scripts/
  hooks/
    pre-commit-init.sh
  setup/
.editorconfig
.gitattributes
.gitignore
.npmignore
.pre-commit-config.yaml
.shellcheckrc
CODE_OF_CONDUCT.md
CONTRIBUTING.md
justfile
LICENSE
Makefile
README.md
repomix.config.json
SECURITY.md
```

# Files

## File: .claude/settings.local.json
````json
{
  "permissions": {
    "allow": [
      "Bash(tree:*)",
      "WebFetch(domain:github.com)",
      "Bash(chmod:*)",
      "Bash(find:*)",
      "Bash(grep:*)",
      "Bash(ls:*)",
      "Bash(repomix:*)",
      "mcp__context7__resolve-library-id",
      "mcp__context7__get-library-docs",
      "Bash(mkdir:*)",
      "Bash(node:*)",
      "Bash(echo:*)",
      "Bash(just:*)",
      "Bash(make:*)",
      "Bash(git config:*)",
      "Bash(shellcheck:*)",
      "Bash(mv:*)"
    ],
    "deny": []
  }
}
````

## File: .cursor/rules/cursor-documentation-clarity-enforcement.mdc
````
---
description: "Proactively detect and alert about redundancies and jargon violations in documentation to enforce clarity standards, especially for prompt-engineering and context-engineering tasks"
globs: ["*.md", "*.markdown", "*.txt", "*.rst", "docs/**/*", "README*"]
alwaysApply: true
---

# Cursor Documentation Clarity Enforcement Rule

## Description

This rule mandates that Cursor proactively analyzes documentation during editing to detect redundancies and jargon violations that compromise clarity. When editing any documentation, Cursor must alert users to redundant content, unnecessary jargon, and clarity violations even if the user hasn't spotted them. This enforcement is particularly critical for prompt-engineering and context-engineering tasks where precision and clarity are paramount.

**Core Principle**: Jargon-free and redundancy-free documentation is the law.

## Rule

1. **Mandatory Redundancy Detection**: Scan for and alert about:
   - **Tautologies**: Statements making the same point in different ways
   - **Pleonasms**: Phrases containing unnecessary words
   - **Repetitive Content**: Identical concepts restated without adding value
   - **Verbose Explanations**: Content that can be simplified without losing meaning

2. **Jargon Violation Detection**: Identify and suggest replacements for:
   - **Undefined Technical Terms**: Domain-specific vocabulary without explanation
   - **Unexplained Abbreviations**: Acronyms/initialisms used without definition
   - **Industry Jargon**: Professional terminology that excludes non-experts
   - **Complex Language**: Unnecessarily sophisticated words when simpler alternatives exist

3. **Prompt-Engineering Clarity Focus**: Apply stricter standards for:
   - **Prompt Design Documents**: Eliminate ambiguous instructions and undefined terms
   - **Context-Engineering Guidelines**: Ensure every directive is immediately actionable
   - **AI Interaction Specifications**: Remove meta-discourse and verbose explanations
   - **Template Documentation**: Maintain consistency in terminology and format

4. **Proactive Alert Protocol**:
   - Alert immediately upon detecting violations during editing
   - Provide specific line references for identified issues
   - Suggest concrete replacements for jargon and redundant content
   - Highlight inconsistent terminology across the document

5. **Clarity Enforcement Standards**:
   - Replace weak language ("might", "could", "perhaps") with definitive statements
   - Eliminate meta-discourse ("as mentioned above", "you should know")
   - Ensure active voice and clear subject identification
   - Maintain terminology consistency throughout documents

6. **Documentation Type Sensitivity**: Apply appropriate standards based on:
   - **Technical Specifications**: High precision, defined terminology
   - **User Guides**: Accessible language, minimal jargon
   - **API Documentation**: Consistent naming, clear examples
   - **Process Documentation**: Step-by-step clarity, no ambiguity

## Implementation

Cursor IDE will:
- **Real-time Analysis**: Continuously scan content during editing for redundancy and jargon patterns
- **Intelligent Alerting**: Display contextual warnings with specific violation details and improvement suggestions
- **Terminology Database**: Maintain project-specific glossaries to ensure consistency
- **Severity Classification**: Distinguish between critical clarity issues and minor improvements
- **Automated Suggestions**: Provide one-click replacements for common jargon and redundancy patterns
- **Document Type Recognition**: Apply appropriate clarity standards based on file location and content type

## Examples

### ✅ Correct: Clear, Redundancy-Free Content

```markdown
# API Authentication

Use API keys to authenticate requests.

## Setup Steps
1. Generate API key in dashboard
2. Add key to request headers
3. Test connection

## Required Headers
```
Authorization: Bearer {your-api-key}
```

## Error Handling
- 401: Invalid key
- 403: Insufficient permissions
```

### ❌ Incorrect: Redundant and Jargon-Heavy Content

```markdown
# API Authentication Implementation and Configuration

In order to properly authenticate API requests in your application, 
you need to utilize API keys for the authentication process. This 
authentication mechanism allows you to authenticate and verify requests.

## Setup and Configuration Steps
1. You should generate an API key in the dashboard interface
2. After generating the key, you need to add the key to your request headers
3. Once you've added the headers, test the connection to verify functionality

## Required Headers for Authentication
```
Authorization: Bearer {your-api-key}
```

## Error Handling and Troubleshooting
- 401 Unauthorized: This indicates an invalid key was provided
- 403 Forbidden: This means insufficient permissions were granted

Problems:
- "authentication process" → redundant with "authenticate"
- "authentication mechanism" → jargon
- "interface" → unnecessary qualifier
- "Once you've added" → verbose meta-discourse
- Repetitive explanations of obvious concepts
```

### ✅ Correct: Prompt-Engineering Clarity

```markdown
# Context Engineering Rule Template

## Rule Structure
1. Define specific behavior
2. Include concrete examples
3. Specify output format

## Implementation
- Use imperative commands
- Avoid conditional language
- Reference exact file paths

## Validation
Test rule effectiveness with sample inputs.
```

### ❌ Incorrect: Prompt-Engineering Jargon

```markdown
# Context Engineering Rule Template and Guidelines

When you're designing context engineering rules, you should consider
implementing a comprehensive framework that leverages best practices
for prompt optimization and contextual directive specification.

## Rule Structure and Architecture
1. You need to define specific behavioral parameters
2. It's important to include concrete illustrative examples
3. You should specify the desired output format and structure

## Implementation Guidelines and Best Practices
- You should utilize imperative command structures when possible
- It's recommended to avoid conditional or ambiguous language constructs
- Consider referencing exact file paths for optimal specificity

## Validation and Testing Procedures
You should test rule effectiveness using sample inputs to ensure
proper functionality and optimal performance characteristics.

Problems:
- "comprehensive framework" → jargon
- "leverages best practices" → business speak
- "behavioral parameters" → technical jargon
- "illustrative examples" → redundant
- "language constructs" → unnecessary complexity
- Verbose meta-discourse throughout
```

### Visual Clarity Patterns

```
Documentation Clarity Hierarchy:

High Clarity:
├── Direct statements ✅
├── Concrete examples ✅
├── Consistent terminology ✅
└── Active voice ✅

Medium Clarity:
├── Some technical terms (defined) ⚠️
├── Passive voice occasionally ⚠️
└── Minor redundancy ⚠️

Low Clarity:
├── Undefined jargon ❌
├── Repetitive content ❌
├── Meta-discourse ❌
└── Ambiguous instructions ❌
```
````

## File: .cursor/rules/cursor-repository-context-review.mdc
````
---
description: "Always review repository context and understand the codebase structure using repomix before performing any tasks"
globs: ["**/*"]
alwaysApply: true
---

# Repository Context Review

## Description

This rule mandates that Cursor always performs a comprehensive repository context review and understanding of the codebase structure using `repomix` (available in the system) before executing any development tasks. This ensures informed decision-making based on complete project knowledge including architecture, patterns, dependencies, and configuration.

## Rule

Execute this mandatory context review protocol for every repository task:

1. **Initial Repository Analysis**: Execute `repomix` to generate comprehensive, AI-friendly codebase representation before task execution.

2. **Configuration Awareness**: Reference project-specific `repomix.config.json` file located at repository root containing:
   - Schema validation: Latest repomix schema for IDE autocomplete and validation
   - Output format: XML style with template-specific header for AI analysis
   - Compression: Enabled for token optimization and faster AI processing
   - File size limits: 50MB maximum for large repository handling
   - Git integration: Sorts files by change frequency with 100 commit analysis
   - Security checks: Enabled for sensitive data protection
   - Template-optimized ignore patterns: Comprehensive exclusion of build artifacts, logs, and system files
   - Empty directories: Included to show complete repository structure
   - Token encoding: o200k_base for optimal AI model compatibility

3. **Comprehensive Analysis**: Analyze repomix output to understand:
   - Project structure and organization
   - Key dependencies and configuration files
   - Code patterns and architectural decisions
   - File relationships and imports
   - Documentation and setup requirements

4. **Context-Informed Actions**: Base all development decisions on comprehensive codebase understanding rather than assumptions.

5. **Configuration Optimization**: Leverage the optimized repomix configuration which includes:
   - Schema validation with official repomix schema for enhanced IDE support
   - Compression enabled for token efficiency and faster AI processing
   - Template-specific header text for clear context identification
   - Comprehensive ignore patterns covering build artifacts, system files, and development byproducts
   - Git change tracking for prioritizing recently modified files (100 commit analysis)
   - Security scanning enabled for sensitive data protection
   - Empty directory inclusion for complete repository structure visualization
   - Increased top files display (10 files) for better project overview

## Implementation

### Technical Integration

```bash
# Always run repomix first to understand repository context
repomix

# The command will use the optimized repomix.config.json configuration:
# - Schema validation enabled for enhanced development experience
# - Outputs to repomix-output.xml with template-specific header
# - Compression enabled for token optimization
# - Comprehensive ignore patterns for template repositories
# - Git change analysis with 100 commit history
# - Security scanning for sensitive data protection
# - Empty directory inclusion for complete structure view
# - Enhanced top files display (10 files) for better overview
# - Uses o200k_base token encoding for optimal AI compatibility
```

### Workflow Integration

1. **Pre-Task Execution**: Execute `repomix` before coding, debugging, or architectural decisions
2. **Configuration Reference**: Check project's `repomix.config.json` for specific settings
3. **Output Analysis**: Review generated `repomix-output.xml` for complete project context
4. **Informed Decision Making**: Apply comprehensive codebase knowledge to all subsequent actions

### Command Options

Repomix supports extensive configuration through the existing config file and additional CLI options:

- `--style xml` (configured in config): Optimized for AI processing with structured output
- `--compress true` (configured): Enabled by default for token optimization and faster processing
- `--include-diffs false` (configured): Disabled to focus on current state rather than changes
- `--top-files-len 10` (configured): Show top 10 most important files for comprehensive overview
- `--token-count-encoding o200k_base` (configured): Optimized token counting for AI models
- `--include-empty-directories true` (configured): Show complete directory structure including empty folders
- Schema validation: Automatic with `$schema` property for enhanced IDE support

## Benefits

### Enhanced Code Quality
- **Architectural Awareness**: Understand existing patterns before implementing new features
- **Consistency**: Maintain codebase conventions and standards
- **Dependency Understanding**: Avoid conflicts with existing dependencies

### Improved Efficiency
- **Context-Driven Development**: Make informed decisions rather than exploratory changes
- **Reduced Refactoring**: Understand the codebase structure to implement changes correctly the first time
- **Pattern Recognition**: Identify reusable components and established patterns

### Better Collaboration
- **Documentation**: Understand project documentation and setup requirements
- **Team Conventions**: Follow established coding patterns and organizational standards
- **Knowledge Transfer**: Comprehensive understanding reduces onboarding time

### Risk Mitigation
- **Security Awareness**: Leverage built-in security scanning
- **Change Impact**: Understand how modifications affect other parts of the system
- **Configuration Compliance**: Respect project-specific settings and constraints

## Examples

### ✅ Correct Approach

```bash
# Step 1: Always start with repository context review
repomix

# Step 2: Analyze the generated repomix-output.xml to understand:
# - Project structure in the directory structure section
# - Key files and their purposes in the file summary
# - Dependencies in package.json or similar config files
# - Git activity patterns for recently changed areas

# Step 3: Proceed with informed development decisions
# Example: Implementing a new feature
# - Check existing similar implementations
# - Follow established patterns
# - Understand dependency requirements
# - Respect configuration constraints
```

**Repository Structure Understanding:**
```
project-root/
├── repomix.config.json     # ← Project-specific repomix configuration
├── repomix-output.xml      # ← Generated context file
├── src/                    # ← Source code (understand patterns)
├── docs/                   # ← Documentation (read setup requirements)
├── scripts/                # ← Automation (understand workflows)
└── justfile               # ← Build automation (understand commands)
```

### ❌ Incorrect Approach

```bash
# ❌ Starting development without context understanding
npm install some-package

# ❌ Modifying files without understanding project structure
edit src/main.js

# ❌ Making architectural decisions without codebase knowledge
mkdir new-feature-directory

# ❌ Ignoring project-specific repomix configuration
repomix --style plain --no-security-check  # Overrides project settings
```

### Context-Aware Development Pattern

```bash
# ✅ Proper workflow for any development task
repomix  # Uses project's repomix.config.json automatically

# Analyze output for:
# 1. Existing similar functionality
# 2. Project conventions and patterns
# 3. Dependencies and their usage
# 4. Documentation and setup requirements
# 5. Recent changes and active development areas

# Then proceed with informed implementation
```

### Configuration-Aware Usage

The project's `repomix.config.json` is optimized for template repositories with:
- **Schema Validation**: Latest repomix schema (`$schema`) for enhanced IDE support and validation
- **Compression Enabled**: Reduces token count while preserving essential structure and context
- **Template-Specific Header**: Clear identification as "Repository Template" for AI analysis context
- **50MB file size limit**: Handles large repositories efficiently for comprehensive analysis
- **XML output format**: Structured data optimized for AI processing and parsing
- **Enhanced Top Files Display**: Shows 10 most important files for better project overview
- **Git integration**: Prioritizes recently changed files with 100 commit analysis depth
- **Security scanning**: Prevents accidental exposure of sensitive data and credentials
- **Comprehensive ignore patterns**: Excludes build artifacts, system files, logs, and development byproducts
- **Empty directory inclusion**: Shows complete repository structure for template understanding
- **Token optimization**: Uses o200k_base encoding for optimal AI model compatibility

Always respect these configurations as they are specifically optimized for template repository analysis and AI-assisted development workflows.
````

## File: .cursor/rules/cursor-repository-context-updates.mdc
````
---
description: "Execute repomix automatically when new technologies are detected in the repository"
globs: ["package.json", "go.mod", "Cargo.toml", "requirements.txt", "Dockerfile"]
alwaysApply: true
---

# Auto-Repomix on Technology Changes

## Description

Execute `repomix` command automatically when new technologies, dependencies, or significant configuration changes are detected to maintain current repository analysis for AI tools.

## Rule

Execute `repomix` when these technology files change:

1. **Package Dependencies**: On modification of `package.json`, `requirements.txt`, `go.mod`, `Cargo.toml`
2. **Build Configurations**: On creation/modification of `Dockerfile`, `docker-compose.yml`
3. **New Languages**: On first occurrence of new file extensions (`.ts`, `.go`, `.rs`, `.py`)
4. **Major Config Changes**: On modification of build tool configs (`webpack.config.js`, `vite.config.js`)

### Execution Command

```bash
repomix  # Uses existing repomix.config.json configuration
```

## Implementation

**Cursor IDE Integration:**
- Monitors technology files for changes
- Triggers repomix execution automatically
- Prevents outdated repository analysis

**Technical Enforcement:**
- File watcher on specified glob patterns
- Automatic command execution on change detection
- Uses existing `repomix.config.json` settings

## Benefits

1. **Current Analysis**: Keeps repository context up-to-date for AI tools
2. **Automatic Execution**: No manual repomix command required
3. **Technology-Aware**: Triggers only on meaningful changes
4. **Efficient**: Uses optimized repomix configuration

## Examples

### ✅ Correct Trigger Events

**Adding TypeScript:**
```bash
# Changes detected:
package.json (+ typescript dependency)
tsconfig.json (new file)

# Automatic action:
repomix  # Regenerates analysis with TypeScript files
```

**Adding Docker:**
```bash
# Changes detected:
Dockerfile (new file)

# Automatic action:
repomix  # Updates analysis to include Docker configuration
```

### ❌ Incorrect Manual Usage

```bash
# ❌ Manual repomix execution without trigger
repomix  # Run unnecessarily on documentation changes

# ❌ Ignoring the automation
# Making technology changes but manually skipping repomix execution
```

### Trigger Pattern Examples

```
Technology File Changes → Auto Repomix
├── package.json modified → repomix
├── go.mod created → repomix
├── requirements.txt updated → repomix
├── Dockerfile added → repomix
└── Documentation changes → no trigger
```
````

## File: .cursor/rules/cursor-rule-create-command.mdc
````
---
description: "Comprehensive guidelines for using and executing the cc_cursor_rule_create command, reflecting v1.2.0 enhancements including extended thinking, XML structuring, evidence verification, and systematic rule generation protocols."
globs: ["*.mdc", ".cursor/rules/*", ".claude/commands/*", "**/commands/*"]
alwaysApply: true
---

# CC Cursor Rule Create Command Guidelines

## Description

The `cc_cursor_rule_create` command generates comprehensive, production-ready cursor rules in proper MDC format with complete YAML frontmatter, structured content sections, and practical implementation guidance. This command operates as a systematic single-phase creation process that delivers cursor rule files matching exceptional precision and structural integrity expected from Senior+ technical writers with 7+ years documentation experience.

**Command Version**: 1.2.0 - Enhanced with extended thinking integration, XML structuring framework, evidence verification protocols, and chain-of-thought reasoning validation.

## Rule

When using the `cc_cursor_rule_create` command, you MUST adhere to these directives:

1. **Mandatory Prefix Compliance**: Always begin responses with "**Mr. Alex 🤖, (v7.1)**" as specified in the core mandate.

2. **TodoWrite Integration Requirements**: 
   - Create structured todo lists before command execution using the TodoWrite tool
   - Track progress systematically through all 14 mandatory checklist items
   - Mark items as completed only after verification
   - Maintain visual progress indicators throughout execution

3. **Extended Thinking Protocol**:
   - Use `think hard` keyword for complex cursor rule creation (16K+ tokens allocation)
   - Apply systematic problem decomposition with clear logical progression
   - Evaluate minimum 2-3 alternative approaches with pros/cons analysis
   - Include confidence scoring (High: 90-100%, Medium: 70-89%, Low: 50-69%)

4. **File Creation Protocol**:
   - MUST create physical `.mdc` files in `.cursor/rules/` directory using Write tool
   - Follow kebab-case naming convention: `[rule-name].mdc`
   - Validate directory structure exists before file creation
   - Never display content only in terminal - generate actual files

5. **YAML Frontmatter Specifications**:
   - Include `description`, `globs`, and `alwaysApply` fields
   - Use proper glob patterns: `["*.ts", "*.js"]` for multiple patterns, `""` for global
   - Apply appropriate globs based on rule target scope
   - Validate YAML syntax compliance

6. **Content Structure Requirements**:
   - Description: Clear explanation of rule purpose and scope
   - Rule: Numbered, actionable directives with specific requirements
   - Implementation: Technical details about cursor IDE enforcement
   - Benefits: Organizational and workflow advantages
   - Examples: Both correct (✅) and incorrect (❌) patterns with ASCII diagrams

7. **File/Directory Reference Validation**:
   - Verify all referenced paths exist using Read or LS tools
   - Correct non-existent paths or mark as creation requirements
   - Use relative paths only (e.g., `src/components/` not `/absolute/path/`)
   - Document path corrections in rule content

8. **Rule Conciseness & Completeness**:
   - Ensure rules are self-contained with full context
   - Eliminate verbose explanations while preserving functionality
   - Use direct, imperative language (e.g., "Execute repomix" not "Consider running...")
   - Maintain actionability when piped into other rules

9. **Evidence-Based Reasoning**:
   - Support all technical claims with verifiable evidence
   - Include confidence levels for recommendations
   - Reference specific documentation sources
   - Validate logical consistency throughout rule content

10. **Quality Assurance Gates**:
    - Validate final file format and syntax
    - Confirm all mandatory sections present
    - Verify markdown formatting compliance
    - Check structural integrity against reference standards

## Implementation

The cursor IDE will enforce this rule by:

- **Real-time Validation**: Checking command execution against the 10 mandatory directives
- **Progress Tracking**: Monitoring TodoWrite tool usage and checklist completion
- **File Creation Verification**: Ensuring physical `.mdc` files are generated in correct location
- **Format Compliance**: Validating YAML frontmatter syntax and MDC structure
- **Content Quality**: Comparing output against reference example standards
- **Evidence Verification**: Confirming all technical claims are properly supported

## Benefits

- **Systematic Execution**: TodoWrite integration ensures no steps are missed
- **Production Quality**: V1.2.0 enhancements deliver technical writer-level precision
- **Evidence-Based Output**: Confidence scoring and verification reduce hallucinations
- **Structural Consistency**: XML framework provides clear semantic organization
- **Extended Reasoning**: Think hard protocol allocates sufficient cognitive resources
- **File Validation**: Path verification prevents broken references in cursor rules
- **Self-Contained Rules**: Conciseness requirements ensure standalone functionality
- **Quality Assurance**: Multiple verification gates prevent substandard output

## Examples

### ✅ Correct Command Usage

```bash
# Proper command execution with TodoWrite integration
/cc_cursor_rule_create api-validation "Ensure API calls include validation"

# Expected workflow:
1. Create TodoWrite checklist with 14 items
2. Use extended thinking with confidence scoring
3. Generate physical .mdc file in .cursor/rules/
4. Validate all file references exist
5. Ensure rule is self-contained and concise
```

**Correct YAML Frontmatter**:
```yaml
---
description: "Comprehensive API validation rules for TypeScript/JavaScript files"
globs: ["*.ts", "*.js", "src/api/**/*"]
alwaysApply: true
---
```

**Correct File Structure**:
```
.cursor/
└── rules/
    └── api-validation.mdc    ✅ Physical file created
```

### ❌ Incorrect Command Usage

```bash
# Missing TodoWrite integration
/cc_cursor_rule_create quick-rule

# Problems:
❌ No systematic todo list creation
❌ No progress tracking
❌ Rushed execution without verification gates
```

**Incorrect Content Display**:
```markdown
# Displaying rule content in terminal only
Description: Some API rule...
Rule: 1. Do something...

❌ No physical file created
❌ No .cursor/rules/ directory usage
❌ Terminal output only is command failure
```

**Incorrect File References**:
```markdown
Rule: Always check the docs in /absolute/path/docs/api/
❌ Absolute path used
❌ Path existence not validated
❌ Not self-contained for piping
```

### Directory Structure Visualization

```
Project Root/
├── .cursor/                     ✅ Required directory
│   └── rules/                   ✅ Cursor rules location
│       ├── api-validation.mdc   ✅ Generated rule
│       └── cc-cursor-rule-create-command.mdc  ✅ This rule
├── .claude/                     ⚠️  Optional, validate if referenced
│   └── commands/                ⚠️  Command definitions
├── src/                         ✅ Common project structure
│   └── api/                     ✅ Referenced in globs
└── docs/                        ✅ Documentation references
```

**Rule Quality Checklist**:
- ✅ Physical `.mdc` file created
- ✅ TodoWrite integration used
- ✅ Extended thinking applied
- ✅ All file references validated
- ✅ YAML frontmatter compliant
- ✅ Self-contained and concise
- ✅ Evidence-based claims
- ✅ Confidence scoring included
````

## File: .cursor/rules/cursor-rules-creation-standards.mdc
````
---
description: "Enforce comprehensive content quality standards for cursor rules including MDC format compliance, YAML frontmatter structure, and technical writing precision"
globs: ["**/*.mdc", ".cursor/rules/**"]
alwaysApply: true
---

# Cursor Rule Content Standards

## Description

This rule enforces comprehensive content quality standards for cursor rules that follow MDC (Model-Driven Code) format specifications. It ensures consistency, completeness, and technical precision in cursor rule content, covering YAML frontmatter structure, content organization, language precision, and quality validation. For file location and organization requirements, see [cursor-rules-location.mdc](cursor-rules-location.mdc).

## Rule

Create cursor rules with proper MDC format:

1. **YAML Frontmatter**: Include `description`, `globs`, `alwaysApply` fields with correct syntax
2. **Required Sections**: Description → Rule → Implementation → Benefits → Examples
3. **Direct Language**: Use imperative commands ("Execute", "Create", "Validate")
4. **Relative Paths**: Never use absolute paths in rule content
5. **Validate Syntax**: Check YAML and markdown formatting before saving

## Implementation

**Cursor IDE Integration:**
- Real-time YAML/markdown syntax validation
- Template generation for required sections
- Content quality checks during editing

**Technical Enforcement:**
- YAML syntax validation
- Markdown linting
- Section completeness verification

## Benefits

1. **Consistency**: Uniform structure across all cursor rules
2. **Quality**: Production-ready technical documentation
3. **Completeness**: All required sections present and validated
4. **Maintainability**: Clear structure with comprehensive examples

## Examples

### ✅ Correct Content Implementation

**YAML Frontmatter Example:**
```yaml
---
description: "Enforce TypeScript coding standards and best practices"
globs: ["**/*.ts", "**/*.tsx"]
alwaysApply: false
---
```

**Section Structure Example:**
```markdown
# Rule Title
## Description
## Rule
## Implementation
## Benefits
## Examples
```

### ❌ Incorrect Content Implementation

**Malformed Cursor Rule Content:**

```markdown
description: TypeScript rule
globs: *.ts
---

# TypeScript

This rule is about TypeScript...

## Some Requirements
- Maybe use types
- Could be good to check things
```

**Content Problems Identified:**
```
Content Issues/
├── Invalid YAML frontmatter syntax
├── Missing required fields (alwaysApply)
├── Incomplete content structure (missing Implementation, Benefits, Examples)
├── Vague language ("maybe", "could be")
├── No specific, actionable requirements
└── Missing technical precision and clarity
```

### 🔧 MDC Content Format Reference

**Complete YAML Frontmatter Example:**
```yaml
---
description: "Brief, actionable description of rule purpose and scope"
globs: ["**/*.ts", "**/*.tsx", "src/**/*.js"]  # Array format for multiple patterns
alwaysApply: true  # Boolean for global application
---
```

**Required Section Order:**
```
1. Description - Clear purpose and scope
2. Rule - Numbered, specific requirements
3. Implementation - Technical enforcement details
4. Benefits - Organizational advantages
5. Examples - Correct/incorrect patterns
```

**Content Quality Checklist:**
```
Content Validation/
├── YAML frontmatter syntax validation ✅
├── Required sections present ✅
├── Language precision maintained ✅
├── Technical terms clearly defined ✅
├── Examples include both correct/incorrect patterns ✅
├── ASCII diagrams render properly ✅
└── Cross-references to related rules ✅
```
````

## File: .cursor/rules/cursor-rules-editing-standards.mdc
````
---
description: "Enforce structural consistency and metadata preservation when editing or modifying existing cursor rules to prevent corruption and maintain quality standards"
globs: ["**/*.mdc", ".cursor/rules/**"]
alwaysApply: true
---

# Cursor Rules Editing Standards

## Description

This rule enforces structural consistency and metadata preservation when editing or modifying existing cursor rules. It ensures that all modifications maintain MDC format compliance, preserve YAML frontmatter integrity, and uphold content quality standards established during rule creation. For initial rule creation standards, see [cursor-rules-creation-standards.mdc](cursor-rules-creation-standards.mdc).

## Rule

Preserve structure when editing cursor rules:

1. **Preserve YAML**: Never remove `description`, `globs`, `alwaysApply` fields
2. **Maintain Sections**: Keep Description → Rule → Implementation → Benefits → Examples order
3. **Validate Changes**: Check YAML syntax and markdown formatting before saving
4. **Verify Links**: Ensure cross-references to other rules remain functional
5. **Test Globs**: Confirm glob patterns still target intended files

## Implementation

**Cursor IDE Integration:**
- Global application (`alwaysApply: true`) ensures continuous enforcement during all cursor rule editing operations
- Real-time validation prevents structural corruption during modification
- Contextual warnings when required sections are removed or modified
- Automatic syntax checking for YAML frontmatter and markdown content

**AI Behavior Guidance:**
- Enforces preservation of established rule structure during all modification tasks
- Prevents accidental removal of metadata or required content sections
- Validates that edits maintain consistency with established cursor rule standards
- Ensures modifications enhance rather than degrade rule quality and effectiveness

**Technical Enforcement:**
- Pre-save validation hooks that check structural integrity
- YAML frontmatter protection against accidental deletion or corruption
- Cross-reference validation to prevent broken links between rules
- Content quality checks that apply creation standards to modifications

## Benefits

1. **Structural Integrity**: Prevents corruption of cursor rule structure during editing operations
2. **Metadata Protection**: Safeguards critical YAML frontmatter from accidental removal or damage
3. **Quality Consistency**: Ensures modifications maintain the same high standards as initial creation
4. **Cross-Reference Stability**: Preserves links and relationships between related cursor rules
5. **Change Validation**: Provides systematic verification that edits improve rather than degrade rule effectiveness
6. **Audit Compliance**: Maintains proper documentation and tracking of all rule modifications

## Examples

### ✅ Correct Editing Approach

**Proper Modification Workflow:**

```
BEFORE EDITING:
- Verify YAML frontmatter intact
- Confirm all sections present  
- Check cross-reference links

DURING EDITING:
- Preserve required YAML fields
- Maintain section structure
- Keep cross-references functional

AFTER EDITING:
- Validate YAML syntax
- Verify section completeness
- Test cross-reference links
```

### ❌ Incorrect Editing Patterns

**Destructive Modification Examples:**

```markdown
# ❌ METADATA CORRUPTION:
# Before:
---
description: "Enforce coding standards"
globs: ["**/*.ts"]
alwaysApply: true
---

# After (WRONG):
description: "Updated standards"  # ❌ Missing YAML delimiters
globs: **/*.ts  # ❌ Invalid YAML syntax
# ❌ Missing alwaysApply field

# ❌ STRUCTURAL DAMAGE:
# Original sections: Description, Rule, Implementation, Benefits, Examples
# Modified (WRONG): Description, Rule, Benefits  # ❌ Missing Implementation and Examples

# ❌ CONTENT DEGRADATION:
# Original: "Execute systematic validation with specific criteria"
# Modified (WRONG): "Do validation stuff"  # ❌ Vague language introduced

# ❌ BROKEN CROSS-REFERENCES:
# Original: [cursor-rules-creation-standards.mdc](cursor-rules-creation-standards.mdc)
# Modified (WRONG): [creation standards](creation-standards.mdc)  # ❌ Broken link
```

### 🔧 Editing Validation Checklist

**Pre-Modification Verification:**
```
Editing Preparation/
├── Backup current rule version ✅
├── Identify sections requiring modification ✅
├── Plan changes without structural impact ✅
├── Verify cross-reference dependencies ✅
└── Prepare validation criteria for changes ✅
```

**During-Modification Enforcement:**
```
Active Editing Validation/
├── YAML frontmatter syntax preserved ✅
├── All required sections maintained ✅
├── Cross-references remain functional ✅
├── Content quality standards applied ✅
├── Technical precision maintained ✅
└── ASCII diagrams properly formatted ✅
```

**Post-Modification Validation:**
```
Change Verification/
├── YAML frontmatter validates successfully ✅
├── Markdown formatting compliance confirmed ✅
├── All cross-references tested and functional ✅
├── Content completeness verified ✅
├── Rule functionality improved (not degraded) ✅
├── Integration with other rules validated ✅
└── Change documentation completed ✅
```

**Critical Editing Anti-Patterns to Avoid:**
```
Prohibited Editing Actions/
├── Removing YAML frontmatter delimiters (---) ❌
├── Deleting required frontmatter fields ❌
├── Removing mandatory content sections ❌
├── Breaking cross-reference links ❌
├── Introducing vague or imprecise language ❌
├── Corrupting ASCII diagrams or code examples ❌
└── Saving without validation checks ❌
```
````

## File: .cursor/rules/cursor-rules-location.mdc
````
---
description: "Enforce consistent file location, naming conventions, and organizational structure for cursor rules within .cursor/rules directory"
globs: ["**/*.mdc", ".cursor/rules/**"]
alwaysApply: true
---

# Cursor Rules Location Management

## Description

Enforce consistent location and organization of all cursor rules within the `.cursor/rules` directory. This rule ensures systematic file management, proper naming conventions, and centralized rule governance for optimal cursor IDE integration and team collaboration. For content quality and MDC format standards, see [cursor-rules-creation-standards.mdc](cursor-rules-creation-standards.mdc).

## Rule

Execute this mandatory protocol for all cursor rule file organization and management:

1. **Directory Structure Enforcement**: Create all cursor rules exclusively in `.cursor/rules/` directory
2. **File Naming Standards**: Use kebab-case naming convention: `[rule-name].mdc`
3. **File Extension Compliance**: Apply `.mdc` extension to all cursor rule files
4. **Individual File Separation**: Maintain one rule per file for modular management
5. **Version Control Integration**: Ensure all rules are tracked and documented in repository
6. **Access Control**: Validate file permissions and accessibility
7. **Naming Descriptiveness**: Use clear, purpose-indicating rule names that reflect functionality
8. **Path Validation**: Ensure all file paths are accessible and follow project conventions

## Implementation

**Cursor IDE Integration:**
- Global application (`alwaysApply: true`) ensures continuous enforcement across all file operations
- File pattern matching targets both `.mdc` files and `.cursor/rules/` directory structure
- Real-time validation prevents rule creation outside designated directory
- Automatic suggestions for proper naming conventions and file placement

**Technical Enforcement:**
- Directory structure validation before rule creation
- File extension verification during save operations
- Naming convention compliance checking
- File system accessibility validation
- Path verification and correction suggestions

**Automated Workflow Integration:**
- IDE prompts for proper rule location during creation
- Template generation with pre-populated directory paths
- File organization suggestions based on rule purpose
- Conflict resolution for duplicate rule names
- Migration assistance for misplaced rule files

## Benefits

### Organization & Maintainability
1. **Centralized Management**: Single directory location simplifies rule discovery and maintenance
2. **Predictable Structure**: Consistent organization reduces cognitive load for team members
3. **Scalable Architecture**: Systematic approach supports growing rule repositories
4. **Version Control Clarity**: Clear file organization improves change tracking and reviews

### Team Collaboration
5. **Standardized Workflow**: Uniform rule file management process across all team members
6. **Enhanced Discoverability**: Centralized location enables quick rule identification
7. **Conflict Prevention**: Systematic naming prevents duplicate or conflicting rule files
8. **Knowledge Transfer**: New team members can quickly understand rule file organization

### Technical Excellence
9. **IDE Optimization**: Proper file structure maximizes cursor IDE performance and features
10. **Integration Readiness**: Standardized file organization supports automated tooling and scripts
11. **Error Reduction**: Consistent file structure minimizes configuration and deployment errors
12. **Future-Proofing**: Systematic file organization accommodates rule system evolution

## Examples

### ✅ Correct File Organization

**Proper Directory Structure:**
```
project-root/
├── .cursor/
│   └── rules/                    ✅ Centralized rules directory
│       ├── api-validation.mdc    ✅ Kebab-case naming
│       ├── code-formatting.mdc   ✅ Descriptive purpose
│       ├── security-headers.mdc  ✅ Clear functionality
│       ├── typescript-rules.mdc  ✅ Technology-specific
│       └── documentation.mdc     ✅ Consistent extension
└── [other project files]
```

**File Naming Conventions:**
```
✅ CORRECT NAMING:
├── typescript-standards.mdc       # Technology + purpose
├── security-authentication.mdc   # Domain + function
├── documentation-metadata.mdc     # Type + specification
└── build-optimization.mdc        # Process + goal

✅ DESCRIPTIVE PATTERNS:
├── [technology]-[purpose].mdc     # e.g., react-hooks.mdc
├── [domain]-[function].mdc        # e.g., api-versioning.mdc
├── [process]-[goal].mdc           # e.g., test-coverage.mdc
└── [feature]-[requirement].mdc    # e.g., auth-tokens.mdc
```

### ❌ Incorrect File Organization

**Problematic Directory Structures:**
```
❌ SCATTERED PLACEMENT:
project-root/
├── .cursor/
│   ├── rules/
│   │   └── some-rule.mdc
│   └── other-config/
│       └── another-rule.mdc      # ❌ Wrong location
├── docs/
│   └── cursor-rules.mdc          # ❌ Outside .cursor/
└── rules/
    └── legacy-rule.mdc           # ❌ Wrong directory

❌ NAMING VIOLATIONS:
├── .cursor/rules/
│   ├── MyRule.mdc                # ❌ PascalCase instead of kebab-case
│   ├── api_validation.mdc        # ❌ Snake_case instead of kebab-case
│   ├── rule1.mdc                 # ❌ Non-descriptive naming
│   ├── temp.mdc                  # ❌ Temporary/unclear purpose
│   └── SECURITY.MDC              # ❌ All caps, wrong extension case
```

### 🔧 File Organization Patterns

**Migration Commands:**
```bash
# ✅ Correct migration process
mv cursor-rule.mdc .cursor/rules/api-standards.mdc
mv legacy-rules/*.mdc .cursor/rules/
find . -name "*.mdc" -not -path "./.cursor/rules/*" -exec mv {} .cursor/rules/ \;
```

**Validation Commands:**
```bash
# ✅ Verify rule location compliance
find .cursor/rules/ -name "*.mdc" -type f | wc -l    # Count rules
ls -la .cursor/rules/                                # Verify structure
find . -name "*.mdc" -not -path "./.cursor/rules/*"  # Find misplaced rules
```

**Directory Structure Validation:**
```
✅ COMPLIANT STRUCTURE:
.cursor/
└── rules/              # Single, centralized location
    ├── *.mdc          # All rules in designated directory
    └── [subdirs]/     # Optional categorization (if needed)
        └── *.mdc      # Organized by domain/technology

❌ NON-COMPLIANT PATTERNS:
├── .cursor/custom/rules/     # Extra nesting
├── cursor-rules/             # Wrong directory name
├── .vscode/rules/            # Wrong IDE directory
└── docs/cursor/              # Mixed with documentation
```

**File Organization Checklist:**
```
File Organization Validation/
├── All .mdc files in .cursor/rules/ directory ✅
├── Kebab-case naming convention followed ✅
├── Descriptive, purpose-indicating file names ✅
├── No duplicate or conflicting rule files ✅
├── Proper file extensions (.mdc) ✅
├── Files accessible and readable ✅
└── Cross-references between related rules ✅
```
````

## File: .cursor/rules/cursor-task-breakdown-enforcement.mdc
````
---
description: "Enforce systematic task breakdown using TodoLists for multi-step actions to prevent errors and improve development workflow quality"
globs: ""
alwaysApply: true
---

# Task Breakdown Enforcement Rule

## Description

This rule ensures Cursor systematically breaks down complex tasks into manageable components using TodoLists or integrated TaskLists. When any action requires multiple steps or can be divided into subtasks, Cursor must create and maintain structured task lists to prevent errors, ensure completeness, and improve development workflow quality.

## Rule

1. **Multi-Step Detection**: Identify tasks requiring multiple sequential actions or those divisible into logical components (e.g., feature implementation, debugging, refactoring, file modifications across multiple locations).

2. **Mandatory TodoList Creation**: For tasks with 2+ steps, immediately create a structured TodoList using available task management tools before proceeding with implementation.

3. **Task Granularity**: Break tasks into specific, actionable items with clear completion criteria. Each item must be independently verifiable and executable.

4. **Progress Tracking**: Mark completed items immediately upon completion. Maintain visual progress indicators throughout task execution.

5. **Error Prevention Protocol**: Before marking any task complete, verify all dependencies and prerequisites are satisfied. Include validation steps in task lists.

6. **Documentation Integration**: Embed TodoLists directly in relevant code comments, documentation, or use integrated task management systems to maintain context.

## Implementation

Cursor IDE will:
- Automatically detect complex tasks during analysis phase
- Prompt for TodoList creation when multi-step operations are identified
- Provide structured templates for common task breakdown patterns
- Integrate with existing task management tools and workflows
- Validate task completion before proceeding to dependent operations
- Maintain task history for workflow improvement and pattern recognition

## Examples

### ✅ Correct: Systematic Task Breakdown

```
Task: Implement user authentication feature

TodoList:
☐ 1. Design authentication data models
☐ 2. Create user registration endpoint
☐ 3. Implement login validation logic
☐ 4. Add password hashing utilities
☐ 5. Create JWT token management
☐ 6. Build authentication middleware
☐ 7. Add route protection mechanisms
☐ 8. Write comprehensive unit tests
☐ 9. Update API documentation
☐ 10. Validate security compliance
```

### ✅ Correct: Debugging with Structured Approach

```
Issue: API endpoint returning 500 errors

Diagnostic TodoList:
☐ 1. Reproduce error consistently
☐ 2. Check server logs for stack traces
☐ 3. Validate input parameters
☐ 4. Test database connection
☐ 5. Verify environment variables
☐ 6. Review recent code changes
☐ 7. Implement fix
☐ 8. Test fix thoroughly
☐ 9. Deploy to staging
☐ 10. Monitor production logs
```

### ❌ Incorrect: Ad-Hoc Implementation

```
Task: Fix the authentication bug

Action: Jump directly into modifying authentication.js without:
- Understanding the specific issue
- Creating a systematic approach
- Planning verification steps
- Considering dependencies or side effects
```

### ❌ Incorrect: Incomplete Task Breakdown

```
TodoList:
☐ Fix auth
☐ Test it
☐ Deploy

Problems:
- Tasks too vague and non-actionable
- Missing critical steps
- No validation criteria
- Insufficient granularity for error prevention
```

### Visual Task Organization

```
Project Structure with Task Management:

src/
├── components/
│   ├── auth/           ← TodoList: Authentication components
│   │   ☐ LoginForm.tsx
│   │   ☐ RegisterForm.tsx
│   │   ☐ AuthGuard.tsx
│   └── common/         ← TodoList: Shared components
├── services/
│   └── api/            ← TodoList: API integration
│       ☐ authService.ts
│       ☐ userService.ts
└── tests/              ← TodoList: Test coverage
    ☐ auth.test.ts
    ☐ integration.test.ts
```
````

## File: .cursor/rules/docs-markdown-formatting.mdc
````
---
description: "Enforce proper markdown formatting standards including code block language specification and CLAUDE.md compliance guidelines"
globs: ["*.md", "*.markdown"]
alwaysApply: true
---

# Documentation Markdown Formatting Standards

## Description

This cursor rule enforces comprehensive markdown formatting standards to ensure consistent, high-quality documentation across all markdown files. The rule combines industry-standard markdownlint best practices with specific CLAUDE.md compliance guidelines to create maintainable, readable, and properly structured documentation.

**Primary Focus Areas:**
- Code block language specification requirements
- Header hierarchy and formatting standards
- Spacing and indentation consistency
- Integration with existing CLAUDE.md style guidelines

## Rule

**MANDATORY FORMATTING REQUIREMENTS:**

1. **Code Block Language Specification**
   - Replace generic ``` with ```markdown or specific language identifier
   - Always specify language for fenced code blocks: ```javascript, ```bash, ```python, etc.
   - Use ```markdown for markdown content examples
   - Use ```text for plain text examples

2. **Header Hierarchy Standards**
   - Use proper markdown headers (#, ##, ###) following logical semantic hierarchy
   - Headers MUST start at line beginning with no leading whitespace
   - Follow consistent header level progression (don't skip levels)

3. **Header Formatting Compliance**
   - NEVER use **bold** or *italic* formatting for headers
   - Headers must use hash symbols (#) not underline formatting
   - Single space required between hash symbols and header text

4. **Spacing Requirements**
   - Include blank line between headers and content
   - Include blank line before code blocks
   - Include blank line after code blocks (except when ending file)
   - No multiple consecutive blank lines (maximum one blank line)

5. **Code Block Indentation**
   - Ensure correct indentation when code blocks are nested in lists
   - Maintain consistent indentation levels
   - Use spaces for indentation, not tabs

6. **List and Code Block Integration**
   - Proper spacing around fenced code blocks within lists
   - Maintain list context when including code examples
   - Preserve list item continuation for multi-paragraph items

## Implementation

**Cursor IDE Integration:**

- Automatically suggests language identifiers when typing ```
- Highlights violations of header formatting standards
- Provides real-time feedback on spacing requirements
- Auto-corrects common formatting inconsistencies
- Integrates with markdown preview for immediate validation

## Examples

### ✅ Correct Code Block Formatting

```markdown
# Proper Header

This is content with proper spacing.

```javascript
function example() {
  console.log("Language specified correctly");
}
```

More content here.

## Subheader

- List item

  ```bash
  echo "Properly indented in list"
  ```

- Another item
```

### ❌ Incorrect Code Block Formatting

```markdown
#No space after hash

**This should be a header**

Content without spacing.
```
function badExample() {
  console.log("No language specified");
}
```
More content immediately after.

###Skipped header level

- List item
```bash
echo "Improper indentation"
```
```

### File Structure Requirements

```
project/
├── docs/
│   ├── README.md          ✅ Follows standards
│   ├── api-guide.md       ✅ Language-specified blocks
│   └── old-docs.md        ❌ Needs formatting update
├── .cursor/
│   └── rules/
│       └── docs-markdown-formatting.mdc
└── CLAUDE.md              ✅ Source of standards
```

### Common Violations and Fixes

**Generic Code Blocks:**
```markdown
❌ ```
   code without language
   ```

✅ ```text
   code with language specified
   ```
```

**Header Violations:**
```markdown
❌ **Important Section**
❌   # Indented Header
❌ ###Skipped Level

✅ # Important Section
✅ ## Proper Subsection
✅ ### Logical Progression
```

**Spacing Issues:**
```markdown
❌ # Header
Content immediately following

❌ Text before code
```python
code_without_spacing()
```

✅ # Header

Content with proper spacing

```python
code_with_proper_spacing()
```
```
````

## File: .cursor/rules/docs-markdown-metadata.mdc
````
---
description: "Enforce structured YAML frontmatter for all markdown documentation files in docs/ directory to ensure consistency, findability, and LLM-friendly content organization"
globs: ["docs/**/*.md"]
alwaysApply: true
---

# Documentation Markdown Metadata Standards

## Description

This rule enforces comprehensive YAML frontmatter metadata for all markdown files within the `docs/` directory, including specifications, templates, guides, and reference materials. The standardized metadata structure enhances document discoverability, enables automated processing, and provides essential context for both human readers and AI systems.

## Rule

All markdown files in the `docs/` directory **MUST** include properly formatted YAML frontmatter with the following required fields:

1. **title**: Clear, descriptive document title (string, required)
2. **description**: Concise summary of document content and purpose (string, required)  
3. **version**: Semantic version number for document tracking (string, required)
4. **status**: Document maturity level (string, required) - valid values: `draft`, `review`, `stable`, `deprecated`
5. **category**: Document classification for organization (string, required) - examples: `overview`, `guide`, `reference`, `spec`, `template`
6. **updated**: ISO 8601 date of last modification (string, required) - format: `YYYY-MM-DD`
7. **authors**: List of document contributors (array, required) - minimum one author
8. **related**: Cross-references to related documentation (array, optional) - relative paths to other docs

### Frontmatter Structure Requirements

- YAML frontmatter must be enclosed by triple dashes (`---`) at the beginning and end
- Must be the first content in the file (no preceding content allowed)
- Use spaces for indentation (tabs not permitted)
- All string values containing special characters must be quoted
- Arrays must use YAML list format with hyphens

### File Path Validation

- All paths in the `related` field must use relative references from the docs/ directory
- Cross-directory references must use proper relative path syntax (e.g., `../category/file.md`)
- File extensions must be included in all references

## Implementation

**Cursor IDE Integration:**
- File pattern matching targets all markdown files within `docs/` directory structure
- Global application (`alwaysApply: true`) ensures continuous enforcement across documentation
- Real-time validation prevents incomplete metadata from being saved
- Contextual suggestions based on document type and existing metadata patterns

**Technical Enforcement:**
1. **File Creation**: New markdown files in `docs/` trigger metadata template insertion
2. **File Editing**: Missing or malformed frontmatter generates warnings
3. **Content Review**: Incomplete metadata fields highlighted during editing
4. **Reference Validation**: Broken or invalid `related` file paths flagged

**Automated Workflow Integration:**
- Template generation for required frontmatter fields
- Auto-population of `updated` field with current date
- Validation of `status` and `category` enum values
- Relative path completion for `related` field references

## Benefits

### Content Organization
- **Systematic Classification**: Consistent categorization enables efficient content discovery
- **Version Tracking**: Document versioning supports change management and rollback capabilities
- **Status Awareness**: Clear maturity indicators guide appropriate document usage

### Discoverability Enhancement  
- **Search Optimization**: Structured metadata improves search accuracy and filtering
- **Content Relationships**: Cross-references create navigable documentation networks
- **LLM Context**: Rich metadata provides essential context for AI-powered documentation tools

### Maintenance Efficiency
- **Update Tracking**: Timestamp metadata enables freshness monitoring and maintenance scheduling
- **Responsibility Clarity**: Author attribution establishes ownership and contact points
- **Automation Support**: Standardized structure enables automated validation and processing

## Examples

### ✅ Correct Implementation

```markdown
---
title: "API Authentication Guide"
description: "Comprehensive guide for implementing secure API authentication with JWT tokens and OAuth2 flows"
version: "2.1"
status: "stable"
category: "guide"
updated: "2025-01-09"
authors: ["security-team", "api-team"]
related:
  - ../reference/api-endpoints.md
  - security-best-practices.md
  - ../specs/oauth2-implementation.md
---

# API Authentication Guide

[Document content follows...]
```

### ✅ Minimal Valid Example

```markdown
---
title: "Quick Start Checklist"
description: "Essential steps for project initialization"
version: "1.0"
status: "draft"
category: "template"
updated: "2025-01-09"
authors: ["system"]
related: []
---

# Quick Start Checklist

[Document content follows...]
```

### ❌ Incorrect Implementations

**Missing Required Fields:**
```markdown
---
title: "Incomplete Guide"
description: "Missing version and other required fields"
updated: "2025-01-09"
---
```

**Invalid Status Value:**
```markdown
---
title: "Bad Status Example"
description: "Uses invalid status value"
version: "1.0"
status: "incomplete"  # Invalid - must be draft, review, stable, or deprecated
category: "guide"
updated: "2025-01-09"
authors: ["author"]
---
```

**Malformed Related References:**
```markdown
---
title: "Bad References"
description: "Invalid path references"
version: "1.0"
status: "stable"
category: "guide"
updated: "2025-01-09"
authors: ["author"]
related:
  - /absolute/path/not-allowed.md  # Invalid - must use relative paths
  - broken-reference  # Invalid - missing file extension
---
```

### Directory Structure Visualization

```
docs/
├── ai/
│   ├── 00-overview/
│   │   └── this_repo.md          ✅ Requires frontmatter
│   └── 02-templates/
│       └── this_repo.md          ✅ Requires frontmatter
├── specs/
│   └── api-specification.md      ✅ Requires frontmatter
└── user/
    ├── 00-guides/
    │   ├── configuration_reference.md  ✅ Requires frontmatter
    │   └── troubleshooting.md          ✅ Requires frontmatter
    └── faq.md                     ✅ Requires frontmatter
```

**Non-Documentation Files (Rule Does Not Apply):**
```
README.md                          ❌ Outside docs/ - no frontmatter required
CONTRIBUTING.md                    ❌ Outside docs/ - no frontmatter required
src/components/README.md           ❌ Outside docs/ - no frontmatter required
```
````

## File: .cursor/rules/dotfiles-management.mdc
````
---
description: "Detect repository stack and update gitignore patterns accordingly"
globs: [".gitignore"]
alwaysApply: true
---

# Stack-Aware Gitignore Management

## Description

Automatically update `.gitignore` patterns based on detected repository technology stack. Add stack-specific exclusions only when corresponding technology files are present.

## Rule

Execute stack detection and update `.gitignore` patterns:

1. **Detect Stack**: Scan for `package.json`, `go.mod`, `Cargo.toml`, `requirements.txt`, `Dockerfile`
2. **Add Patterns**: Include technology-specific patterns only for detected technologies
3. **Preserve Security**: Always include universal security exclusions (`.env*`, `*.key`, `*.pem`)
4. **Avoid Bloat**: Do not add patterns for technologies not present in repository

### Stack Detection Commands

```bash
# Node.js detection
[ -f package.json ] && add_patterns="node_modules/ dist/ .npm npm-debug.log*"

# Python detection
[ -f requirements.txt ] && add_patterns="__pycache__/ *.pyc venv/ .pytest_cache/"

# Go detection
[ -f go.mod ] && add_patterns="vendor/ *.exe *.test go.work"

# Rust detection
[ -f Cargo.toml ] && add_patterns="target/ Cargo.lock"

# Docker detection
[ -f Dockerfile ] && add_patterns="docker-compose.override.yml"
```

## Implementation

**Cursor IDE Integration:**
- Triggers on technology file creation/modification
- Suggests `.gitignore` updates based on detected stack
- Prevents duplicate pattern addition

**Technical Enforcement:**
- Pattern validation before addition
- Duplicate pattern detection
- Alphabetical pattern organization

## Benefits

1. **Minimal Patterns**: Only includes patterns for technologies actually used
2. **Automatic Updates**: Detects new technologies and suggests exclusions
3. **Security First**: Always includes universal security patterns
4. **No Redundancy**: Prevents duplicate or irrelevant patterns

## Examples

### ✅ Correct Stack Detection

**Node.js Project:**
```bash
# Detected: package.json exists
# Add to .gitignore:
node_modules/
dist/
.npm
npm-debug.log*
```

**Go Project:**
```bash
# Detected: go.mod exists
# Add to .gitignore:
vendor/
*.exe
*.test
go.work
```

### ❌ Incorrect Pattern Addition

```bash
# ❌ Adding Python patterns to Node.js-only project
__pycache__/  # Technology not detected

# ❌ Adding all patterns regardless of stack
node_modules/  # In Go-only project
target/        # In Node.js-only project
```
````

## File: .cursor/rules/justfile-main-task-executor.mdc
````
---
description: "Enforce using the Justfile as the primary task executor for all development operations"
globs: ["*"]
alwaysApply: true
---

# Justfile as Main Task Executor

## Description

This rule enforces the use of the Justfile as the central command runner and primary task executor for all development operations. Rather than running tools and commands directly, developers should define and execute tasks through the `just` command runner, ensuring consistency, discoverability, and maintainability across the development workflow.

## Rule

1. **Primary Task Execution**: Use `just [recipe]` commands instead of direct tool invocations (e.g., `just test` instead of `npm test`, `just build` instead of `make build`)

2. **Recipe Discovery**: Always run `just` or `just --list` to discover available tasks before executing commands

3. **New Task Definition**: When introducing new development operations, define them as recipes in the Justfile using:
   - Clear, descriptive recipe names following kebab-case convention
   - Proper shell configuration (`set shell := ["bash", "-uce"]` for error handling)
   - Environment variable loading (`set dotenv-load`) when needed
   - Appropriate dependencies between recipes

4. **Task Standardization**: Ensure all common development tasks are available through just recipes:
   - `just dev` for development server
   - `just test` for running tests  
   - `just build` for building the project
   - `just clean` for cleanup operations
   - `just lint` for code linting
   - `just format` for code formatting
   - `just deploy` for deployment operations

5. **Documentation Integration**: Include recipe descriptions using comments above each recipe and leverage `just --list` for task discovery

6. **Path References**: Use relative paths and project variables in recipes (e.g., `{{BUILD_DIR}}`, `{{PROJECT_NAME}}`)

7. **Error Handling**: Implement proper error handling in recipes using shell flags and conditional logic

## Implementation

Cursor IDE enforces this rule by:

- **Command Suggestion**: When detecting direct tool commands (npm, yarn, make, cargo, etc.), suggest the corresponding `just` recipe equivalent
- **Recipe Validation**: Ensure new recipes follow proper Just syntax and conventions
- **Dependency Checking**: Verify recipe dependencies are correctly defined
- **Documentation Compliance**: Require recipe descriptions and maintain `just --list` discoverability
- **Path Validation**: Ensure all file and directory references in recipes use relative paths and exist in the project

## Benefits

- **Unified Interface**: Single entry point (`just`) for all development tasks
- **Self-Documenting**: `just --list` provides discoverable task documentation
- **Cross-Platform Consistency**: Just handles shell differences across operating systems
- **Dependency Management**: Recipe dependencies ensure tasks run in correct order
- **Environment Isolation**: Proper environment variable loading and shell configuration
- **Onboarding Efficiency**: New team members can discover all available tasks easily
- **CI/CD Integration**: Consistent task interface between local development and CI/CD pipelines

## Examples

### ✅ Correct: Using Just as Main Task Executor

```bash
# Discover available tasks
just
just --list

# Execute development tasks
just dev
just test
just build
just clean

# Execute tasks with parameters
just test unit
just deploy production
```

### ✅ Correct: Well-Structured Justfile Recipe

```just
# 🚀 Start development server with hot reload
dev:
    @echo "🚀 Starting development server..."
    @npm run dev || yarn dev || bun dev || deno task dev

# 🧪 Run test suite
test TEST="":
    @echo "🧪 Running tests{{if TEST != "" { " for " + TEST } else { "" }}}..."
    @if [ "{{TEST}}" != "" ]; then \
        npm test -- {{TEST}}; \
    else \
        npm test; \
    fi

# 🏗️ Build project for production
build: clean
    @echo "🏗️ Building for production..."
    @mkdir -p {{BUILD_DIR}}
    @npm run build
```

### ❌ Incorrect: Direct Tool Invocation

```bash
# Don't run tools directly
npm start
make build
cargo test
python -m pytest

# Don't use complex shell scripts without Just recipes
./scripts/deploy.sh production --force
bash -c "cd frontend && npm install && npm run build"
```

### ❌ Incorrect: Poorly Structured Justfile Recipe

```just
# Missing description and error handling
stuff:
    some-command
    another-command

# Hard-coded paths and no dependency management
bad:
    cd /absolute/path/to/project
    rm -rf /tmp/build
    make install
```

### Directory Structure Visualization

```
project/
├── justfile                 # ✅ Central task definitions
├── .env                     # ✅ Environment variables (loaded by Just)
├── scripts/
│   └── hooks/
│       └── pre-commit-init.sh  # ✅ Referenced by Just recipes
└── docs/
    └── tasks.md            # ✅ Optional: Extended task documentation

# Task Execution Flow:
$ just                      # ✅ Lists all available tasks
$ just dev                  # ✅ Runs development server via Just
$ just test unit           # ✅ Runs specific tests via Just  
$ just build && just deploy # ✅ Chains tasks via Just
```
````

## File: .cursor/rules/shell-script-compliance.mdc
````
---
description: "Enforce shell script compliance with project's ShellCheck configuration and Google Shell Style Guide standards"
globs: ["**/*.sh", "**/*.bash", "**/scripts/**/*"]
alwaysApply: true
---

# Shell Script Compliance Rule

## Description

This rule enforces comprehensive shell script compliance by combining the project's ShellCheck configuration (`.shellcheckrc`) with Google Shell Style Guide standards. All shell scripts must pass ShellCheck validation and adhere to Google's formatting, naming, and coding conventions to ensure maintainability, security, and reliability.

## Rule

### 1. ShellCheck Configuration Compliance (MANDATORY)

1.1. **All shell scripts MUST pass ShellCheck validation** using the project's `.shellcheckrc` configuration:
   - Shell dialect: `bash` (as specified in `.shellcheckrc`)
   - Disabled warnings: SC2155, SC2250 (per project configuration)
   - Enabled checks: require-variable-braces, quote-safe-variables, check-unassigned-uppercase, deprecate-which
   - Severity level: warning minimum

1.2. **External sources handling** must follow project's `external-sources=true` setting

### 2. Google Shell Style Guide Compliance (MANDATORY)

2.1. **Shebang and File Header**:
   - Use `#!/bin/bash` for all executable shell scripts
   - Include descriptive file header comment explaining script purpose

2.2. **Function Definition and Structure**:
   - Use `function name() {` format (Google style with optional 'function' keyword)
   - Declare local variables with `local` keyword in functions
   - Use `readonly` for constants declared at file top

2.3. **Variable Handling and Quoting**:
   - Always quote variables: `"${variable}"` (required by shellcheck enable=require-variable-braces)
   - Use braces for all variable references: `${var}` not `$var`
   - Quote command substitutions: `"$(command)"`
   - Use arrays for lists: `declare -a FLAGS=(--foo --bar)`

2.4. **Error Handling and Exit Codes**:
   - Use `set -euo pipefail` for strict error handling
   - Check command return values explicitly: `if ! command; then`
   - Use `|| return 1` or proper error handling for function failures

2.5. **Control Flow and Formatting**:
   - Use `[[ ... ]]` instead of `[ ... ]` for conditionals
   - Use `(( ... ))` for arithmetic operations
   - Format loops: `for var in "${array[@]}"; do`
   - Use 2-space indentation (never tabs)

2.6. **Command and Tool Usage**:
   - Prefer bash built-ins over external commands
   - Use `command -v` instead of `which` (enforced by shellcheck enable=deprecate-which)
   - Avoid `eval` and other dangerous constructs

### 3. Project-Specific Requirements

3.1. **Script Location**: All shell scripts must be organized in the `scripts/` directory structure
3.2. **Configuration Reference**: Scripts must be compatible with `.shellcheckrc` settings
3.3. **Documentation**: Include function header comments for complex functions

## Implementation

Cursor IDE will enforce this rule by:

1. **Real-time ShellCheck Integration**:
   - Run shellcheck with project's `.shellcheckrc` configuration on save
   - Display inline errors and warnings for shellcheck violations
   - Highlight disabled rules (SC2155, SC2250) when encountered

2. **Style Guide Validation**:
   - Flag incorrect shebang lines (not `#!/bin/bash`)
   - Detect unquoted variables and suggest `"${var}"` format
   - Warn about missing `local` declarations in functions
   - Identify missing error handling (`set -euo pipefail`)

3. **Auto-completion and Suggestions**:
   - Suggest proper variable expansion syntax
   - Recommend bash built-ins over external commands
   - Provide templates for Google-style function headers

4. **File Organization**:
   - Monitor files matching globs: `**/*.sh`, `**/*.bash`, `**/scripts/**/*`
   - Validate script placement within `scripts/` directory structure

## Benefits

### Code Quality and Reliability
- **Prevents Common Errors**: ShellCheck catches 90% of bash scripting mistakes before runtime
- **Consistent Standards**: Google Shell Style Guide ensures uniform code across team
- **Production-Ready**: Enforces error handling and defensive programming practices

### Maintainability and Collaboration
- **Readable Code**: Consistent formatting and naming conventions improve code comprehension
- **Documented Functions**: Required function headers enable better code understanding
- **Standard Practices**: Team members can quickly understand and modify any script

### Security and Performance
- **Secure Defaults**: Proper quoting prevents injection vulnerabilities
- **Optimized Performance**: Preference for bash built-ins over external commands
- **Error Prevention**: Strict error handling (`set -euo pipefail`) prevents silent failures

### Development Workflow
- **IDE Integration**: Real-time feedback during development
- **Automated Validation**: Consistent checking without manual intervention  
- **Quick Fixes**: Cursor IDE can suggest and apply corrections automatically

## Examples

### ✅ Correct Implementation

```bash
#!/bin/bash
#
# Git hook management utility following Google Shell Style Guide
# Compliant with project's .shellcheckrc configuration

# Strict error handling
set -euo pipefail

# Constants (readonly as per Google style)
readonly SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
readonly CONFIG_FILE="${SCRIPT_DIR}/.shellcheckrc"

#######################################
# Install pre-commit hooks with validation
# Globals:
#   CONFIG_FILE
# Arguments:
#   None
# Returns:
#   0 if successful, 1 on error
#######################################
function install_hooks() {
    local hook_types=("pre-commit" "pre-push")
    
    for hook_type in "${hook_types[@]}"; do
        if ! install_single_hook "${hook_type}"; then
            echo "Failed to install ${hook_type} hook" >&2
            return 1
        fi
    done
    
    echo "All hooks installed successfully"
}

# Main execution (Google style)
function main() {
    local command="${1:-}"
    
    case "${command}" in
        install)
            install_hooks
            ;;
        *)
            echo "Usage: $0 {install}" >&2
            exit 1
            ;;
    esac
}

# Execute main function if script is run directly
if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
    main "$@"
fi
```

### ❌ Incorrect Implementation

```bash
#!/bin/sh
# Wrong shebang - should be #!/bin/bash

# Missing error handling - no set -euo pipefail
# Missing file header comment

SCRIPT_DIR=`dirname $0`  # Wrong: backticks, unquoted variables
config_file=$SCRIPT_DIR/.shellcheckrc  # Wrong: no braces, no quotes

install_hooks() {  # Wrong: missing 'function' or () format
    # Missing local declaration
    hook_types="pre-commit pre-push"  # Wrong: string instead of array
    
    for hook_type in $hook_types; do  # Wrong: unquoted expansion
        install_single_hook $hook_type  # Wrong: unquoted variable
        if [ $? -ne 0 ]; then  # Wrong: [ instead of [[, checking $?
            echo "Failed to install $hook_type hook"  # Wrong: unquoted
            return 1
        fi
    done
    
    echo "All hooks installed successfully"
}

# Wrong: direct execution without main function
command=$1
case $command in  # Wrong: unquoted variables
    install)
        install_hooks
        ;;
    *)
        echo "Usage: $0 {install}"
        exit 1
        ;;
esac
```

### Directory Structure Visualization

```
✅ Correct Structure:
repo_template_empty/
├── .shellcheckrc                 # Project shellcheck configuration
├── scripts/
│   ├── hooks/
│   │   └── pre-commit-init.sh   # Compliant script
│   └── setup/
│       └── install.sh           # Compliant script
└── .cursor/
    └── rules/
        └── shell-script-compliance.mdc

❌ Incorrect Structure:
repo_template_empty/
├── random_script.sh             # Scripts outside scripts/ directory
├── bin/
│   └── helper.bash             # Non-standard location
└── tools/
    └── utility.sh              # Scattered script locations
```

### ShellCheck Integration Examples

```bash
# ✅ Compliant with .shellcheckrc settings

# SC2155 disabled - this is allowed in project
readonly LOCAL_PATH="$(get_local_path)"

# Variable braces required (enabled in .shellcheckrc)
echo "Processing file: ${filename}"  # ✅ Correct
echo "Processing file: $filename"    # ❌ Missing braces

# Quote safe variables (enabled in .shellcheckrc)  
port_number=8080
echo "Server running on port ${port_number}"  # ✅ Quoted

# Deprecate which (enabled in .shellcheckrc)
if command -v git >/dev/null 2>&1; then    # ✅ Use command -v
    echo "Git is available"
fi

if which git >/dev/null 2>&1; then         # ❌ Don't use which
    echo "Git is available"
fi
```
````

## File: .github/ISSUE_TEMPLATE/bug_report.yml
````yaml
---
name: "🐛 Bug Report"
description: Report a bug or issue with the project
title: "[BUG] Brief description of the issue"
labels: [bug, needs-triage]
body:
  - type: markdown
    attributes:
      value: |
        Thank you for reporting a bug! Please fill out the sections below to help us understand and fix the issue.

  - type: textarea
    id: description
    attributes:
      label: 🐛 Bug Description
      description: Provide a clear and concise description of what the bug is.
      placeholder: "A clear description of what the bug is..."
    validations:
      required: true

  - type: textarea
    id: expected
    attributes:
      label: ✅ Expected Behavior
      description: What did you expect to happen?
      placeholder: "I expected..."
    validations:
      required: true

  - type: textarea
    id: actual
    attributes:
      label: ❌ Actual Behavior
      description: What actually happened? Include error messages, stack traces, and any relevant output.
      placeholder: "Instead, what happened was..."
    validations:
      required: true

  - type: textarea
    id: reproduction
    attributes:
      label: 🔄 Steps to Reproduce
      description: List the steps to reproduce the behavior. Be as specific as possible.
      placeholder: |
        1. Go to '...'
        2. Click on '...'
        3. Scroll down to '...'
        4. See error
    validations:
      required: true

  - type: textarea
    id: logs
    attributes:
      label: 📋 Error Logs
      description: Please copy and paste any relevant log output. This will be automatically formatted as code.
      render: shell
    validations:
      required: false

  - type: textarea
    id: minimal-reproduction
    attributes:
      label: 🔬 Minimal Reproduction
      description: Provide a minimal code example that reproduces the issue, or link to a repository.
      placeholder: |
        ```language
        // Minimal code to reproduce the issue
        ```
    validations:
      required: false

  - type: dropdown
    id: severity
    attributes:
      label: 🚨 Severity
      description: How severe is this bug?
      options:
        - "🔴 Critical - Complete feature breakage, security issue, or data loss"
        - "🟠 High - Major functionality broken, significant impact"
        - "🟡 Medium - Partial functionality broken, workaround available"
        - "🟢 Low - Minor issue, cosmetic problem, or edge case"
    validations:
      required: true

  - type: dropdown
    id: frequency
    attributes:
      label: 📊 Frequency
      description: How often does this bug occur?
      options:
        - "🔄 Always - Every time"
        - "🟠 Often - Most of the time"
        - "🟡 Sometimes - Occasionally"
        - "🟢 Rarely - Very specific conditions"
        - "❓ Unknown - Not sure about frequency"
    validations:
      required: true

  - type: input
    id: os
    attributes:
      label: 💻 Operating System
      description: What operating system are you using?
      placeholder: "e.g., macOS 14.0, Windows 11, Ubuntu 22.04"
    validations:
      required: true

  - type: input
    id: version
    attributes:
      label: 📦 Project Version
      description: What version of the project are you using?
      placeholder: "e.g., 1.2.3, latest, main branch"
    validations:
      required: true

  - type: input
    id: browser
    attributes:
      label: 🌐 Browser (if applicable)
      description: If this is a web-related issue, what browser and version?
      placeholder: "e.g., Chrome 120.0, Firefox 119.0, Safari 17.0"
    validations:
      required: false

  - type: input
    id: environment
    attributes:
      label: 🔧 Runtime Environment
      description: What runtime/environment are you using?
      placeholder: "e.g., Node.js 20.0, Python 3.11, Go 1.21, Deno 1.38"
    validations:
      required: false

  - type: textarea
    id: additional-context
    attributes:
      label: 📋 Additional Context
      description: Add any other context about the problem here, including screenshots if helpful.
      placeholder: "Any additional information that might help..."
    validations:
      required: false

  - type: checkboxes
    id: acknowledgements
    attributes:
      label: ✅ Acknowledgements
      options:
        - label: I have searched existing issues to make sure this bug hasn't been reported before
          required: true
        - label: I have read the documentation and troubleshooting guides
          required: true
        - label: I can reliably reproduce this issue
          required: false
        - label: I'm willing to help test potential fixes
          required: false

  - type: checkboxes
    id: code-of-conduct
    attributes:
      label: 📜 Code of Conduct
      description: By submitting this bug report, you agree to follow our Code of Conduct
      options:
        - label: I agree to follow this project's [Code of Conduct](../CODE_OF_CONDUCT.md)
          required: true
````

## File: .github/ISSUE_TEMPLATE/documentation.yml
````yaml
---
name: "📕 Documentation Issue"
description: Report an issue in the API Reference documentation or Developer Guide for the MCP AWS Provider Docs server
title: "(module name): (short issue description)"
labels: [documentation, needs-triage]
body:
  - type: textarea
    id: description
    attributes:
      label: Describe the documentation issue
      description: A clear and concise description of the documentation problem (missing, incorrect, unclear, etc.).
    validations:
      required: true
  - type: textarea
    id: links
    attributes:
      label: Links
      description: Include links to affected documentation page(s) or code references.
    validations:
      required: true
  - type: checkboxes
    attributes:
      label: Code of Conduct
      description: By submitting this issue, you agree to follow our [Code of Conduct](https://aws.github.io/code-of-conduct).
      options:
        - label: I agree to follow this project's Code of Conduct
          required: true
````

## File: .github/ISSUE_TEMPLATE/feature_request.yml
````yaml
---
name: 🚀 Feature Request
description: Suggest a new feature or enhancement for the project
title: "[FEATURE] Brief description of the feature"
labels: [enhancement, needs-triage]
body:
  - type: markdown
    attributes:
      value: |
        Thank you for suggesting a feature! Please fill out the sections below to help us understand your request.

  - type: textarea
    id: description
    attributes:
      label: 📝 Feature Description
      description: Provide a clear and concise description of the feature you're proposing.
      placeholder: "Describe what you want to happen..."
    validations:
      required: true

  - type: textarea
    id: problem
    attributes:
      label: 🎯 Problem Statement
      description: What problem does this feature solve? What's the current limitation or pain point?
      placeholder: "I'm frustrated when... Currently it's difficult to..."
    validations:
      required: true

  - type: textarea
    id: solution
    attributes:
      label: 💡 Proposed Solution
      description: Describe how you envision this feature working. Include any implementation ideas or suggestions.
      placeholder: "I would like to see... This could work by..."
    validations:
      required: true

  - type: textarea
    id: alternatives
    attributes:
      label: 🔄 Alternatives Considered
      description: What other solutions or workarounds have you considered?
      placeholder: "I've tried... Another approach could be..."
    validations:
      required: false

  - type: dropdown
    id: priority
    attributes:
      label: 📊 Priority
      description: How important is this feature to you?
      options:
        - "🔥 Critical - Blocking my work"
        - "🟠 High - Would significantly improve my workflow"
        - "🟡 Medium - Nice to have"
        - "🟢 Low - Minor improvement"
    validations:
      required: true

  - type: dropdown
    id: complexity
    attributes:
      label: ⚡ Estimated Complexity
      description: How complex do you think this feature would be to implement?
      options:
        - "🟢 Simple - Small change or addition"
        - "🟡 Medium - Moderate changes required"
        - "🟠 Complex - Significant changes or new components"
        - "🔴 Very Complex - Major architectural changes"
        - "❓ Unknown - Not sure about complexity"
    validations:
      required: false

  - type: textarea
    id: additional
    attributes:
      label: 📋 Additional Context
      description: Add any other context, screenshots, mockups, or examples that might help explain the feature.
      placeholder: "You can attach images by dragging & dropping, selecting, or pasting them."
    validations:
      required: false

  - type: checkboxes
    id: acknowledgements
    attributes:
      label: ✅ Acknowledgements
      options:
        - label: I have searched existing issues to make sure this feature hasn't been requested before
          required: true
        - label: I understand this is a feature request and not a bug report
          required: true
        - label: I'm willing to help implement this feature if needed
          required: false
        - label: This feature might introduce breaking changes
          required: false

  - type: checkboxes
    id: code-of-conduct
    attributes:
      label: 📜 Code of Conduct
      description: By submitting this feature request, you agree to follow our Code of Conduct
      options:
        - label: I agree to follow this project's [Code of Conduct](../CODE_OF_CONDUCT.md)
          required: true
````

## File: .github/ISSUE_TEMPLATE/rfc.yml
````yaml
name: 🚧 Request for Comments (RFC)
description: Feature design and detailed proposals for the MCP AWS Provider Docs server
title: "RFC: TITLE"
labels: ["RFC-proposal", "needs-triage"]
body:
  - type: markdown
    attributes:
      value: |
        Thank you for submitting a RFC. Please add as many details as possible to help further enrich this design.
  - type: input
    id: relation
    attributes:
      label: Is this related to an existing feature request or issue?
      description: Please share a link, if applicable
  - type: textarea
    id: summary
    attributes:
      label: Summary
      description: Please provide an overview in one or two paragraphs
    validations:
      required: true
  - type: textarea
    id: problem
    attributes:
      label: Use case
      description: Please share the use case and motivation behind this proposal, especially as it relates to the MCP server, AWS provider, or Terragrunt documentation.
    validations:
      required: true
  - type: textarea
    id: proposal
    attributes:
      label: Proposal
      description: Please explain the design in detail, so anyone familiar with the project could implement it
      placeholder: What the user experience looks like before and after this design?
    validations:
      required: true
  - type: textarea
    id: scope
    attributes:
      label: Out of scope
      description: Please explain what should be considered out of scope in your proposal
    validations:
      required: true
  - type: textarea
    id: challenges
    attributes:
      label: Potential challenges
      description: Please share what common challenges, edge cases, unresolved areas, and suggestions on how to mitigate them
    validations:
      required: true
  - type: textarea
    id: integrations
    attributes:
      label: Dependencies and Integrations
      description: If applicable, please share whether this feature has additional dependencies, and how it might integrate with other utilities available
    validations:
      required: false
  - type: textarea
    id: alternatives
    attributes:
      label: Alternative solutions
      description: Please describe what alternative solutions to this use case, if any
      render: markdown
    validations:
      required: false
  - type: checkboxes
    attributes:
      label: Code of Conduct
      description: By submitting this RFC, you agree to follow our [Code of Conduct](https://aws.github.io/code-of-conduct).
      options:
        - label: I agree to follow this project's Code of Conduct
          required: true
````

## File: .github/workflows/bump.yml
````yaml
name: 🔄 Bump version
on:
  push:
    branches:
      - master
      - main

permissions:
  contents: write
  pull-requests: write

jobs:
  bump:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - name: 🔖 Bump version and push tag
        id: tag_version
        uses: mathieudutour/github-tag-action@v6.2
        with:
          github_token: ${{ secrets.GITHUB_TOKEN }}
      - name: 📦 Create a GitHub release
        uses: ncipollo/release-action@v1
        with:
          tag: ${{ steps.tag_version.outputs.new_tag }}
          name: ${{ steps.tag_version.outputs.new_tag }}
          body: ${{ steps.tag_version.outputs.changelog }}
````

## File: .github/workflows/ci-docker.yaml
````yaml
name: 🐳CI - Docker

on:
  workflow_dispatch:
  pull_request:
    types: [opened, synchronize]
jobs:
  docker:
    name: 🐳 Build and Run Docker Image
    runs-on: ubuntu-latest
    steps:
      - name: 🔍 Checkout repository
        uses: actions/checkout@v4

      - name: 📦 Build Docker image
        run: |
          docker build -t mcp-terraform-aws-provider-docs .

      - name: 🐳 Run Docker container (smoke test)
        run: |
          docker run --rm -e GITHUB_TOKEN=fake_token mcp-terraform-aws-provider-docs || (
            echo "❌ Docker container failed to start. Check logs above." && exit 1
          )

      - name: 🎉 CI Docker workflow completed successfully
        if: success()
        run: echo "✅ Docker image built and ran successfully!"
      - name: 🚨 CI Docker workflow failed
        if: failure()
        run: echo "❌ Docker build or run failed. Please review the logs above."
````

## File: .github/workflows/ci-typescript.yaml
````yaml
name: 🔍 CI

on:
  workflow_dispatch:
  push:
    branches: [main, develop]
  pull_request:
    types: [opened, synchronize, reopened]

env:
  # Customize these environment variables for your project
  NODE_VERSION: '20'
  PYTHON_VERSION: '3.11'
  GO_VERSION: '1.21'
  RUST_VERSION: 'stable'

jobs:
  # Job for Node.js/TypeScript projects
  nodejs:
    name: 🟢 Node.js CI
    runs-on: ubuntu-latest
    if: hashFiles('package.json') != ''

    strategy:
      matrix:
        node-version: [18, 20, 22]

    steps:
      - name: ⬇️ Checkout repository
        uses: actions/checkout@v4

      - name: 📦 Setup Node.js ${{ matrix.node-version }}
        uses: actions/setup-node@v4
        with:
          node-version: ${{ matrix.node-version }}
          cache: 'npm'

      - name: 📥 Install dependencies
        run: npm ci

      - name: 🔍 Type checking
        run: npm run typecheck
        continue-on-error: true

      - name: 🧹 Lint code
        run: npm run lint

      - name: 🎨 Check formatting
        run: npm run format:check
        continue-on-error: true

      - name: 🧪 Run tests
        run: npm test

      - name: 🏗️ Build project
        run: npm run build

  # Job for Deno projects
  deno:
    name: 🦕 Deno CI
    runs-on: ubuntu-latest
    if: hashFiles('deno.json') != '' || hashFiles('deno.jsonc') != ''

    steps:
      - name: ⬇️ Checkout repository
        uses: actions/checkout@v4

      - name: 📦 Setup Deno
        uses: denoland/setup-deno@v2
        with:
          deno-version: v1.x

      - name: 🧹 Lint and format
        run: |
          deno lint
          deno fmt --check

      - name: 🔍 Type checking
        run: deno check **/*.ts

      - name: 🧪 Run tests
        run: deno test --allow-all

  # Job for Python projects
  python:
    name: 🐍 Python CI
    runs-on: ubuntu-latest
    if: hashFiles('requirements.txt') != '' || hashFiles('pyproject.toml') != '' || hashFiles('setup.py') != ''

    strategy:
      matrix:
        python-version: ['3.9', '3.10', '3.11', '3.12']

    steps:
      - name: ⬇️ Checkout repository
        uses: actions/checkout@v4

      - name: 📦 Setup Python ${{ matrix.python-version }}
        uses: actions/setup-python@v4
        with:
          python-version: ${{ matrix.python-version }}

      - name: 📥 Install dependencies
        run: |
          python -m pip install --upgrade pip
          if [ -f requirements.txt ]; then pip install -r requirements.txt; fi
          if [ -f requirements-dev.txt ]; then pip install -r requirements-dev.txt; fi

      - name: 🧹 Lint with flake8
        run: |
          pip install flake8
          flake8 . --count --select=E9,F63,F7,F82 --show-source --statistics
          flake8 . --count --exit-zero --max-complexity=10 --max-line-length=127 --statistics

      - name: 🎨 Format check with black
        run: |
          pip install black
          black --check .

      - name: 🧪 Run tests with pytest
        run: |
          pip install pytest pytest-cov
          pytest --cov=./ --cov-report=xml

  # Job for Go projects
  go:
    name: 🐹 Go CI
    runs-on: ubuntu-latest
    if: hashFiles('go.mod') != ''

    strategy:
      matrix:
        go-version: ['1.20', '1.21', '1.22']

    steps:
      - name: ⬇️ Checkout repository
        uses: actions/checkout@v4

      - name: 📦 Setup Go ${{ matrix.go-version }}
        uses: actions/setup-go@v4
        with:
          go-version: ${{ matrix.go-version }}

      - name: 📥 Download dependencies
        run: go mod download

      - name: 🧹 Lint
        run: |
          go vet ./...
          go fmt ./...

      - name: 🧪 Run tests
        run: go test -v ./...

      - name: 🏗️ Build
        run: go build -v ./...

  # Job for Rust projects
  rust:
    name: 🦀 Rust CI
    runs-on: ubuntu-latest
    if: hashFiles('Cargo.toml') != ''

    steps:
      - name: ⬇️ Checkout repository
        uses: actions/checkout@v4

      - name: 📦 Setup Rust
        uses: dtolnay/rust-toolchain@stable
        with:
          components: rustfmt, clippy

      - name: 📥 Cache dependencies
        uses: actions/cache@v3
        with:
          path: |
            ~/.cargo/bin/
            ~/.cargo/registry/index/
            ~/.cargo/registry/cache/
            ~/.cargo/git/db/
            target/
          key: ${{ runner.os }}-cargo-${{ hashFiles('**/Cargo.lock') }}

      - name: 🧹 Format check
        run: cargo fmt --all -- --check

      - name: 🔍 Clippy
        run: cargo clippy -- -D warnings

      - name: 🧪 Run tests
        run: cargo test

      - name: 🏗️ Build
        run: cargo build --verbose

  # Generic job for other projects or when specific detection fails
  generic:
    name: 🔧 Generic CI
    runs-on: ubuntu-latest
    if: hashFiles('package.json') == '' && hashFiles('deno.json') == '' && hashFiles('requirements.txt') == '' && hashFiles('go.mod') == '' && hashFiles('Cargo.toml') == ''

    steps:
      - name: ⬇️ Checkout repository
        uses: actions/checkout@v4

      - name: 🔍 Project structure analysis
        run: |
          echo "📊 Project structure:"
          find . -maxdepth 2 -type f -name "*.json" -o -name "*.toml" -o -name "*.yaml" -o -name "*.yml" | head -10
          echo "📝 Available scripts:"
          if [ -f "Makefile" ]; then echo "Found Makefile"; fi
          if [ -f "justfile" ]; then echo "Found justfile"; fi
          if [ -f "scripts/" ]; then echo "Found scripts directory"; fi

      - name: 🧪 Run available tests
        run: |
          if [ -f "Makefile" ]; then
            make test || echo "Make test failed or not available"
          elif [ -f "justfile" ]; then
            just test || echo "Just test failed or not available"
          elif [ -f "test.sh" ]; then
            ./test.sh || echo "Test script failed"
          else
            echo "No standard test command found"
          fi

  # Summary job that depends on all other jobs
  ci-summary:
    name: ✅ CI Summary
    runs-on: ubuntu-latest
    needs: [nodejs, deno, python, go, rust, generic]
    if: always()

    steps:
      - name: 🎉 CI completed successfully
        if: ${{ !contains(needs.*.result, 'failure') && !contains(needs.*.result, 'cancelled') }}
        run: echo "✅ All CI checks passed!"

      - name: 🚨 CI failed
        if: ${{ contains(needs.*.result, 'failure') }}
        run: |
          echo "❌ Some CI checks failed. Please review the logs above."
          exit 1
````

## File: .github/workflows/issue-comment-created.yml
````yaml
---
name: Remove outdated labels
on:
  pull_request_target:
    types:
      - closed
  issues:
    types:
      - closed
jobs:
  remove-merged-pr-labels:
    name: Remove merged pull request labels
    if: github.event.pull_request.merged
    runs-on: ubuntu-latest
    steps:
      - uses: mondeja/remove-labels-gh-action@v1
        with:
          token: ${{ secrets.GITHUB_TOKEN }}
          labels: |
            awaiting reply
            changes requested
            duplicate
            in discussion
            invalid
            out of scope
            pending
            won't add
  remove-closed-pr-labels:
    name: Remove closed pull request labels
    if: github.event_name == 'pull_request_target' && (! github.event.pull_request.merged)
    runs-on: ubuntu-latest
    steps:
      - uses: mondeja/remove-labels-gh-action@v1
        with:
          token: ${{ secrets.GITHUB_TOKEN }}
          labels: in discussion
  remove-closed-issue-labels:
    name: Remove closed issue labels
    if: github.event.issue.state == 'closed'
    runs-on: ubuntu-latest
    steps:
      - uses: mondeja/remove-labels-gh-action@v1
        with:
          token: ${{ secrets.GITHUB_TOKEN }}
          labels: |
            in discussion
            pending
````

## File: .github/workflows/jsr-publish.yml
````yaml
name: Publish
on:
  push:
    tags:
      - '*'

jobs:
  publish:
    runs-on: ubuntu-latest

    permissions:
      contents: read
      id-token: write

    steps:
      - uses: actions/checkout@v4

      - name: Publish package
        run: npx jsr publish
````

## File: .github/workflows/lock-threads.yml
````yaml
---
name: Lock Threads
on:
  schedule:
    - cron: 50 1 * * *
jobs:
  lock:
    runs-on: ubuntu-latest
    steps:
      - uses: dessant/lock-threads@v4
        with:
          github-token: ${{ github.token }}
          issue-lock-comment: >
            I'm going to lock this issue because it has been closed for _30 days_ ⏳. This helps our maintainers find and focus
            on the active issues. #magic___^_^___line If you have found a problem that seems similar to this, please open
            a new issue and complete the issue template so we can capture all the details necessary to investigate further.

          issue-lock-inactive-days: "30"
          pr-lock-comment: >
            I'm going to lock this pull request because it has been closed for _30 days_ ⏳. This helps our maintainers find
            and focus on the active contributions. #magic___^_^___line If you have found a problem that seems related to this
            change, please open a new issue and complete the issue template so we can capture all the details necessary to
            investigate further. #magic___^_^___line
          pr-lock-inactive-days: "30"
````

## File: .github/workflows/stale-actions.yaml
````yaml
---
name: "Mark or close stale issues and PRs"
on:
  schedule:
    - cron: "0 0 * * *"

jobs:
  stale:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/stale@v9
        with:
          repo-token: ${{ secrets.GITHUB_TOKEN }}
          # Staling issues and PR's
          days-before-stale: 30
          stale-issue-label: wontfix # Use label consistent with .github/stale.yml
          stale-pr-label: wontfix # Use label consistent with .github/stale.yml
          stale-issue-message: |
            This issue has been automatically marked as stale because it has been open 30 days
            with no activity. Remove stale label or comment or this issue will be closed in 10 days
          stale-pr-message: |
            This PR has been automatically marked as stale because it has been open 30 days
            with no activity. Remove stale label or comment or this PR will be closed in 10 days
          # Not stale if have this labels or part of milestone
          exempt-issue-labels: bug,wip,on-hold
          exempt-pr-labels: bug,wip,on-hold
          exempt-all-milestones: true
          # Close issue operations
          # Label will be automatically removed if the issues are no longer closed nor locked.
          days-before-close: 10
          delete-branch: true
          close-issue-message: This issue was automatically closed because of stale in 10 days
          close-pr-message: This PR was automatically closed because of stale in 10 days
````

## File: .github/auto-comment.yml
````yaml
---
pullRequestOpened: |
  :wave: Thanks for creating a PR!

  Before we can merge this PR, please make sure that all the following items have been
  checked off. If any of the checklist items are not applicable, please leave them but
  write a little note why.

  - [ ] Wrote tests
  - [ ] Check the CONTRIBUTING guide for other ways to contribute
  - [ ] Linked to Github issue with discussion and accepted design OR link to spec that
        describes this work.
  - [ ] Updated relevant documentation (`docs/`) and code comments
  - [ ] Re-reviewed `Files changed` in the Github PR explorer
  - [ ] Applied Appropriate Labels


  Thank you for your contribution! :rocket:
````

## File: .github/CODEOWNERS
````
# CODEOWNERS file indicates code owners for certain files
#
# Code owners will automatically be added as a reviewer for PRs that touch
# the owned files.
#

# Default owners for everything in the repo
#
# Unless a later match takes precedence, these owners will be requested for
# review when someone opens a pull request.

* @Excoriate
````

## File: .github/config.yml
````yaml
---
# Configuration for new-issue-welcome - https://github.com/behaviorbot/new-issue-welcome
# Comment to be posted to on first time issues
newIssueWelcomeComment: >
  Thanks for opening your first issue here! 👍 Be sure to follow the issue template. #magic___^_^___line
# Configuration for new-pr-welcome - https://github.com/behaviorbot/new-pr-welcome
# Comment to be posted to on PRs from first time contributors in your repository
newPRWelcomeComment: >
  Thanks for opening this pull request! 👍 Please check out our contributing guidelines. #magic___^_^___line
# Configuration for first-pr-merge - https://github.com/behaviorbot/first-pr-merge
# Comment to be posted to on pull requests merged by a first time user
firstPRMergeComment: >
  Congrats on merging your first pull request! 🎉 We here at `mcp-terraform-aws-provider-docs` are proud of you.
````

## File: .github/labeler.yml
````yaml
# .github/labeler.yml - Config for actions/labeler action
# Defines labels based on files modified in a PR

# Label for CI/CD changes
ci/cd:
  - changed-files:
      - any-glob-to-any-file: ['.github/workflows/*', 'justfile', 'Dockerfile']

# Label for documentation changes
documentation:
  - changed-files:
      - any-glob-to-any-file: ['README.md', 'docs/**/*.md', 'docs/**/*', '*.md']

# Label for source code changes
source:
  - changed-files:
      - any-glob-to-any-file: ['src/**/*.ts', 'src/**/*.js', 'src/**/*.json', 'src/**/*.md', 'main.ts']

# Label for configuration changes / patches
patch:
  - changed-files:
      - any-glob-to-any-file: ['LICENSE', 'justfile', 'deno.json', 'deno.lock', '.github/labeler.yml', '.github/settings.yml', '.github/dependabot.yml', '.github/ISSUE_TEMPLATE/*', '.github/CODEOWNERS', '.github/*.yml', '.gitignore', '.gitattributes']

scripts:
  - changed-files:
      - any-glob-to-any-file: ['scripts/**/*']

config:
  - changed-files:
      - any-glob-to-any-file: ['.env', '.env.example', 'deno.json', 'deno.lock', 'biome.json', '.nvmrc', '.pre-commit-config.yaml', '.shellcheckrc', '.gitattributes', '.gitignore', '.vscode/**/*']

meta:
  - changed-files:
      - any-glob-to-any-file: ['LICENSE', 'SECURITY.md', '.github/labeler.yml', '.github/settings.yml', '.github/ISSUE_TEMPLATE/*', '.github/CODEOWNERS', '.github/*.yml']

feature:
 - head-branch: ['^feature', 'feature']

fix:
 - head-branch: ['^fix', 'fix']

ci:
 - head-branch: ['^ci', 'ci']

refactor:
 - head-branch: ['^refactor', 'refactor']
````

## File: .github/no-response.yml
````yaml
---
# Configuration for probot-no-response - https://github.com/probot/no-response

# Number of days of inactivity before an Issue is closed for lack of response
daysUntilClose: 30
# Label requiring a response
responseRequiredLabel: more-information-needed
# Comment to post when closing an Issue for lack of response. Set to `false` to disable
closeComment: >-
  This issue has been automatically closed because there has been no response to our request for more information from the
  original author. With only the information that is currently in the issue, we don't have enough information to take action.
  Please feel free to reach out if you have or find the answers we need so that we can investigate further. Thank you!
````

## File: .github/PULL_REQUEST_TEMPLATE.md
````markdown
# Pull Request

<!-- Thank you for contributing! Please fill out this template to help us review your changes. -->

## 📋 Summary

<!-- Provide a brief description of your changes -->

**What does this PR do?**

- 🎯 Brief description of the main changes
- 🎯 Another key change if applicable

## 🔍 Type of Change

<!-- Check the boxes that apply to your PR -->

- [ ] 🐛 Bug fix (non-breaking change that fixes an issue)
- [ ] ✨ New feature (non-breaking change that adds functionality)
- [ ] 💥 Breaking change (fix or feature that would cause existing functionality to not work as expected)
- [ ] 📚 Documentation update
- [ ] 🎨 Code style changes (formatting, renaming)
- [ ] ♻️ Code refactoring (no functional changes)
- [ ] ⚡ Performance improvements
- [ ] 🧪 Adding or updating tests
- [ ] 🔧 Build or CI changes
- [ ] 🧹 Chore (maintenance, dependency updates)

## 🎯 What Changed

<!-- Describe your changes in detail -->

### Changes Made

- **Component/File 1**: Description of what changed
- **Component/File 2**: Description of what changed

### User Impact

<!-- How do these changes affect users? -->

- 🎉 **Positive Impact**: What users will gain
- ⚠️ **Potential Impact**: Any considerations or breaking changes

## 🧪 Testing

<!-- Describe how you tested your changes -->

### Test Coverage

- [ ] Unit tests added/updated
- [ ] Integration tests added/updated
- [ ] Manual testing completed
- [ ] All existing tests pass

### Testing Details

<!-- Describe your testing process -->

```bash
# Commands you ran to test
npm test
npm run build
```

**Test Results**:
- ✅ All tests passing
- ✅ Build successful
- ✅ Manual testing confirms expected behavior

## 📸 Screenshots/Demo

<!-- If applicable, add screenshots or a demo of your changes -->

**Before**:
<!-- Screenshot or description of before state -->

**After**:
<!-- Screenshot or description of after state -->

## 🔗 Related Issues

<!-- Link any related issues -->

- Closes #[issue_number]
- Addresses #[issue_number]
- Related to #[issue_number]

## 📝 Additional Notes

<!-- Any additional information that reviewers should know -->

### Breaking Changes

<!-- If this is a breaking change, describe what breaks and how to migrate -->

- **What breaks**: Description
- **Migration path**: How users should update their code

### Performance Impact

<!-- Any performance considerations -->

- **Benchmark results**: If applicable
- **Memory usage**: Any changes in resource usage

### Security Considerations

<!-- Any security implications -->

- **Security review needed**: Yes/No
- **New dependencies**: List any new dependencies added

## ✅ Checklist

<!-- Check off items as you complete them -->

### Code Quality

- [ ] Code follows project style guidelines
- [ ] Self-review of code completed
- [ ] Code is self-documenting or well-commented
- [ ] No console.log or debug statements left in code

### Testing

- [ ] Tests have been added/updated
- [ ] All tests pass locally
- [ ] Test coverage is maintained or improved

### Documentation

- [ ] Documentation updated (if needed)
- [ ] README updated (if needed)
- [ ] Changelog updated (if applicable)
- [ ] API documentation updated (if applicable)

### Dependencies

- [ ] No unnecessary dependencies added
- [ ] Security check passed for new dependencies
- [ ] License compatibility verified

### Git

- [ ] Descriptive commit messages
- [ ] Commits are logically organized
- [ ] Branch is up to date with target branch

## 🏃‍♂️ Ready for Review

- [ ] This PR is ready for review
- [ ] I have addressed all feedback from previous reviews
- [ ] CI/CD checks are passing

---

<!--
## For Reviewers

### Review Checklist

- [ ] Code quality and style
- [ ] Test coverage and quality
- [ ] Documentation completeness
- [ ] Security considerations
- [ ] Performance impact
- [ ] Breaking change impact
-->

**Reviewers**: @[username] <!-- Tag specific reviewers if needed -->

/cc @[team] <!-- Tag team for visibility -->
````

## File: .github/settings.yml
````yaml
# Repository settings are managed by the settings app (https://github.com/apps/settings)
# Documentation: https://github.com/repository-settings/app#configuration
---
repository:
  # Updated repository name
  name: mcp-terraform-aws-provider-docs
  # Updated repository description
  description: Deno/TypeScript MCP Server providing context related to the AWS provider for Terragrunt documentation.

  # This is not a template repository
  is_template: false

  # Updated topics relevant to this project
  topics:
    - mcp
    - typescript
    - deno
    - terragrunt
    - documentation
    - language-server # Assuming it might act like one

  # Merge Strategy (Kept defaults from original)
  default_branch: main
  allow_squash_merge: true
  allow_merge_commit: false
  allow_rebase_merge: true
  delete_branch_on_merge: true

  # Repository Features (Kept defaults from original)
  has_projects: true
  has_wiki: false
  has_discussions: true

  # Security Enhancements (Kept defaults from original)
  enable_vulnerability_alerts: true
  enable_automated_security_fixes: true

  # Team Access (Kept defaults - ADJUST IF NEEDED)
  teams:
    - name: maintainers
      permission: admin
    - name: contributors
      permission: push
    # - name: template-users # Removed template-specific team
    #   permission: pull

# Updated Label Strategy (Removed template labels, added project-specific)
labels:
  - name: bug
    color: "#CC0000"
    description: Something is not working fine 🐛
  - name: feature
    color: "#336699"
    description: New functionality or enhancement 🚀
  - name: documentation
    color: "#0075ca"
    description: Improvements or additions to documentation 📚
  - name: help-wanted
    color: "#008672"
    description: Community contributions welcome 🤝
  - name: mcp
    color: "#5DADE2" # Example color
    description: Related to the Model Context Protocol
  - name: typescript
    color: "#3178C6" # Official TS color
    description: Related to TypeScript code
  - name: deno
    color: "#000000" # Deno logo color
    description: Related to the Deno runtime or configuration
  # Add other relevant labels as needed, e.g., 'terragrunt', 'refactor', 'testing'

# Branch Protection (Updated status checks - PLACEHOLDERS, ADJUST TO ACTUAL CI JOB NAMES)
branches:
  - name: main
    protection:
      required_pull_request_reviews:
        required_approving_review_count: 1
        dismiss_stale_reviews: true
        require_code_owner_reviews: true # Requires CODEOWNERS file
        dismissal_restrictions: {}
        # code_owner_approval: true # Note: require_code_owner_reviews implies this
        required_conversation_resolution: true

      required_status_checks:
        strict: true # Require branches to be up to date before merging
        contexts: # ADJUST THESE TO MATCH YOUR ACTUAL GITHUB ACTIONS JOB NAMES
          - "Lint"
          - "Test"
          # - "Format Check" # Often done locally or via pre-commit, but can be added
          # Add other required checks like build steps if applicable

      require_signatures: true

      enforce_admins: false # Admins are not exempt from protection rules
      required_linear_history: true # Enforce linear history
      restrictions: # Restrict who can push to main (ADJUST AS NEEDED)
        users: [Excoriate]
        teams: [maintainers]

  - name: master
    protection:
      required_pull_request_reviews:
        required_approving_review_count: 1
        dismiss_stale_reviews: true
        require_code_owner_reviews: true
        dismissal_restrictions: {}
        required_conversation_resolution: true

      required_status_checks:
        strict: true
        contexts:
          - "Lint"
          - "Test"

      require_signatures: true

      enforce_admins: false
      required_linear_history: true
      restrictions:
        users: [Excoriate]
        teams: [maintainers]

# Removed Template-Specific Repository Metadata
# repository_config:
#   template_generation_date: 2024-01-15
#   template_version: "1.0.0"
#   recommended_terraform_version: ">= 1.5.0"
````

## File: .github/stale.yml
````yaml
---
# Number of days of inactivity before an issue becomes stale
daysUntilStale: 10
# Number of days of inactivity before a stale issue is closed
daysUntilClose: 3
# Issues with these labels will never be considered stale
exemptLabels:
  - pinned
  - security
# Label to use when marking an issue as stale
staleLabel: wontfix
# Comment to post when marking an issue as stale. Set to `false` to disable
markComment: >
  👋  Hello. Is this still relevant? If so, what is blocking it? Is there anything you can do to help move it forward? #magic___^_^___line
  > This issue has been automatically marked as stale because it has not had recent activity. It will be closed if no further
  activity occurs. #magic___^_^___line Thank you for your contributions. #magic___^_^___line
# Comment to post when closing a stale Issue or Pull Request. Set to `false` to disable
closeComment: >
  ⚡️ This issue has been automatically closed because it has not had recent activity.
````

## File: docs/09_ai/04_ai_documentation/04.1_anthropic_prompt_engineering/anthropic-be-clear-direct-and-detailed.md
````markdown
When interacting with Claude, think of it as a brilliant but very new employee (with amnesia) who needs explicit instructions. Like any new employee, Claude does not have context on your norms, styles, guidelines, or preferred ways of working. The more precisely you explain what you want, the better Claude's response will be.

## How to be clear, contextual, and specific

-   **Give Claude contextual information:** Just like you might be able to better perform on a task if you knew more context, Claude will perform better if it has more contextual information. Some examples of contextual information:
    -   What the task results will be used for
    -   What audience the output is meant for
    -   What workflow the task is a part of, and where this task belongs in that workflow
    -   The end goal of the task, or what a successful task completion looks like
-   **Be specific about what you want Claude to do:** For example, if you want Claude to output only code and nothing else, say so.
-   **Provide instructions as sequential steps:** Use numbered lists or bullet points to better ensure that Claude carries out the task the exact way you want it to.

## Examples

### Example: Anonymizing customer feedback

Notice that Claude still makes mistakes in the unclear prompting example, such as leaving in a customer's name.

| Role | Unclear Prompt | Clear Prompt |
|------|---------------|--------------|
| User | Please remove all personally identifiable information from these customer feedback messages: {{FEEDBACK_DATA}} | Your task is to anonymize customer feedback for our quarterly review.<br><br>Instructions:<br>1. Replace all customer names with "CUSTOMER_[ID]" (e.g., "Jane Doe" → "CUSTOMER_001").<br>2. Replace email addresses with "EMAIL_[ID]@example.com".<br>3. Redact phone numbers as "PHONE_[ID]".<br>4. If a message mentions a specific product (e.g., "AcmeCloud"), leave it intact.<br>5. If no PII is found, copy the message verbatim.<br>6. Output only the processed messages, separated by "---".<br><br>Data to process: {{FEEDBACK_DATA}} |
| Assistant (Claude's response) | Here are the anonymized customer feedback messages:<br>1. I've been using your software for years, and it's been great. But lately, AcmeCloud has been crashing a lot. Fix it!<br>2. XXX, your customer support rep, was incredibly helpful. He guided me through the whole process. My email is XXX if you want to send a survey.<br>3. I'm John Smith, and I'm not happy. I've been on hold for 2 hours trying to reach someone at XXX. This is unacceptable! | CUSTOMER_001: I've been using your software for years, and it's been great. But lately, AcmeCloud has been crashing a lot. Fix it!<br>---<br>CUSTOMER_002: CUSTOMER_SERVICE_001, your customer support rep, was incredibly helpful. He guided me through the whole process. My email is EMAIL_002@example.com if you want to send a survey.<br>---<br>CUSTOMER_003: I'm CUSTOMER_003, and I'm not happy. I've been on hold for 2 hours trying to reach someone at PHONE_001. This is unacceptable! |

### Example: Crafting a marketing email campaign

Notice that Claude makes up details to fill in the gaps where it lacks context with the vague prompt.

| Role | Vague Prompt | Specific Prompt |
|------|--------------|-----------------|
| User | Write a marketing email for our new AcmeCloud features. | Your task is to craft a targeted marketing email for our Q3 AcmeCloud feature release.<br><br>Instructions:<br>1. Write for this target audience: Mid-size tech companies (100-500 employees) upgrading from on-prem to cloud.<br>2. Highlight 3 key new features: advanced data encryption, cross-platform sync, and real-time collaboration.<br>3. Tone: Professional yet approachable. Emphasize security, efficiency, and teamwork.<br>4. Include a clear CTA: Free 30-day trial with priority onboarding.<br>5. Subject line: Under 50 chars, mention "security" and "collaboration".<br>6. Personalization: Use {{COMPANY_NAME}} and {{CONTACT_NAME}} variables.<br><br>Structure:<br>1. Subject line<br>2. Email body (150-200 words)<br>3. CTA button text |
| Assistant (Claude's response) | Here's a draft marketing email for our new features:<br><br>Subject: Boost Your Business with AcmeCloud's Latest Features<br><br>Dear Valued Customer,<br><br>We're excited to introduce three powerful features to AcmeCloud that will revolutionize your workflow:<br>1. Real-Time Collaboration: Work on documents simultaneously with your team. No more version control issues!<br>2. AI-Powered Insights: Make data-driven decisions with AI that analyzes trends and automates tasks.<br>3. Advanced Security Suite: End-to-end encryption, multi-factor auth, and threat detection keep your data safe.<br><br>Limited Offer: Upgrade now for a 20% first-year discount. Plus, refer a friend for an extra 10% off!<br><br>Best,<br>The AcmeCloud Team | Subject line: AcmeCloud: Enterprise security meets real-time teamwork<br><br>Email body:<br>Dear {{CONTACT_NAME}},<br><br>At {{COMPANY_NAME}}, you're scaling fast and eyeing the cloud. But with growth comes the challenge of keeping data secure while fostering collaboration. That's where AcmeCloud's Q3 release comes in, tailor-made for tech innovators like you.<br><br>1. Fort Knox for Your Files: Military-grade encryption now safeguards your data, both in motion and at rest. Your intellectual property stays yours, period.<br>2. Sync Without Borders: Windows, Mac, or Linux—AcmeCloud speaks all languages. Unified version control means no more "final_v2_REALLY_FINAL.doc".<br>3. Collaborate at Light Speed: Ditch the attachment ping-pong. Now your devs, designers, and data scientists co-create in real-time, slashing time-to-market.<br><br>Don't just take our word for it. Experience the AcmeCloud difference with our 30-day trial. And because we know time is your most precious asset, we're throwing in priority onboarding.<br><br>Elevate Your Team Now - Free 30-Day Trial |

### Example: Incident response

Notice that Claude outputs superfluous text and different formating with the vague prompt.

| Role | Vague Prompt | Detailed Prompt |
|------|--------------|-----------------|
| User | Analyze this AcmeCloud outage report and summarize the key points.<br>{{REPORT}} | Analyze this AcmeCloud outage report. Skip the preamble. Keep your response terse and write only the bare bones necessary information. List only:<br>1) Cause<br>2) Duration<br>3) Impacted services<br>4) Number of affected users<br>5) Estimated revenue loss.<br><br>Here's the report: {{REPORT}} |
| Assistant (Claude's response) | Here's a summary of the key points from the AcmeCloud outage report:<br><br>On May 15th, a misconfigured load balancer update caused significant traffic routing issues, resulting in a service outage from 09:15 to 13:52 UTC. The 4-hour 37-minute disruption impacted our core file syncing service and admin dashboard, rendering them inaccessible. Additionally, the mobile app experienced partial functionality loss. Approximately 68% of our user base, totaling 1.3 million users, were affected. Based on our Service Level Agreements (SLAs) and average revenue per user, we estimate a financial impact of $420,000 in service credits and potential customer churn. | 1) Cause: Misconfigured load balancer update<br>2) Duration: 4h 37m (09:15-13:52 UTC, May 15)<br>3) Impacted: Core sync, admin dashboard (down); mobile app (partial)<br>4) Affected users: 1.3M (68% of base)<br>5) Est. revenue loss: $420,000 |

## Key Takeaways

The examples demonstrate how to be clear, direct, and detailed when interacting with Claude:

- Provide specific, step-by-step instructions
- Give context about the task's purpose and audience
- Be explicit about the desired output format
- Use numbered or bulleted lists to break down complex tasks
- Anticipate potential misunderstandings and address them proactively

___
````

## File: docs/09_ai/04_ai_documentation/04.1_anthropic_prompt_engineering/anthropic-building-with-extended-thinking.md
````markdown
Extended thinking gives Claude 3.7 Sonnet enhanced reasoning capabilities for complex tasks, while also providing transparency into its step-by-step thought process before it delivers its final answer.

## How extended thinking works

When extended thinking is turned on, Claude creates `thinking` content blocks where it outputs its internal reasoning. Claude incorporates insights from this reasoning before crafting a final response.

The API response will include both `thinking` and `text` content blocks.

In multi-turn conversations, only thinking blocks associated with a tool use session or `assistant` turn in the last message position are visible to Claude and are billed as input tokens; thinking blocks associated with earlier `assistant` messages are [not visible](https://docs.anthropic.com/en/docs/build-with-claude/context-windows#the-context-window-with-extended-thinking) to Claude during sampling and do not get billed as input tokens.

## Implementing extended thinking

Add the `thinking` parameter and a specified token budget to use for extended thinking to your API request.

The `budget_tokens` parameter determines the maximum number of tokens Claude is allowed use for its internal reasoning process. Larger budgets can improve response quality by enabling more thorough analysis for complex problems, although Claude may not use the entire budget allocated, especially at ranges above 32K.

Your `budget_tokens` must always be less than the `max_tokens` specified.

The API response will include both thinking and text content blocks:

## Understanding thinking blocks

Thinking blocks represent Claude’s internal thought process. In order to allow Claude to work through problems with minimal internal restrictions while maintaining our safety standards and our stateless APIs, we have implemented the following:

-   Thinking blocks contain a `signature` field. This field holds a cryptographic token which verifies that the thinking block was generated by Claude, and is verified when thinking blocks are passed back to the API. When streaming responses, the signature is added via a `signature_delta` inside a `content_block_delta` event just before the `content_block_stop` event. It is only strictly necessary to send back thinking blocks when using [tool use with extended thinking](https://docs.anthropic.com/en/docs/build-with-claude/extended-thinking#preserving-thinking-blocks-during-tool-use). Otherwise you can omit thinking blocks from previous turns, or let the API strip them for you if you pass them back.
-   Occasionally Claude’s internal reasoning will be flagged by our safety systems. When this occurs, we encrypt some or all of the `thinking` block and return it to you as a `redacted_thinking` block. These redacted thinking blocks are decrypted when passed back to the API, allowing Claude to continue its response without losing context.
-   `thinking` and `redacted_thinking` blocks are returned before the `text` blocks in the response.

Here’s an example showing both normal and redacted thinking blocks:

When passing `thinking` and `redacted_thinking` blocks back to the API in a multi-turn conversation, you must include the complete unmodified block back to the API for the last assistant turn.

This is critical for maintaining the model’s reasoning flow. We suggest always passing back all thinking blocks to the API. For more details, see the [Preserving thinking blocks](https://docs.anthropic.com/en/docs/build-with-claude/extended-thinking#preserving-thinking-blocks) section below.

### Suggestions for handling redacted thinking in production

When building customer-facing applications that use extended thinking:

-   Be aware that redacted thinking blocks contain encrypted content that isn’t human-readable
-   Consider providing a simple explanation like: “Some of Claude’s internal reasoning has been automatically encrypted for safety reasons. This doesn’t affect the quality of responses.”
-   If showing thinking blocks to users, you can filter out redacted blocks while preserving normal thinking blocks
-   Be transparent that using extended thinking features may occasionally result in some reasoning being encrypted
-   Implement appropriate error handling to gracefully manage redacted thinking without breaking your UI

## Streaming extended thinking

When streaming is enabled, you’ll receive thinking content via `thinking_delta` events. Here’s how to handle streaming with thinking:

Example streaming output:

## Important considerations when using extended thinking

**Working with the thinking budget:** The minimum budget is 1,024 tokens. We suggest starting at the minimum and increasing the thinking budget incrementally to find the optimal range for Claude to perform well for your use case. Higher token counts may allow you to achieve more comprehensive and nuanced reasoning, but there may also be diminishing returns depending on the task.

-   The thinking budget is a target rather than a strict limit - actual token usage may vary based on the task.
-   Be prepared for potentially longer response times due to the additional processing required for the reasoning process.
-   Streaming is required when `max_tokens` is greater than 21,333.

**For thinking budgets above 32K:** We recommend using [batch processing](https://docs.anthropic.com/en/docs/build-with-claude/batch-processing) for workloads where the thinking budget is set above 32K to avoid networking issues. Requests pushing the model to think above 32K tokens causes long running requests that might run up against system timeouts and open connection limits.

**Thinking compatibility with other features:**

-   Thinking isn’t compatible with `temperature`, `top_p`, or `top_k` modifications as well as [forced tool use](https://docs.anthropic.com/en/docs/build-with-claude/tool-use#forcing-tool-use).
-   You cannot pre-fill responses when thinking is enabled.
-   Changes to the thinking budget invalidate cached prompt prefixes that include messages. However, cached system prompts and tool definitions will continue to work when thinking parameters change.

### Pricing and token usage for extended thinking

Extended thinking tokens count towards the context window and are billed as output tokens. Since thinking tokens are treated as normal output tokens, they also count towards your rate limits. Be sure to account for this increased token usage when planning your API usage.

For Claude 3.7 Sonnet, the pricing is:

| Token use | Cost |
| --- | --- |
| Input tokens | $3 / MTok |
| Output tokens (including thinking tokens) | $15 / MTok |
| Prompt caching write | $3.75 / MTok |
| Prompt caching read | $0.30 / MTok |

[Batch processing](https://docs.anthropic.com/en/docs/build-with-claude/batch-processing) for extended thinking is available at 50% off these prices and often completes in less than 1 hour.

### Extended output capabilities (beta)

Claude 3.7 Sonnet can produce substantially longer responses than previous models with support for up to 128K output tokens (beta)—more than 15x longer than other Claude models. This expanded capability is particularly effective for extended thinking use cases involving complex reasoning, rich code generation, and comprehensive content creation.

This feature can be enabled by passing an `anthropic-beta` header of `output-128k-2025-02-19`.

When using extended thinking with longer outputs, you can allocate a larger thinking budget to support more thorough reasoning, while still having ample tokens available for the final response.

We suggest using streaming or batch mode with this extended output capability; for more details see our guidance on network reliability considerations for [long requests](https://docs.anthropic.com/en/api/errors#long-requests).

## Using extended thinking with prompt caching

Prompt caching with thinking has several important considerations:

**Thinking block inclusion in cached prompts**

-   Thinking is only included when generating an assistant turn and not meant to be cached.
-   Previous turn thinking blocks are ignored.
-   If thinking becomes disabled, any thinking content passed to the API is simply ignored.

**Cache invalidation rules**

-   Alterations to thinking parameters (enabling/disabling or budget changes) invalidate cache breakpoints set in messages.
-   System prompts and tools maintain caching even when thinking parameters change.

### Examples of prompt caching with extended thinking

## Max tokens and context window size with extended thinking

In older Claude models (prior to Claude 3.7 Sonnet), if the sum of prompt tokens and `max_tokens` exceeded the model’s context window, the system would automatically adjust `max_tokens` to fit within the context limit. This meant you could set a large `max_tokens` value and the system would silently reduce it as needed.

With Claude 3.7 Sonnet, `max_tokens` (which includes your thinking budget when thinking is enabled) is enforced as a strict limit. The system will now return a validation error if prompt tokens + `max_tokens` exceeds the context window size.

### How context window is calculated with extended thinking

When calculating context window usage with thinking enabled, there are some considerations to be aware of:

-   Thinking blocks from previous turns are stripped and not counted towards your context window
-   Current turn thinking counts towards your `max_tokens` limit for that turn

The diagram below demonstrates the specialized token management when extended thinking is enabled:

![Context window diagram with extended thinking](https://mintlify.s3.us-west-1.amazonaws.com/anthropic/images/context-window-thinking.svg)

The effective context window is calculated as:

We recommend using the [token counting API](https://docs.anthropic.com/en/docs/build-with-claude/token-counting) to get accurate token counts for your specific use case, especially when working with multi-turn conversations that include thinking.

### Managing tokens with extended thinking

Given new context window and `max_tokens` behavior with extended thinking models like Claude 3.7 Sonnet, you may need to:

-   More actively monitor and manage your token usage
-   Adjust `max_tokens` values as your prompt length changes
-   Potentially use the [token counting endpoints](https://docs.anthropic.com/en/docs/build-with-claude/token-counting) more frequently
-   Be aware that previous thinking blocks don’t accumulate in your context window

This change has been made to provide more predictable and transparent behavior, especially as maximum token limits have increased significantly.

When using extended thinking with tool use, be aware of the following behavior pattern:

1.  **First assistant turn**: When you send an initial user message, the assistant response will include thinking blocks followed by tool use requests.
    
2.  **Tool result turn**: When you pass the user message with tool result blocks, **the subsequent assistant message will not contain any additional thinking blocks.**
    

To expand here, the normal order of a tool use conversation with thinking follows these steps:

1.  User sends initial message
2.  Assistant responds with thinking blocks and tool requests
3.  User sends message with tool results
4.  Assistant responds with either more tool calls or just text (no thinking blocks in this response)
5.  If more tools are requested, repeat steps 3-4 until the conversation is complete

This design allows Claude to show its reasoning process before making tool requests, but not repeat the thinking process after receiving tool results. Claude will not output another thinking block until after the next non-`tool_result` `user` turn.

The diagram below illustrates the context window token management when combining extended thinking with tool use:

![Context window diagram with extended thinking and tool use](https://mintlify.s3.us-west-1.amazonaws.com/anthropic/images/context-window-thinking-tools.svg)

### Preserving thinking blocks

During tool use, you must pass `thinking` and `redacted_thinking` blocks back to the API, and you must include the complete unmodified block back to the API. This is critical for maintaining the model’s reasoning flow and conversation integrity.

#### Why thinking blocks must be preserved

When Claude invokes tools, it is pausing its construction of a response to await external information. When tool results are returned, Claude will continue building that existing response. This necessitates preserving thinking blocks during tool use, for a couple of reasons:

1.  **Reasoning continuity**: The thinking blocks capture Claude’s step-by-step reasoning that led to tool requests. When you post tool results, including the original thinking ensures Claude can continue its reasoning from where it left off.
    
2.  **Context maintenance**: While tool results appear as user messages in the API structure, they’re part of a continuous reasoning flow. Preserving thinking blocks maintains this conceptual flow across multiple API calls.
    

**Important**: When providing `thinking` or `redacted_thinking` blocks, the entire sequence of consecutive `thinking` or `redacted_thinking` blocks must match the outputs generated by the model during the original request; you cannot rearrange or modify the sequence of these blocks.

## Tips for making the best use of extended thinking mode

To get the most out of extended thinking:

1.  **Set appropriate budgets**: Start with larger thinking budgets (16,000+ tokens) for complex tasks and adjust based on your needs.
    
2.  **Experiment with thinking token budgets**: The model might perform differently at different max thinking budget settings. Increasing max thinking budget can make the model think better/harder, at the tradeoff of increased latency. For critical tasks, consider testing different budget settings to find the optimal balance between quality and performance.
    
3.  **You do not need to remove previous thinking blocks yourself**: The Anthropic API automatically ignores thinking blocks from previous turns and they are not included when calculating context usage.
    
4.  **Monitor token usage**: Keep track of thinking token usage to optimize costs and performance.
    
5.  **Use extended thinking for particularly complex tasks**: Enable thinking for tasks that benefit from step-by-step reasoning like math, coding, and analysis.
    
6.  **Account for extended response time**: Factor in that generating thinking blocks may increase overall response time.
    
7.  **Handle streaming appropriately**: When streaming, be prepared to handle both thinking and text content blocks as they arrive.
    
8.  **Prompt engineering**: Review our [extended thinking prompting tips](https://docs.anthropic.com/en/docs/build-with-claude/prompt-engineering/extended-thinking-tips) if you want to maximize Claude’s thinking capabilities.
    

## Next steps
````

## File: docs/09_ai/04_ai_documentation/04.1_anthropic_prompt_engineering/anthropic-chain-complex-prompts-for-stronger-performance.md
````markdown
# Chain complex prompts for stronger performance

While these tips apply broadly to all Claude models, you can find prompting tips specific to extended thinking models here.

When working with complex tasks, Claude can sometimes drop the ball if you try to handle everything in a single prompt. Chain of thought (CoT) prompting is great, but what if your task has multiple distinct steps that each require in-depth thought?

Enter prompt chaining: breaking down complex tasks into smaller, manageable subtasks.

## Why chain prompts?

1. **Accuracy**: Each subtask gets Claude's full attention, reducing errors.
2. **Clarity**: Simpler subtasks mean clearer instructions and outputs.
3. **Traceability**: Easily pinpoint and fix issues in your prompt chain.

## When to chain prompts

Use prompt chaining for multi-step tasks like research synthesis, document analysis, or iterative content creation. When a task involves multiple transformations, citations, or instructions, chaining prevents Claude from dropping or mishandling steps.

**Remember:** Each link in the chain gets Claude's full attention!

**Debugging tip**: If Claude misses a step or performs poorly, isolate that step in its own prompt. This lets you fine-tune problematic steps without redoing the entire task.

## How to chain prompts

1. **Identify subtasks**: Break your task into distinct, sequential steps.
2. **Structure with XML for clear handoffs**: Use XML tags to pass outputs between prompts.
3. **Have a single-task goal**: Each subtask should have a single, clear objective.
4. **Iterate**: Refine subtasks based on Claude's performance.

### Example chained workflows:

- **Multi-step analysis**: See the legal and business examples below.
- **Content creation pipelines**: Research → Outline → Draft → Edit → Format.
- **Data processing**: Extract → Transform → Analyze → Visualize.
- **Decision-making**: Gather info → List options → Analyze each → Recommend.
- **Verification loops**: Generate content → Review → Refine → Re-review.

**Optimization tip**: For tasks with independent subtasks (like analyzing multiple docs), create separate prompts and run them in parallel for speed.

### Advanced: Self-correction chains

You can chain prompts to have Claude review its own work! This catches errors and refines outputs, especially for high-stakes tasks.

## Examples

### Example: Self-correcting research summary

#### Prompt 1

| Role | Content |
| ---- | ------- |
| User | Summarize this medical research paper.<paper>{{RESEARCH_PAPER}}</paper>Focus on methodology, findings, and clinical implications. |
| Assistant{{SUMMARY}} | Methodology: Double-blind RCT with 500 Type 2 diabetes patients. Group A (n=250) received novel GLP-1/GIP dual agonist; Group B (n=250) received standard GLP-1 agonist. 24-week trial, primary endpoint: HbA1c reduction.

Findings:
- Group A: 1.8% mean HbA1c reduction
- Group B: 1.1% mean HbA1c reduction
- 68% of Group A vs. 52% of Group B achieved HbA1c <7%
- Group A: 5.2kg mean weight loss
- Group B: 3.1kg mean weight loss

Safety: Similar adverse event profiles, no serious events attributed to treatment.

Clinical Implications: Dual agonist shows superior glycemic control and weight loss compared to standard therapy. Could be a game-changer, especially for obese diabetics. |

#### Prompt 2

| Role | Content |
| ---- | ------- |
| User | Your task is to provide feedback on a research paper summary. Here is a summary of a medical research paper:<summary>{{SUMMARY}}</summary>Here is the research paper:<paper>{{RESEARCH_PAPER}}</paper>Review this summary for accuracy, clarity, and completeness on a graded A-F scale. |
| Assistant{{FEEDBACK}} | 1. Accuracy: A
- Correctly reported key stats: HbA1c reductions, weight loss.
- Accurately noted safety profile and lack of serious adverse events.
- Assertion of "game-changer" is justified by significantly better outcomes.

2. Clarity: A-
- Concise and well-structured with clear sections.
- Good use of comparative language (e.g., "up 3% from Q1") for context.
- Minor issue: Acronyms like "RCT," "GLP-1," and "GIP" not defined. Consider spelling out first use.

3. Completeness: B+
- Covers all requested areas: methodology, findings, clinical implications.
- Missing: Baseline characteristics of groups (were they well-matched?).
- Missing: Any secondary endpoints (e.g., blood pressure, lipids).
- Consider: Long-term implications or need for further research.

Overall, the summary is accurate and clear, providing key insights for a quick grasp of the study. To elevate to A+, define acronyms, mention group baseline stats, note any secondary outcomes, and briefly touch on the need for long-term studies. |

#### Prompt 3

| Role | Content |
| ---- | ------- |
| User | Your task is to improve a paper summary given feedback. Here is the first draft of a medical research paper:<summary>{{SUMMARY}}</summary>Here is the research paper:<paper>{{RESEARCH_PAPER}}</paper>Here is the feedback:<feedback>{{FEEDBACK}}</feedback>Update the summary based on the feedback. |
| Assistant | Methodology: Double-blind randomized controlled trial (RCT) with 500 Type 2 diabetes patients. Group A (n=250) received a novel glucagon-like peptide-1/glucose-dependent insulinotropic polypeptide (GLP-1/GIP) dual agonist; Group B (n=250) received a standard GLP-1 agonist. The 24-week trial's primary endpoint was HbA1c reduction. Groups were well-matched for age, BMI, and baseline HbA1c.

Findings:
- Group A: 1.8% mean HbA1c reduction
- Group B: 1.1% mean HbA1c reduction
- 68% of Group A vs. 52% of Group B achieved HbA1c <7%
- Group A: 5.2kg mean weight loss
- Group B: 3.1kg mean weight loss

Secondary endpoints showed improvements in blood pressure and lipid profiles for both groups, with Group A showing slightly better results.

Safety: Similar adverse event profiles, with no serious events attributed to either treatment.

Clinical Implications: The dual GLP-1/GIP agonist demonstrates superior glycemic control and weight loss compared to standard GLP-1 therapy. These results suggest it could be a significant advancement, particularly for obese diabetics. However, longer-term studies are needed to confirm sustained efficacy and safety, as well as to investigate potential benefits on cardiovascular outcomes. |

### Example: Analyzing a legal contract (without chaining)

Note that Claude misses the instruction to provide proposed changes in its email draft.

| Role | Content |
| ---- | ------- |
| User | You're our Chief Legal Officer. Review this SaaS contract for risks, focusing on data privacy, SLAs, and liability caps.<contract>{{CONTRACT}}</contract>Then draft an email to the vendor with your concerns and proposed changes. |
| Assistant | After reviewing the SaaS contract, I've identified several concerns:

1. Data Privacy (Section 7):
- Issue: Vendor has broad rights to use client data for "service improvement."
- Risk: Could lead to unauthorized data sharing or monetization.

2. SLAs (Section 5):
- Issue: 99.5% uptime guarantee is below industry standard.
- Risk: Excessive downtime could impact our operations.

3. Liability (Section 9):
- Issue: Cap set at 3 months of fees.
- Risk: Inadequate for potential data breaches or service failures.

Draft email:

Dear {{VENDOR}},

After reviewing the SaaS agreement, we have concerns:

1. Data Privacy: We require that our data only be used for direct service provision, not broad "service improvement." Please amend Section 7.

2. SLAs: 99.5% uptime is insufficient. We need 99.99% with clearly defined penalties. Please revise Section 5.

3. Liability: The current cap of 3 months' fees is inadequate. We propose a cap of 12 months' fees, with no cap for data breaches or willful misconduct.

We value our potential partnership and believe these changes will set us up for success. Please send a revised agreement.

Best regards,
{{CLO_NAME}} |

### Example: Analyzing a legal contract (with chaining)

#### Prompt 1

| Role | Content |
| ---- | ------- |
| User | You're our Chief Legal Officer. Review this SaaS contract for risks, focusing on data privacy, SLAs, and liability caps.<contract>{{CONTRACT}}</contract>Output your findings in <risks> tags. |
| Assistant{{CONCERNS}} | 1. Data Privacy (Section 7):
- Issue: Vendor has broad rights to use client data for "service improvement."
- Risk: Could lead to unauthorized data sharing or monetization of client data.
- Impact: Potential breach of client trust, regulatory fines (GDPR, CCPA).

2. SLAs (Section 5):
- Issue: 99.5% uptime guarantee is below industry standard (typically 99.99%).
- Risk: Up to 43.8 hours of downtime per year vs. 52.6 minutes at 99.99%.
- Impact: Operational disruptions, revenue loss, client dissatisfaction.

3. Liability (Section 9):
- Issue: Liability cap set at 3 months of fees.
- Risk: Inadequate for potential data breaches, IP theft, or prolonged service failures.
- Impact: Insufficient compensation for damages that could far exceed the cap, like class-action lawsuits or regulatory fines. |

#### Prompt 2

| Role | Content |
| ---- | ------- |
| User | Draft an email to a SaaS product vendor outlining the following concerns and proposing changes. Here are the concerns:<concerns>{{CONCERNS}}</concerns> |
| Assistant{{EMAIL}} | Dear {{VENDOR}},

After a thorough review of the proposed SaaS agreement, our legal team has identified several high-priority concerns that must be addressed before we can proceed:

1. Data Privacy (Section 7):
- Current: Broad rights to use client data for "service improvement."
- Concern: Potential unauthorized data sharing or monetization.
- Proposed Change: Limit data use to direct service provision. Any use for improvement, analytics, or marketing must be opt-in, revocable, and anonymized.

2. SLAs (Section 5):
- Current: 99.5% uptime guarantee.
- Concern: Up to 43.8 hours of downtime per year, risking operational disruptions.
- Proposed Change: 99.99% uptime with tiered service credits. E.g., 10% credit for <99.99%, 25% for <99.9%, 50% for <99.5%.

3. Liability (Section 9):
- Current: Cap at 3 months of fees.
- Concern: Grossly inadequate for data breaches, IP theft, or prolonged outages.
- Proposed Change: 12 months' fees for general liability. Uncapped for data breaches, willful misconduct, IP infringement.

These changes are non-negotiable for us. They align with industry standards and our commitment to data security, operational excellence, and fiduciary responsibility. We value the potential of our partnership, and addressing these will set a strong foundation.

Please have your legal team review and incorporate these changes. We're happy to discuss further to ensure mutual understanding and agreement.

Best regards,
{{CLO_NAME}} |

#### Prompt 3

| Role | Content |
| ---- | ------- |
| User | Your task is to review an email and provide feedback. Here is the email:<email>{{EMAIL}}</email>Give feedback on tone, clarity, and professionalism. |
| Assistant | 1. Tone:
- Professional and assertive without being confrontational.
- Use of "non-negotiable" is strong but justified given the criticality of the issues.
- Collaborative language ("we value," "happy to discuss") balances the firmness, maintaining a constructive tone.

2. Clarity:
- Excellent structuring: Current state, concern, and proposed change for each issue.
- Technical terms (e.g., "EBITDA," "tiered service credits") are appropriate for a B2B SaaS context.
- Action items are clear: vendor's legal team to review and incorporate changes.

3. Professionalism:
- Focuses on mutual benefit and industry standards, not just our demands.
- Mentions broader responsibilities (data security, operational excellence, fiduciary duty), elevating the discussion.
- Offers further discussion, showing commitment to understanding and resolving issues.

Overall, the email strikes the right balance of assertiveness and collaboration. It clearly articulates our concerns, proposes specific solutions, and maintains a professional, partnership-oriented tone. No revisions needed; proceed with sending. |

### Example: Multitenancy strategy review

#### Prompt 1

| Role | Content |
| ---- | ------- |
| User | As a senior solutions architect, review and analyze this multitenancy strategy for our new enterprise SaaS product.<strategy>{{STRATEGY}}</strategy>Focus on scalability, security, and cost-effectiveness. |
| Assistant{{ANALYSIS}} | 1. Scalability:
+ Database sharding by tenant reduces contention, supports high growth.
+ Microservices allow independent scaling of components.
- Shared app servers could bottleneck under extreme load.
- No mention of auto-scaling or load balancing for app tier.

2. Security:
+ Tenant data isolation via sharding mitigates data leaks.
+ JWT with short expiry and refresh tokens is industry best practice.
- No mention of encryption (at rest, in transit) or key management.
- IAM strategy lacks detail on roles, permissions, or RBAC.

3. Cost-effectiveness:
+ Shared app servers reduce idle resource costs.
+ Serverless functions for infrequent tasks optimize costs.
- Per-tenant DB could increase costs at scale vs. optimized multi-tenant DB.
- No discussion of reserved instances or spot instances for cost saving. |

#### Prompt 2

| Role | Content |
| ---- | ------- |
| User | Draft a strategy review document for engineering leadership based on this analysis of a multitenancy strategy.<strategy>{{STRATEGY}}</strategy><analysis>{{ANALYSIS}}</analysis>Include an executive summary, detailed analysis, and recommendations. |
| Assistant{{STRATEGY_DOC}} | # Multitenancy Strategy Review: SaaS Enterprise Product

## Executive Summary
The proposed strategy demonstrates a solid foundation in scalability and security principles but has gaps in implementation details. It excels in data isolation and component-level scaling but lacks robust app-tier scaling and advanced security measures. Cost optimizations are present but may falter at high scale. With targeted enhancements, this strategy can effectively support our enterprise SaaS ambitions.

## Detailed Analysis

### 1. Scalability: B+

Strengths:
- Database sharding by tenant is excellent. It minimizes query latency, supports high data growth, and facilitates seamless per-tenant scaling.
- Microservices architecture allows scaling individual components based on demand, crucial for handling diverse enterprise workloads.

Weaknesses:
- Shared application servers risk becoming a bottleneck. As tenant count and traffic grow, these could degrade performance across all tenants.
- Absence of auto-scaling and load balancing for the app tier is a critical oversight. These are essential for handling traffic spikes without over-provisioning.

### 2. Security: B-

Strengths:
- Sharded databases provide strong tenant data isolation, mitigating risks of data leaks or unauthorized access between tenants.
- JWT with short expiry and refresh tokens align with OWASP best practices, reducing token vulnerability windows.

Weaknesses:
- No mention of data encryption at rest or in transit (TLS 1.3). This is non-negotiable for enterprise data.
- Key management strategy is missing. How are encryption keys, JWT secrets, and DB credentials managed and rotated?
- IAM lacks depth. We need RBAC with well-defined roles, attribute-based access control (ABAC) for fine-grained permissions, and integration with enterprise identity providers (SAML, OIDC).

### 3. Cost-effectiveness: B

Strengths:
- Shared app servers reduce idle capacity costs, good for steady-state traffic.
- Serverless for infrequent tasks (e.g., reporting) is smart; pay only when these resources are used.

Weaknesses:
- Per-tenant databases may not be cost-effective at scale compared to a well-designed multi-tenant database with robust data partitioning.
- No mention of cost-saving measures like reserved instances for predictable workloads or spot instances for fault-tolerant tasks.
- Lack of app-tier auto-scaling could lead to over-provisioning, increasing costs.

## Recommendations

1. App Tier Resilience: Implement auto-scaling with Kubernetes or cloud-native services (EKS, GKE). Deploy across availability zones with a CDN for static assets.

2. Security Hardening:
a. Encrypt data at rest (AES-256) and in transit (TLS 1.3).
b. Use a managed KMS (AWS KMS, GCP KMS) for key management.
c. Enhance IAM with RBAC, ABAC, and SAML/OIDC for enterprise SSO.

3. Cost Optimization:
a. Evaluate columnar multi-tenant DB (e.g., Snowflake) vs. sharding at scale.
b. Use reserved instances for app servers, spot instances for non-critical workloads.
c. Implement proactive monitoring and right-sizing to avoid overprovisioning.

4. Proof of Concept (PoC): Before full implementation, conduct a PoC with a high-scale simulation:
a. Test sharded DB vs. optimized multi-tenant DB for cost and performance.
b. Stress-test app tier with simulated enterprise-level traffic spikes.
c. Conduct third-party security audit, focusing on data isolation and access controls.

With these enhancements, our multi-tenancy strategy will be enterprise-grade: scalable, secure, and cost-effective. The PoC will validate our design choices and instill confidence in our enterprise clients. |

#### Prompt 3

| Role | Content |
| ---- | ------- |
| User | Grade this strategy review document for clarity, actionability, and alignment with enterprise priorities.<priorities>{{PRIORITIES}}</priorities><strategy_doc>{{STRATEGY_DOC}}</strategy_doc> |
| Assistant | 1. Clarity: A
+ Clear structure with Executive Summary, Detailed Analysis, and Recommendations.
+ Analysis uses a grading system (B+, B-) for quick grasp of strengths/weaknesses.
+ Technical terms (RBAC, ABAC, TLS) are explained or contextualized, aiding non-technical leadership.
+ Visual aids (bullet points, indentation) enhance readability.

2. Actionability: A-
+ Recommendations are specific and technical (e.g., "Implement auto-scaling with Kubernetes").
+ PoC plan with clear objectives provides a roadmap.
+ Missing: Timelines, resource requirements, or team assignments for each recommendation.
+ Consider: Add a "Next Steps" section with immediate actions, roles, and a high-level timeline.

3. Enterprise Alignment: A+
+ Directly addresses enterprise priorities:
- Scalability: Discusses handling enterprise-level traffic spikes.
- Security: Focuses on data isolation, encryption, and enterprise IAM.
- Cost: Strategies align with enterprise FinOps (reserved instances, right-sizing).
+ PoC with "high-scale simulation" and security audit shows commitment to enterprise-grade quality.
+ Language resonates with enterprise concerns: "unacceptable risk," "enterprise-grade," "instill confidence."

Overall, the document excels in clarity and enterprise alignment. The actionability is strong but could be elevated to A+ with a "Next Steps" section. The technical depth, coupled with clear explanations, makes this highly effective for both technical and non-technical leadership. Great work! |
````

## File: docs/09_ai/04_ai_documentation/04.1_anthropic_prompt_engineering/anthropic-claude-4-prompt-engineering-best-practices.md
````markdown
# Claude 4 prompt engineering best practices

This guide provides specific prompt engineering techniques for Claude 4 models (Opus 4 and Sonnet 4) to help you achieve optimal results in your applications. These models have been trained for more precise instruction following than previous generations of Claude models.

## General principles

### Be explicit with your instructions

Claude 4 models respond well to clear, explicit instructions. Being specific about your desired output can help enhance results. Customers who desire the "above and beyond" behavior from previous Claude models might need to more explicitly request these behaviors with Claude 4.

<Accordion title="Example: Creating an analytics dashboard">
  **Less effective:**

  ```text
  Create an analytics dashboard
  ```

  **More effective:**

  ```text
  Create an analytics dashboard. Include as many relevant features and interactions as possible. Go beyond the basics to create a fully-featured implementation.
  ```
</Accordion>

### Add context to improve performance

Providing context or motivation behind your instructions, such as explaining to Claude why such behavior is important, can help Claude 4 better understand your goals and deliver more targeted responses.

<Accordion title="Example: Formatting preferences">
  **Less effective:**

  ```text
  NEVER use ellipses
  ```

  **More effective:**

  ```text
  Your response will be read aloud by a text-to-speech engine, so never use ellipses since the text-to-speech engine will not know how to pronounce them.
  ```
</Accordion>

Claude is smart enough to generalize from the explanation.

### Be vigilant with examples & details

Claude 4 models pay attention to details and examples as part of instruction following. Ensure that your examples align with the behaviors you want to encourage and minimize behaviors you want to avoid.

## Guidance for specific situations

### Control the format of responses

There are a few ways that we have found to be particularly effective in steering output formatting in Claude 4 models:

1. **Tell Claude what to do instead of what not to do**

   * Instead of: "Do not use markdown in your response"
   * Try: "Your response should be composed of smoothly flowing prose paragraphs."

2. **Use XML format indicators**

   * Try: "Write the prose sections of your response in \<smoothly\_flowing\_prose\_paragraphs> tags."

3. **Match your prompt style to the desired output**

   The formatting style used in your prompt may influence Claude's response style. If you are still experiencing steerability issues with output formatting, we recommend as best as you can matching your prompt style to your desired output style. For example, removing markdown from your prompt can reduce the volume of markdown in the output.

### Leverage thinking & interleaved thinking capabilities

Claude 4 offers thinking capabilities that can be especially helpful for tasks involving reflection after tool use or complex multi-step reasoning. You can guide its initial or interleaved thinking for better results.

```text Example prompt
After receiving tool results, carefully reflect on their quality and determine optimal next steps before proceeding. Use your thinking to plan and iterate based on this new information, and then take the best next action.
```

<Info>
  For more information on thinking capabilities, see [Extended thinking](/en/docs/build-with-claude/extended-thinking).
</Info>

### Optimize parallel tool calling

Claude 4 models excel at parallel tool execution. They have a high success rate in using parallel tool calling without any prompting to do so, but some minor prompting can boost this behavior to \~100% parallel tool use success rate. We have found this prompt to be most effective:

```text Sample prompt for agents
For maximum efficiency, whenever you need to perform multiple independent operations, invoke all relevant tools simultaneously rather than sequentially.
```

### Reduce file creation in agentic coding

Claude 4 models may sometimes create new files for testing and iteration purposes, particularly when working with code. This approach allows Claude to use files, especially python scripts, as a 'temporary scratchpad' before saving its final output. Using temporary files can improve outcomes particularly for agentic coding use cases.

If you'd prefer to minimize net new file creation, you can instruct Claude to clean up after itself:

```text Sample prompt
If you create any temporary new files, scripts, or helper files for iteration, clean up these files by removing them at the end of the task.
```

### Enhance visual and frontend code generation

For frontend code generation, you can steer Claude 4 models to create complex, detailed, and interactive designs by providing explicit encouragement:

```text Sample prompt
Don't hold back. Give it your all.
```

You can also improve Claude's frontend performance in specific areas by providing additional modifiers and details on what to focus on:

* "Include as many relevant features and interactions as possible"
* "Add thoughtful details like hover states, transitions, and micro-interactions"
* "Create an impressive demonstration showcasing web development capabilities"
* "Apply design principles: hierarchy, contrast, balance, and movement"

### Avoid focusing on passing tests and hard-coding

Frontier language models can sometimes focus too heavily on making tests pass at the expense of more general solutions. To prevent this behavior and ensure robust, generalizable solutions:

```text Sample prompt
Please write a high quality, general purpose solution. Implement a solution that works correctly for all valid inputs, not just the test cases. Do not hard-code values or create solutions that only work for specific test inputs. Instead, implement the actual logic that solves the problem generally.

Focus on understanding the problem requirements and implementing the correct algorithm. Tests are there to verify correctness, not to define the solution. Provide a principled implementation that follows best practices and software design principles.

If the task is unreasonable or infeasible, or if any of the tests are incorrect, please tell me. The solution should be robust, maintainable, and extendable.
```

## Migration considerations

When migrating from Sonnet 3.7 to Claude 4:

1. **Be specific about desired behavior**: Consider describing exactly what you'd like to see in the output.

2. **Frame your instructions with modifiers**: Adding modifiers that encourage Claude to increase the quality and detail of its output can help better shape Claude's performance. For example, instead of "Create an analytics dashboard", use "Create an analytics dashboard. Include as many relevant features and interactions as possible. Go beyond the basics to create a fully-featured implementation."

3. **Request specific features explicitly**: Animations and interactive elements should be requested explicitly when desired.
````

## File: docs/09_ai/04_ai_documentation/04.1_anthropic_prompt_engineering/anthropic-extending-thinking.md
````markdown
# Extended thinking tips

This guide provides advanced strategies and techniques for getting the most out of Claude's extended thinking feature. Extended thinking allows Claude to work through complex problems step-by-step, improving performance on difficult tasks. When you enable extended thinking, Claude shows its reasoning process before providing a final answer, giving you transparency into how it arrived at its conclusion.

See [Extended thinking models](https://docs.anthropic.com/en/docs/about-claude/models/extended-thinking-models) for guidance on deciding when to use extended thinking vs. standard thinking modes.

## Before diving in

This guide presumes that you have already decided to use extended thinking mode over standard mode and have reviewed our basic steps on [how to get started with extended thinking](https://docs.anthropic.com/en/docs/about-claude/models/extended-thinking-models#getting-started-with-claude-3-7-sonnet) as well as our [extended thinking implementation guide](https://docs.anthropic.com/en/docs/build-with-claude/extended-thinking).

### Technical considerations for extended thinking

- Thinking tokens have a minimum budget of 1024 tokens. We recommend that you start with the minimum thinking budget and incrementally increase to adjust based on your needs and task complexity.
- For workloads where the optimal thinking budget is above 32K, we recommend that you use [batch processing](https://docs.anthropic.com/en/docs/build-with-claude/batch-processing) to avoid networking issues. Requests pushing the model to think above 32K tokens causes long running requests that might run up against system timeouts and open connection limits.
- Extended thinking performs best in English, though final outputs can be in [any language Claude supports](https://docs.anthropic.com/en/docs/build-with-claude/multilingual-support).
- If you need thinking below the minimum budget, we recommend using standard mode, with thinking turned off, with traditional chain-of-thought prompting with XML tags (like `<thinking>`). See [chain of thought prompting](https://docs.anthropic.com/en/docs/build-with-claude/prompt-engineering/chain-of-thought).

## Prompting techniques for extended thinking

### Use general instructions first, then troubleshoot with more step-by-step instructions

Claude often performs better with high level instructions to just think deeply about a task rather than step-by-step prescriptive guidance. The model's creativity in approaching problems may exceed a human's ability to prescribe the optimal thinking process.

For example, instead of:

```
User

Think through this math problem step by step: 
1. First, identify the variables
2. Then, set up the equation
3. Next, solve for x
...
```

Consider:

```
User

Please think about this math problem thoroughly and in great detail. 
Consider multiple approaches and show your complete reasoning.
Try different methods if your first approach doesn't work.
```

That said, Claude can still effectively follow complex structured execution steps when needed. The model can handle even longer lists with more complex instructions than previous versions. We recommend that you start with more generalized instructions, then read Claude's thinking output and iterate to provide more specific instructions to steer its thinking from there.

### Multishot prompting with extended thinking

[Multishot prompting](https://docs.anthropic.com/en/docs/build-with-claude/prompt-engineering/multishot-prompting) works well with extended thinking. When you provide Claude examples of how to think through problems, it will follow similar reasoning patterns within its extended thinking blocks.

You can include few-shot examples in your prompt in extended thinking scenarios by using XML tags like `<thinking>` or `<scratchpad>` to indicate canonical patterns of extended thinking in those examples.

Claude will generalize the pattern to the formal extended thinking process. However, it's possible you'll get better results by giving Claude free rein to think in the way it deems best.

Example:

```
User

I'm going to show you how to solve a math problem, then I want you to solve a similar one.

Problem 1: What is 15% of 80?

<thinking>
To find 15% of 80:
1. Convert 15% to a decimal: 15% = 0.15
2. Multiply: 0.15 × 80 = 12
</thinking>

The answer is 12.

Now solve this one:
Problem 2: What is 35% of 240?
```

### Maximizing instruction following with extended thinking

Claude shows significantly improved instruction following when extended thinking is enabled. The model typically:

1. Reasons about instructions inside the extended thinking block
2. Executes those instructions in the response

To maximize instruction following:

- Be clear and specific about what you want
- For complex instructions, consider breaking them into numbered steps that Claude should work through methodically
- Allow Claude enough budget to process the instructions fully in its extended thinking

### Using extended thinking to debug and steer Claude's behavior

You can use Claude's thinking output to debug Claude's logic, although this method is not always perfectly reliable.

To make the best use of this methodology, we recommend the following tips:

- We don't recommend passing Claude's extended thinking back in the user text block, as this doesn't improve performance and may actually degrade results.
- Prefilling extended thinking is explicitly not allowed, and manually changing the model's output text that follows its thinking block is likely going to degrade results due to model confusion.

When extended thinking is turned off, standard `assistant` response text [prefill](https://docs.anthropic.com/en/docs/build-with-claude/prompt-engineering/prefill-claudes-response) is still allowed.

Sometimes Claude may repeat its extended thinking in the assistant output text. If you want a clean response, instruct Claude not to repeat its extended thinking and to only output the answer.

### Making the best of long outputs and longform thinking

Claude with extended thinking enabled and [extended output capabilities (beta)](https://docs.anthropic.com/en/docs/about-claude/models/extended-thinking-models#extended-output-capabilities-beta) excels at generating large amounts of bulk data and longform text.

For dataset generation use cases, try prompts such as "Please create an extremely detailed table of…" for generating comprehensive datasets.

For use cases such as detailed content generation where you may want to generate longer extended thinking blocks and more detailed responses, try these tips:

- Increase both the maximum extended thinking length AND explicitly ask for longer outputs
- For very long outputs (20,000+ words), request a detailed outline with word counts down to the paragraph level. Then ask Claude to index its paragraphs to the outline and maintain the specified word counts

We do not recommend that you push Claude to output more tokens for outputting tokens' sake. Rather, we encourage you to start with a small thinking budget and increase as needed to find the optimal settings for your use case.

Here are example use cases where Claude excels due to longer extended thinking:

#### Complex STEM problems

Complex STEM problems require Claude to build mental models, apply specialized knowledge, and work through sequential logical steps—processes that benefit from longer reasoning time.

Standard prompt:
```
User

Write a Python script for a bouncing yellow ball within a tesseract, 
making sure to handle collision detection properly. 
Make the tesseract slowly rotate. 
Make sure the ball stays within the tesseract.
```

Enhanced prompt:
```
User

Write a Python script for a bouncing yellow ball within a tesseract, 
making sure to handle collision detection properly. 
Make the tesseract slowly rotate. 
Make sure the ball stays within the tesseract.
This complex 4D visualization challenge makes the best use of long extended thinking time as Claude works through the mathematical and programming complexity.
```

#### Constraint optimization problems

Constraint optimization challenges Claude to satisfy multiple competing requirements simultaneously, which is best accomplished when allowing for long extended thinking time so that the model can methodically address each constraint.

Standard prompt:
```
User

Plan a 7-day trip to Japan with the following constraints:
- Budget of $2,500
- Must include Tokyo and Kyoto
- Need to accommodate a vegetarian diet
- Preference for cultural experiences over shopping
- Must include one day of hiking
- No more than 2 hours of travel between locations per day
- Need free time each afternoon for calls back home
- Must avoid crowds where possible
```

Enhanced prompt:
```
User

Plan a 7-day trip to Japan with the following constraints:
- Budget of $2,500
- Must include Tokyo and Kyoto
- Need to accommodate a vegetarian diet
- Preference for cultural experiences over shopping
- Must include one day of hiking
- No more than 2 hours of travel between locations per day
- Need free time each afternoon for calls back home
- Must avoid crowds where possible
With multiple constraints to balance, Claude will naturally perform best when given more space to think through how to satisfy all requirements optimally.
```

#### Thinking frameworks

Structured thinking frameworks give Claude an explicit methodology to follow, which may work best when Claude is given long extended thinking space to follow each step.

Standard prompt:
```
User

Develop a comprehensive strategy for Microsoft entering 
the personalized medicine market by 2027.
```

Enhanced prompt:
```
User

Develop a comprehensive strategy for Microsoft entering 
the personalized medicine market by 2027.

Begin with:
1. A Blue Ocean Strategy canvas
2. Apply Porter's Five Forces to identify competitive pressures

Next, conduct a scenario planning exercise with four 
distinct futures based on regulatory and technological variables.

For each scenario:
- Develop strategic responses using the Ansoff Matrix

Finally, apply the Three Horizons framework to:
- Map the transition pathway
- Identify potential disruptive innovations at each stage
By specifying multiple analytical frameworks that must be applied sequentially, thinking time naturally increases as Claude works through each framework methodically.
```

### Have Claude reflect on and check its work for improved consistency and error handling

You can use simple natural language prompting to improve consistency and reduce errors:

1. Ask Claude to verify its work with a simple test before declaring a task complete
2. Instruct the model to analyze whether its previous step achieved the expected result
3. For coding tasks, ask Claude to run through test cases in its extended thinking

Example:

```
User

Write a function to calculate the factorial of a number. 
Before you finish, please verify your solution with test cases for:
- n=0
- n=1
- n=5
- n=10
And fix any issues you find.
```

## Next steps

- [Extended thinking cookbook](https://docs.anthropic.com/en/docs/build-with-claude/extended-thinking/cookbook): Explore practical examples of extended thinking
- [Extended thinking guide](https://docs.anthropic.com/en/docs/build-with-claude/extended-thinking): See complete technical documentation for implementing extended thinking
````

## File: docs/09_ai/04_ai_documentation/04.1_anthropic_prompt_engineering/anthropic-keep-claude-in-character-with-role-prompting-and-prefilling.md
````markdown
# Keep Claude in character with role prompting and prefilling

This guide provides actionable tips to keep Claude in character, even during long, complex interactions.

* **Use system prompts to set the role:** Use system prompts to define Claude's role and personality. This sets a strong foundation for consistent responses.  
When setting up the character, provide detailed information about the personality, background, and any specific traits or quirks. This will help the model better emulate and generalize the character's traits.
* **Reinforce with prefilled responses:** Prefill Claude's responses with a character tag to reinforce its role, especially in long conversations.
* **Prepare Claude for possible scenarios:** Provide a list of common scenarios and expected responses in your prompts. This "trains" Claude to handle diverse situations without breaking character.

## Example: Enterprise chatbot for role prompting

| Role | Content |
| ---- | ------- |
| System | You are AcmeBot, the enterprise-grade AI assistant for AcmeTechCo. Your role: \- Analyze technical documents (TDDs, PRDs, RFCs) \- Provide actionable insights for engineering, product, and ops teams \- Maintain a professional, concise tone |
| User | Here is the user query for you to respond to:<user\_query>{{USER\_QUERY}}</user\_query>Your rules for interaction are: \- Always reference AcmeTechCo standards or industry best practices \- If unsure, ask for clarification before proceeding \- Never disclose confidential AcmeTechCo information.As AcmeBot, you should handle situations along these guidelines: \- If asked about AcmeTechCo IP: "I cannot disclose TechCo's proprietary information." \- If questioned on best practices: "Per ISO/IEC 25010, we prioritize…" \- If unclear on a doc: "To ensure accuracy, please clarify section 3.2…" |
| Assistant (prefill) | \[AcmeBot\] |
````

## File: docs/09_ai/04_ai_documentation/04.1_anthropic_prompt_engineering/anthropic-let-claude-think-chain-of-thought-prompting-to-increase-performance.md
````markdown
# Let Claude think (chain of thought prompting) to increase performance

While these tips apply broadly to all Claude models, you can find prompting tips specific to extended thinking models here.

When faced with complex tasks like research, analysis, or problem-solving, giving Claude space to think can dramatically improve its performance. This technique, known as chain of thought (CoT) prompting, encourages Claude to break down problems step-by-step, leading to more accurate and nuanced outputs.

## Before implementing CoT

### Why let Claude think?

* **Accuracy:** Stepping through problems reduces errors, especially in math, logic, analysis, or generally complex tasks.
* **Coherence:** Structured thinking leads to more cohesive, well-organized responses.
* **Debugging:** Seeing Claude's thought process helps you pinpoint where prompts may be unclear.

### Why not let Claude think?

* Increased output length may impact latency.
* Not all tasks require in-depth thinking. Use CoT judiciously to ensure the right balance of performance and latency.

Use CoT for tasks that a human would need to think through, like complex math, multi-step analysis, writing complex documents, or decisions with many factors.

---

## How to prompt for thinking

The chain of thought techniques below are **ordered from least to most complex**. Less complex methods take up less space in the context window, but are also generally less powerful.

**CoT tip**: Always have Claude output its thinking. Without outputting its thought process, no thinking occurs!

* **Basic prompt**: Include "Think step-by-step" in your prompt.  
   * Lacks guidance on _how_ to think (which is especially not ideal if a task is very specific to your app, use case, or organization)

Example: Writing donor emails (basic CoT)  
| Role | Content |
| ---- | ------- |
| User | Draft personalized emails to donors asking for contributions to this year's Care for Kids program.Program information:<program>{{PROGRAM_DETAILS}}</program>Donor information:<donor>{{DONOR_DETAILS}}</donor>Think step-by-step before you write the email. |

* **Guided prompt**: Outline specific steps for Claude to follow in its thinking process.  
   * Lacks structuring to make it easy to strip out and separate the answer from the thinking.

Example: Writing donor emails (guided CoT)  
| Role | Content |
| ---- | ------- |
| User | Draft personalized emails to donors asking for contributions to this year's Care for Kids program.Program information:<program>{{PROGRAM_DETAILS}}</program>Donor information:<donor>{{DONOR_DETAILS}}</donor>Think before you write the email. First, think through what messaging might appeal to this donor given their donation history and which campaigns they've supported in the past. Then, think through what aspects of the Care for Kids program would appeal to them, given their history. Finally, write the personalized donor email using your analysis. |

* **Structured prompt**: Use XML tags like `<thinking>` and `<answer>` to separate reasoning from the final answer.

Example: Writing donor emails (structured guided CoT)  
| Role | Content |
| ---- | ------- |
| User | Draft personalized emails to donors asking for contributions to this year's Care for Kids program.Program information:<program>{{PROGRAM_DETAILS}}</program>Donor information:<donor>{{DONOR_DETAILS}}</donor>Think before you write the email in <thinking> tags. First, think through what messaging might appeal to this donor given their donation history and which campaigns they've supported in the past. Then, think through what aspects of the Care for Kids program would appeal to them, given their history. Finally, write the personalized donor email in <email> tags, using your analysis. |

### Examples

Example: Financial analysis without thinking

Without step-by-step thinking, Claude gives a recommendation that seems reasonable but lacks depth. It doesn't quantify the potential outcomes or consider historical market performance, which are crucial for making an informed decision.

| Role | Content |
| ---- | ------- |
| User | You're a financial advisor. A client wants to invest $10,000. They can choose between two options: A) A stock that historically returns 12% annually but is volatile, or B) A bond that guarantees 6% annually. The client needs the money in 5 years for a down payment on a house. Which option do you recommend? |
| Assistant | Based on the information provided, I would recommend option B, the bond that guarantees a 6% annual return. Here's why:1. Certainty: The bond offers a guaranteed 6% annual return, which provides certainty in financial planning. This is crucial when the client has a specific financial goal (down payment) with a fixed timeline (5 years).2. Risk aversion: Since the client needs this money for an important life event (buying a house), they likely have a low risk tolerance. The volatility of the stock market could jeopardize their plans if there's a downturn close to when they need the funds.3. Time horizon: With only 5 years, there's less time to recover from potential stock market downturns. Longer investment horizons (10+ years) are generally better suited for weathering stock market volatility.While the stock's historical 12% return is attractive, past performance doesn't guarantee future results. The guaranteed 6% from the bond ensures the client will have the funds they need when it's time to make the down payment. |

Example: Financial analysis with thinking

With step-by-step thinking, the advisor provides a much richer analysis. It calculates exact figures for both scenarios, considers historical market volatility, and deeply analyzes the client's risk tolerance. This thorough reasoning leads to a more confident and justifiable recommendation.

| Role | Content |
| ---- | ------- |
| User | You're a financial advisor. A client wants to invest $10,000. They can choose between two options: A) A stock that historically returns 12% annually but is volatile, or B) A bond that guarantees 6% annually. The client needs the money in 5 years for a down payment on a house. Which option do you recommend? Think step-by-step. |
| Assistant | To determine the best investment option for our client, I'll consider several factors step-by-step:<thinking>1. Understand the client's goal and timeline:- Goal: Down payment for a house- Timeline: 5 years- Implication: This is a short-term, high-priority financial goal. The client likely cannot afford significant risk or volatility.2. Analyze Option A (Stock):- Pro: Higher historical return (12% annually)- Con: Volatile (implying potential for significant gains or losses)- Calculate potential 5-year return:- Best case (12% annually): $10,000 * (1.12)^5 ≈ $17,623.42- Worst case (market crash): Could lose a substantial portion, e.g., 50% crash = $5,0003. Analyze Option B (Bond):- Pro: Guaranteed return (6% annually)- Con: Lower return compared to historical stock performance- Calculate 5-year return:- Guaranteed: $10,000 * (1.06)^5 ≈ $13,382.254. Consider risk tolerance:- Goal is a house down payment (essential, not discretionary)- Short timeline (5 years) limits ability to recover from market downturns- Conclusion: Client likely has low risk tolerance5. Historical perspective:- Stock's 12% is historical, not guaranteed- In 5-year periods, stock market can vary wildly:- 2003-2007 (pre-financial crisis): S&P 500 up ~82%- 2007-2011 (during crisis): S&P 500 down ~2%- Conclusion: Past performance doesn't guarantee future results, especially short-term6. Final analysis:- Option A (Stock): Higher potential return but unacceptable risk of not meeting the down payment goal- Option B (Bond): Guaranteed to meet ~80% of best-case stock scenario, 100% certainty of having funds</thinking><answer>I recommend Option B, the bond with a guaranteed 6% annual return. While the stock's historical 12% return is tempting, the bond ensures you'll have $13,382.25 in 5 years for your house down payment. Given the importance and short timeline of your goal, the stock's volatility poses an unacceptable risk. The bond provides certainty, which is invaluable for such a crucial financial milestone.</answer> |
````

## File: docs/09_ai/04_ai_documentation/04.1_anthropic_prompt_engineering/anthropic-long-context-prompting-tips.md
````markdown
# Long context prompting tips

While these tips apply broadly to all Claude models, you can find prompting tips specific to extended thinking models here.

Claude's extended context window (200K tokens for Claude 3 models) enables handling complex, data-rich tasks. This guide will help you leverage this power effectively.

## Essential tips for long context prompts

* **Put longform data at the top**: Place your long documents and inputs (~20K+ tokens) near the top of your prompt, above your query, instructions, and examples. This can significantly improve Claude's performance across all models.  
Queries at the end can improve response quality by up to 30% in tests, especially with complex, multi-document inputs.

* **Structure document content and metadata with XML tags**: When using multiple documents, wrap each document in `<document>` tags with `<document_content>` and `<source>` (and other metadata) subtags for clarity.  

Example multi-document structure  
```xml
<documents>
  <document index="1">
    <source>annual_report_2023.pdf</source>
    <document_content>
      {{ANNUAL_REPORT}}
    </document_content>
  </document>
  <document index="2">
    <source>competitor_analysis_q2.xlsx</source>
    <document_content>
      {{COMPETITOR_ANALYSIS}}
    </document_content>
  </document>
</documents>
Analyze the annual report and competitor analysis. Identify strategic advantages and recommend Q3 focus areas.
```

* **Ground responses in quotes**: For long document tasks, ask Claude to quote relevant parts of the documents first before carrying out its task. This helps Claude cut through the "noise" of the rest of the document's contents.  

Example quote extraction  
```xml
You are an AI physician's assistant. Your task is to help doctors diagnose possible patient illnesses.

<documents>
  <document index="1">
    <source>patient_symptoms.txt</source>
    <document_content>
      {{PATIENT_SYMPTOMS}}
    </document_content>
  </document>
  <document index="2">
    <source>patient_records.txt</source>
    <document_content>
      {{PATIENT_RECORDS}}
    </document_content>
  </document>
  <document index="3">
    <source>patient01_appt_history.txt</source>
    <document_content>
      {{PATIENT01_APPOINTMENT_HISTORY}}
    </document_content>
  </document>
</documents>

Find quotes from the patient records and appointment history that are relevant to diagnosing the patient's reported symptoms. Place these in <quotes> tags. Then, based on these quotes, list all information that would help the doctor diagnose the patient's symptoms. Place your diagnostic information in <info> tags.
````

## File: docs/09_ai/04_ai_documentation/04.1_anthropic_prompt_engineering/anthropic-prefill-claudes-response-for-greater-output-control.md
````markdown
# Prefill Claude's response for greater output control

While these tips apply broadly to all Claude models, you can find prompting tips specific to extended thinking models here.

Prefilling is only available for non-extended thinking modes. It's not currently supported with extended thinking.

When using Claude, you have the unique ability to guide its responses by prefilling the `Assistant` message. This powerful technique allows you to direct Claude's actions, skip preambles, enforce specific formats like JSON or XML, and even help Claude maintain character consistency in role-play scenarios.

In some cases where Claude is not performing as expected, a few prefilled sentences can vastly improve Claude's performance. A little prefilling goes a long way!

## How to prefill Claude's response

To prefill, include the desired initial text in the `Assistant` message (Claude's response will continue from where the `Assistant` message leaves off):

```python
import anthropic

client = anthropic.Anthropic()
response = client.messages.create(
    model="claude-3-7-sonnet-20250219",
    max_tokens=1024,
    messages=[
        {"role": "user", "content": "What is your favorite color?"},
        {"role": "assistant", "content": "As an AI assistant, I don't have a favorite color, But if I had to pick, it would be green because"}  # Prefill here
    ]
)
```

## Examples

### Example 1: Controlling output formatting and skipping the preamble

**Power user tip**: Prefilling `{` forces Claude to skip the preamble and directly output the JSON object. This is cleaner, more concise, and easier for programs to parse without additional processing.

#### Example: Structured data extraction without prefilling

| Role      | Content                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| --------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| User      | Extract the name, size, price, and color from this product description as a JSON object:<description>The SmartHome Mini is a compact smart home assistant available in black or white for only $49.99\. At just 5 inches wide, it lets you control lights, thermostats, and other connected devices via voice or app—no matter where you place it in your home. This affordable little hub brings convenient hands-free control to your smart devices.</description>                                                        |
| Assistant | Here's the extracted information in JSON format:\`\`\`json{ "name": "SmartHome Mini", "size": "5 inches wide", "price": "$49.99", "colors": \["black", "white"\]}\`\`\`I've extracted the following details from the product description:\- **Name**: SmartHome Mini\- **Size**: 5 inches wide\- **Price**: $49.99\- **Colors**: Available in black and whiteThe JSON object provides a structured format that's easy for programs to parse and use. Let me know if you need any modifications or have any other questions! |

#### Example: Structured data extraction with prefilling

| Role                          | Content                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| ----------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| User                          | Extract the name, size, price, and color from this product description as a JSON object:<description>The SmartHome Mini is a compact smart home assistant available in black or white for only $49.99\. At just 5 inches wide, it lets you control lights, thermostats, and other connected devices via voice or app—no matter where you place it in your home. This affordable little hub brings convenient hands-free control to your smart devices.</description> |
| Assistant (prefill)           | {                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| Assistant (Claude's response) | "name": "SmartHome Mini","size": "5 inches wide","price": "$49.99","colors": \[ "black", "white"\]}                                                                                                                                                                                                                                                                                                                                                                  |

### Example 2: Maintaining character in roleplay scenarios

**Role-play tip**: Prefilling a bracketed `[ROLE_NAME]` can remind Claude stay in character, even for longer and more complex conversations. This is especially powerful when combined with role prompting in the `system` parameter.

#### Example: Maintaining character without role prompting

| Role                                                          | Content                                                                                                                   |
| ------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| User (50 conversation turns in with "Sherlock Holmes" Claude) | What do you deduce about the owner of this shoe? <image>muddy\_shoe.jpg</image>                                           |
| Assistant                                                     | As an AI assistant, I would be happy to analyze the image of a muddy shoe as if you had provided it. Here's my deduction… |

#### Example: Maintaining character with role prompting

| Role                                                          | Content                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| ------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| User (50 conversation turns in with "Sherlock Holmes" Claude) | What do you deduce about the owner of this shoe? <image>muddy\_shoe.jpg</image>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| Assistant (prefill)                                           | \[Sherlock Holmes\]                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| Assistant (Claude's response)                                 | Ah, what have we here? A most curious specimen, Watson! Let us examine this shoe with a discerning eye. The mud, you see, is not your common London clay, but rather the distinctive reddish hue of the iron-rich soil found only in the environs of Hampstead Heath. And yet, the wear on the sole suggests a gait more suited to the cobblestones of Whitechapel than the gentle slopes of the Heath.Now, observe the laces! They are tied with a particular knot favored by those in the medical profession—doubtless a habit acquired during years of tying surgical gowns. But the scuff marks on the toe box tell a different tale: they are consistent with the kicking motion one might employ in the martial arts, specifically Baritsu.We may conclude, then, that our absent shoe owner is a doctor, possibly a surgeon, who resides in Whitechapel but frequents Hampstead Heath—perhaps for a secret Baritsu practice, away from prying eyes. A most intriguing case, Watson! We must make haste; the game is afoot! |

---

[Prompt library](https://docs.anthropic.com/en/docs/prompt-library)
[GitHub prompting tutorial](https://github.com/anthropics/prompt-engineering-tutorial)
[Google Sheets prompting tutorial](https://docs.google.com/spreadsheets/d/1eA6EzPfpB4xv3Obl4QQ_NMsRJqtpqBMz/edit)

Was this page helpful?

YesNo

[Give Claude a role (system prompts)](https://docs.anthropic.com/en/docs/build-with-claude/prompt-engineering/give-claude-a-role)
[Chain complex prompts](https://docs.anthropic.com/en/docs/build-with-claude/prompt-engineering/chain-complex-prompts)

## On this page

* [How to prefill Claude's response](https://docs.anthropic.com/en/docs/build-with-claude/prompt-engineering/prefill-claudes-response#how-to-prefill-claudes-response)
* [Examples](https://docs.anthropic.com/en/docs/build-with-claude/prompt-engineering/prefill-claudes-response#examples)
* [Example 1: Controlling output formatting and skipping the preamble](https://docs.anthropic.com/en/docs/build-with-claude/prompt-engineering/prefill-claudes-response#example-1-controlling-output-formatting-and-skipping-the-preamble)
* [Example 2: Maintaining character in roleplay scenarios](https://docs.anthropic.com/en/docs/build-with-claude/prompt-engineering/prefill-claudes-response#example-2-maintaining-character-in-roleplay-scenarios)
````

## File: docs/09_ai/04_ai_documentation/04.1_anthropic_prompt_engineering/anthropic-reduce-hallucinations.md
````markdown
# Reduce hallucinations

Even the most advanced language models, like Claude, can sometimes generate text that is factually incorrect or inconsistent with the given context. This phenomenon, known as "hallucination," can undermine the reliability of your AI-driven solutions. This guide will explore techniques to minimize hallucinations and ensure Claude's outputs are accurate and trustworthy.

## Basic hallucination minimization strategies

- **Allow Claude to say "I don't know":** Explicitly give Claude permission to admit uncertainty. This simple technique can drastically reduce false information.

    Example: Analyzing a merger & acquisition report

    | Role | Content |
    | ---- | ------- |
    | User | As our M&A advisor, analyze this report on the potential acquisition of AcmeCo by ExampleCorp.<report>{{REPORT}}</report>Focus on financial projections, integration risks, and regulatory hurdles. If you're unsure about any aspect or if the report lacks necessary information, say "I don't have enough information to confidently assess this." |

- **Use direct quotes for factual grounding:** For tasks involving long documents (>20K tokens), ask Claude to extract word-for-word quotes first before performing its task. This grounds its responses in the actual text, reducing hallucinations.

    Example: Auditing a data privacy policy

    | Role | Content |
    | ---- | ------- |
    | User | As our Data Protection Officer, review this updated privacy policy for GDPR and CCPA compliance.<policy>{{POLICY}}</policy>1. Extract exact quotes from the policy that are most relevant to GDPR and CCPA compliance. If you can't find relevant quotes, state "No relevant quotes found."2. Use the quotes to analyze the compliance of these policy sections, referencing the quotes by number. Only base your analysis on the extracted quotes. |

- **Verify with citations**: Make Claude's response auditable by having it cite quotes and sources for each of its claims. You can also have Claude verify each claim by finding a supporting quote after it generates a response. If it can't find a quote, it must retract the claim.

    Example: Drafting a press release on a product launch

    | Role | Content |
    | ---- | ------- |
    | User | Draft a press release for our new cybersecurity product, AcmeSecurity Pro, using only information from these product briefs and market reports.<documents>{{DOCUMENTS}}</documents>After drafting, review each claim in your press release. For each claim, find a direct quote from the documents that supports it. If you can't find a supporting quote for a claim, remove that claim from the press release and mark where it was removed with empty [] brackets. |

## Advanced techniques

- **Chain-of-thought verification**: Ask Claude to explain its reasoning step-by-step before giving a final answer. This can reveal faulty logic or assumptions.

- **Best-of-N verification**: Run Claude through the same prompt multiple times and compare the outputs. Inconsistencies across outputs could indicate hallucinations.

- **Iterative refinement**: Use Claude's outputs as inputs for follow-up prompts, asking it to verify or expand on previous statements. This can catch and correct inconsistencies.

- **External knowledge restriction**: Explicitly instruct Claude to only use information from provided documents and not its general knowledge.

**Remember**, while these techniques significantly reduce hallucinations, they don't eliminate them entirely. Always validate critical information, especially for high-stakes decisions.
````

## File: docs/09_ai/04_ai_documentation/04.1_anthropic_prompt_engineering/anthropic-use-examples-multishot-prompting-to-guide-claudes-behavior.md
````markdown
# Use examples (multishot prompting) to guide Claude's behavior

While these tips apply broadly to all Claude models, you can find prompting tips specific to extended thinking models here.

Examples are your secret weapon shortcut for getting Claude to generate exactly what you need. By providing a few well-crafted examples in your prompt, you can dramatically improve the accuracy, consistency, and quality of Claude's outputs. This technique, known as few-shot or multishot prompting, is particularly effective for tasks that require structured outputs or adherence to specific formats.

**Power up your prompts**: Include 3-5 diverse, relevant examples to show Claude exactly what you want. More examples = better performance, especially for complex tasks.

## Why use examples?

* **Accuracy**: Examples reduce misinterpretation of instructions.
* **Consistency**: Examples enforce uniform structure and style.
* **Performance**: Well-chosen examples boost Claude's ability to handle complex tasks.

## Crafting effective examples

For maximum effectiveness, make sure that your examples are:

* **Relevant**: Your examples mirror your actual use case.
* **Diverse**: Your examples cover edge cases and potential challenges, and vary enough that Claude doesn't inadvertently pick up on unintended patterns.
* **Clear**: Your examples are wrapped in `<example>` tags (if multiple, nested within `<examples>` tags) for structure.

Ask Claude to evaluate your examples for relevance, diversity, or clarity. Or have Claude generate more examples based on your initial set.

## Example: Analyzing customer feedback

Notice that in the "no examples" version, Claude does not list multiple options for each category, despite its written analysis indicating that there are multiple categories for certain feedback. It also includes a long explanation when we may not want it to.

| Role | No Examples | With Examples |
| ----------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| User | Analyze this customer feedback and categorize the issues. Use these categories: UI/UX, Performance, Feature Request, Integration, Pricing, and Other. Also rate the sentiment (Positive/Neutral/Negative) and priority (High/Medium/Low).Here is the feedback: {{FEEDBACK}} | Our CS team is overwhelmed with unstructured feedback. Your task is to analyze feedback and categorize issues for our product and engineering teams. Use these categories: UI/UX, Performance, Feature Request, Integration, Pricing, and Other. Also rate the sentiment (Positive/Neutral/Negative) and priority (High/Medium/Low). Here is an example:<example>Input: The new dashboard is a mess! It takes forever to load, and I can't find the export button. Fix this ASAP!Category: UI/UX, PerformanceSentiment: NegativePriority: High</example>Now, analyze this feedback: {{FEEDBACK}} |
| Assistant (Claude's response) | Here's the analysis of the customer feedback:Issue: UI/UXSentiment: NegativePriority: HighThe customer is frustrated with the new dashboard design, which they find cluttered and slow to load. They specifically call out the missing "export" button, which is likely a critical feature. This issue needs to be addressed as a high priority.Issue: IntegrationSentiment: PositivePriority: MediumThe customer is pleased with the existing Salesforce integration but would like to see support for Hubspot as well. This is a feature request that could be considered for a future product update.Issue: PricingSentiment: NegativePriority: HighThe customer finds the pricing to be unreasonable, especially for the basic features. They are threatening to switch to a competitor, so this is a high-priority issue that needs to be reviewed.Issue: PerformanceSentiment NegativePriority: HighThe customer is experiencing critical issues with the mobile app, where large file uploads consistently result in crashes. This is a significant problem that impacts the customer's ability to use the product effectively and should be addressed as a high priority.Issue: UI/UXSentiment: PositivePriority: LowThe customer is overall satisfied with the product, specifically calling out the intuitive UI and excellent customer support. This is a positive piece of feedback that does not require any immediate action. | Here's the analysis of the customer feedback:1\. The new dashboard is a mess! It takes forever to load, and I can't find the export button. Fix this ASAP!Category: UI/UX, PerformanceSentiment: NegativePriority: High2\. Love the Salesforce integration! But it'd be great if you could add Hubspot too.Category: Integration, Feature RequestSentiment: PositivePriority: Medium3\. Your pricing is ridiculous! $99/mo for basic features? I'm switching to Competitor X.Category: PricingSentiment: NegativePriority: High4\. The mobile app keeps crashing when I try to upload large files (>50MB). This is critical for our field agents.Category: PerformanceSentiment: NegativePriority: High5\. Overall, I'm happy with the product. The UI is intuitive, and the customer support is top-notch. Keep it up!Category: UI/UX, Other (Customer Support)Sentiment: PositivePriority: Low |
````

## File: docs/09_ai/04_ai_documentation/04.1_anthropic_prompt_engineering/anthropic-use-xml-tags-to-structure-your-prompts.md
````markdown
# Use XML tags to structure your prompts

While these tips apply broadly to all Claude models, you can find prompting tips specific to extended thinking models here.

When your prompts involve multiple components like context, instructions, and examples, XML tags can be a game-changer. They help Claude parse your prompts more accurately, leading to higher-quality outputs.

**XML tip**: Use tags like `<instructions>`, `<example>`, and `<formatting>` to clearly separate different parts of your prompt. This prevents Claude from mixing up instructions with examples or context.

## Why use XML tags?

* **Clarity:** Clearly separate different parts of your prompt and ensure your prompt is well structured.
* **Accuracy:** Reduce errors caused by Claude misinterpreting parts of your prompt.
* **Flexibility:** Easily find, add, remove, or modify parts of your prompt without rewriting everything.
* **Parseability:** Having Claude use XML tags in its output makes it easier to extract specific parts of its response by post-processing.

There are no canonical "best" XML tags that Claude has been trained with in particular, although we recommend that your tag names make sense with the information they surround.

## Tagging best practices

1. **Be consistent**: Use the same tag names throughout your prompts, and refer to those tag names when talking about the content (e.g, `Using the contract in <contract> tags...`).
2. **Nest tags**: You should nest tags `<outer><inner></inner></outer>` for hierarchical content.

**Power user tip**: Combine XML tags with other techniques like multishot prompting (`<examples>`) or chain of thought (`<thinking>`, `<answer>`). This creates super-structured, high-performance prompts.

## Examples

### Example: Generating financial reports

Without XML tags, Claude misunderstands the task and generates a report that doesn't match the required structure or tone. After substitution, there is also a chance that Claude misunderstands where one section (like the the Q1 report example) stops and another begins.

| Role      | No XML Tags                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     | With XML Tags                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| --------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| User      | You're a financial analyst at AcmeCorp. Generate a Q2 financial report for our investors. Include sections on Revenue Growth, Profit Margins, and Cash Flow, like with this example from last year: {{Q1\_REPORT}}. Use data points from this spreadsheet: {{SPREADSHEET\_DATA}}. The report should be extremely concise, to the point, professional, and in list format. It should and highlight both strengths and areas for improvement.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     | You're a financial analyst at AcmeCorp. Generate a Q2 financial report for our investors.AcmeCorp is a B2B SaaS company. Our investors value transparency and actionable insights.Use this data for your report:<data>{{SPREADSHEET\_DATA}}</data><instructions>1\. Include sections: Revenue Growth, Profit Margins, Cash Flow.2\. Highlight strengths and areas for improvement.</instructions>Make your tone concise and professional. Follow this structure:<formatting\_example>{{Q1\_REPORT}}</formatting\_example>                                                                                                                                                   |
| Assistant | Q2 Financial Report for AcmeCorp InvestorsDear Valued Investors,I am pleased to present our Q2 financial report, showcasing AcmeCorp's continued growth and resilience in the B2B SaaS market.1\. Revenue Growth:Our Q2 revenue reached $15.2M, a 22% YoY increase. This growth is primarily driven by a 30% expansion in our enterprise client base. However, our SMB segment saw a slight decline of 5%, which we aim to address through targeted marketing initiatives in Q3.2\. Profit Margins:Gross margin improved to 72% (up 3% from Q1) due to infrastructure optimizations. EBITDA margin, however, dipped to 18% (down 2%) as we invested heavily in R&D for our upcoming AI-driven features.3\. Cash Flow:Operating cash flow remains strong at $4.1M. Our cash reserves stand at $28M, providing a 15-month runway at current burn rate. We did see a 20% increase in customer acquisition costs, which we're addressing through more efficient sales strategies.In summary, AcmeCorp's core financials remain robust. We're balancing growth investments with prudent cash management. Our focus for Q3 will be revitalizing SMB growth and optimizing sales efficiency.Thank you for your continued trust.Sincerely,CFO, AcmeCorp | Q2 Financial Report for AcmeCorp Investors</output>Revenue Growth:\- Q2 revenue: $15.2M (22% YoY ↑)\- Enterprise clients: 30% ↑\- SMB segment: 5% ↓ Action: Targeted Q3 marketingProfit Margins:\- Gross margin: 72% (3% ↑ from Q1) Reason: Infrastructure optimizations\- EBITDA margin: 18% (2% ↓) Reason: R&D investment in AI featuresCash Flow:\- Operating cash flow: $4.1M (strong)\- Cash reserves: $28M (15-month runway)\- Customer acquisition cost: 20% ↑ Action: Optimize sales strategiesOutlook:\- Core financials: Robust\- Q3 focus: Revitalize SMB, optimize salesManagement remains committed to balancing growth investments with financial discipline. |

### Example: Legal contract analysis

Without XML tags, Claude's analysis is disorganized and misses key points. With tags, it provides a structured, thorough analysis that a legal team can act on.

| Role      | No XML Tags                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            | With XML Tags                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| --------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| User      | Analyze this software licensing agreement for potential risks and liabilities: {{CONTRACT}}. Focus on indemnification, limitation of liability, and IP ownership clauses. Also, note any unusual or concerning terms. Here's our standard contract for reference: {{STANDARD\_CONTRACT}}. Give a summary of findings and recommendations for our legal team.                                                                                                                                                                                                                                                                                                           | Analyze this software licensing agreement for legal risks and liabilities.We're a multinational enterprise considering this agreement for our core data infrastructure.<agreement>{{CONTRACT}}</agreement>This is our standard contract for reference:<standard\_contract>{{STANDARD\_CONTRACT}}</standard\_contract><instructions>1\. Analyze these clauses: \- Indemnification \- Limitation of liability \- IP ownership2\. Note unusual or concerning terms.3\. Compare to our standard contract.4\. Summarize findings in <findings> tags.5\. List actionable recommendations in <recommendations> tags.</instructions>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| Assistant | The provided software licensing agreement presents several concerning aspects. The indemnification clause is overly broad, potentially exposing us to significant liabilities. The limitation of liability section caps damages at a mere $500, which is inadequate for our enterprise-level usage. Regarding IP, the agreement grants the vendor joint ownership of any modifications or integrations we create.In summary, this agreement is not in our best interest. It exposes us to undue risk, limits our recourse in case of failures, and compromises our intellectual property rights. I recommend renegotiating these terms or seeking alternative vendors. | <findings>1\. Indemnification (Clause 8): \- Issue: Overly broad. We indemnify vendor against "any and all claims" arising from our use. \- Risk: Could hold us liable even for vendor's negligence or product defects. \- Deviation: Our standard limits indemnity to claims arising from our violation of agreement.2\. Limitation of Liability (Clause 9): \- Issue: Caps all damages at $500, including direct damages. \- Risk: Grossly inadequate for enterprise use. A critical failure could cost millions. \- Deviation: Our standard allows for direct damages up to 12 months of fees paid.3\. IP Ownership (Clause 12): \- Issue: Grants vendor joint ownership of our modifications/integrations. \- Risk: Vendor could use or sell our proprietary algorithms or data insights. \- Deviation: Our standard retains full ownership of our work.4\. Unusual Terms: \- Clause 5.3: Vendor can use our usage data for "any purpose." \- Clause 7.2: Vendor can terminate for "convenience" with only 7 days' notice. \- Clause 11: No warranties of any kind, even for basic merchantability.</findings><recommendations>1\. Reject this agreement. Risks far outweigh benefits for an enterprise.2\. Counter-propose: \- Indemnification: Limit to claims arising from our violation of agreement. \- Liability: Cap at 12 months' fees for direct damages; negotiate for indirect. \- IP: Full ownership of our modifications/integrations. \- Data Use: Restrict to service improvement only. \- Termination: Minimum 90 days' notice; only for cause. \- Warranties: Demand basic merchantability and fitness for purpose.3\. If vendor refuses, explore alternative providers or in-house solutions.4\. Engage legal counsel for contract negotiation given high stakes.</recommendations> |

---

[Prompt library](https://docs.anthropic.com/en/docs/prompt-library)
[GitHub prompting tutorial](https://github.com/anthropics/prompt-engineering-tutorial)
[Google Sheets prompting tutorial](https://docs.google.com/spreadsheets/d/1eA6EzPfpB4xv3Obl4QQ_NMsRJqtpqBMz/edit)

Was this page helpful?

YesNo

[Give Claude a role (system prompts)](https://docs.anthropic.com/en/docs/build-with-claude/prompt-engineering/give-claude-a-role)
[Chain complex prompts](https://docs.anthropic.com/en/docs/build-with-claude/prompt-engineering/chain-complex-prompts)

## On this page

* [Why use XML tags?](https://docs.anthropic.com/en/docs/build-with-claude/prompt-engineering/use-xml-tags#why-use-xml-tags)
* [Tagging best practices](https://docs.anthropic.com/en/docs/build-with-claude/prompt-engineering/use-xml-tags#tagging-best-practices)
* [Examples](https://docs.anthropic.com/en/docs/build-with-claude/prompt-engineering/use-xml-tags#examples)
````

## File: docs/09_ai/04_ai_documentation/04.2_claude_code/claude_code_troubleshoot.md
````markdown
# Troubleshooting

> Discover solutions to common issues with Claude Code installation and usage.

## Common installation issues

### Linux permission issues

When installing Claude Code with npm, you may encounter permission errors if your npm global prefix is not user writable (eg. `/usr`, or `/usr/local`).

#### Recommended solution: Create a user-writable npm prefix

The safest approach is to configure npm to use a directory within your home folder:

```bash
# First, save a list of your existing global packages for later migration
npm list -g --depth=0 > ~/npm-global-packages.txt

# Create a directory for your global packages
mkdir -p ~/.npm-global

# Configure npm to use the new directory path
npm config set prefix ~/.npm-global

# Note: Replace ~/.bashrc with ~/.zshrc, ~/.profile, or other appropriate file for your shell
echo 'export PATH=~/.npm-global/bin:$PATH' >> ~/.bashrc

# Apply the new PATH setting
source ~/.bashrc

# Now reinstall Claude Code in the new location
npm install -g @anthropic-ai/claude-code

# Optional: Reinstall your previous global packages in the new location
# Look at ~/npm-global-packages.txt and install packages you want to keep
```

This solution is recommended because it:

- Avoids modifying system directory permissions
- Creates a clean, dedicated location for your global npm packages
- Follows security best practices

#### System Recovery: If you have run commands that change ownership and permissions of system files or similar

If you've already run a command that changed system directory permissions (such as `sudo chown -R $USER:$(id -gn) /usr && sudo chmod -R u+w /usr`) and your system is now broken (for example, if you see `sudo: /usr/bin/sudo must be owned by uid 0 and have the setuid bit set`), you'll need to perform recovery steps.

##### Ubuntu/Debian Recovery Method:

1. While rebooting, hold **SHIFT** to access the GRUB menu

2. Select "Advanced options for Ubuntu/Debian"

3. Choose the recovery mode option

4. Select "Drop to root shell prompt"

5. Remount the filesystem as writable:

   ```bash
   mount -o remount,rw /
   ```

6. Fix permissions:

   ```bash
   # Restore root ownership
   chown -R root:root /usr
   chmod -R 755 /usr

   # Ensure /usr/local is owned by your user for npm packages
   chown -R YOUR_USERNAME:YOUR_USERNAME /usr/local

   # Set setuid bit for critical binaries
   chmod u+s /usr/bin/sudo
   chmod 4755 /usr/bin/sudo
   chmod u+s /usr/bin/su
   chmod u+s /usr/bin/passwd
   chmod u+s /usr/bin/newgrp
   chmod u+s /usr/bin/gpasswd
   chmod u+s /usr/bin/chsh
   chmod u+s /usr/bin/chfn

   # Fix sudo configuration
   chown root:root /usr/libexec/sudo/sudoers.so
   chmod 4755 /usr/libexec/sudo/sudoers.so
   chown root:root /etc/sudo.conf
   chmod 644 /etc/sudo.conf
   ```

7. Reinstall affected packages (optional but recommended):

   ```bash
   # Save list of installed packages
   dpkg --get-selections > /tmp/installed_packages.txt

   # Reinstall them
   awk '{print $1}' /tmp/installed_packages.txt | xargs -r apt-get install --reinstall -y
   ```

8. Reboot:
   ```bash
   reboot
   ```

##### Alternative Live USB Recovery Method:

If the recovery mode doesn't work, you can use a live USB:

1. Boot from a live USB (Ubuntu, Debian, or any Linux distribution)

2. Find your system partition:

   ```bash
   lsblk
   ```

3. Mount your system partition:

   ```bash
   sudo mount /dev/sdXY /mnt  # replace sdXY with your actual system partition
   ```

4. If you have a separate boot partition, mount it too:

   ```bash
   sudo mount /dev/sdXZ /mnt/boot  # if needed
   ```

5. Chroot into your system:

   ```bash
   # For Ubuntu/Debian:
   sudo chroot /mnt

   # For Arch-based systems:
   sudo arch-chroot /mnt
   ```

6. Follow steps 6-8 from the Ubuntu/Debian recovery method above

After restoring your system, follow the recommended solution above to set up a user-writable npm prefix.

## Auto-updater issues

If Claude Code can't update automatically, it may be due to permission issues with your npm global prefix directory. Follow the [recommended solution](#recommended-solution-create-a-user-writable-npm-prefix) above to fix this.

If you prefer to disable the auto-updater instead, you can
set the `DISABLE_AUTOUPDATER` [environment variable](settings#environment-variables) to `1`

## Permissions and authentication

### Repeated permission prompts

If you find yourself repeatedly approving the same commands, you can allow specific tools
to run without approval using the `/permissions` command. See [Permissions docs](/en/docs/claude-code/iam#configuring-permissions).

### Authentication issues

If you're experiencing authentication problems:

1. Run `/logout` to sign out completely
2. Close Claude Code
3. Restart with `claude` and complete the authentication process again

If problems persist, try:

```bash
rm -rf ~/.config/claude-code/auth.json
claude
```

This removes your stored authentication information and forces a clean login.

## Performance and stability

### High CPU or memory usage

Claude Code is designed to work with most development environments, but may consume significant resources when processing large codebases. If you're experiencing performance issues:

1. Use `/compact` regularly to reduce context size
2. Close and restart Claude Code between major tasks
3. Consider adding large build directories to your `.gitignore` file

### Command hangs or freezes

If Claude Code seems unresponsive:

1. Press Ctrl+C to attempt to cancel the current operation
2. If unresponsive, you may need to close the terminal and restart

### ESC key not working in JetBrains (IntelliJ, PyCharm, etc.) terminals

If you're using Claude Code in JetBrains terminals and the ESC key doesn't interrupt the agent as expected, this is likely due to a keybinding clash with JetBrains' default shortcuts.

To fix this issue:

1. Go to Settings → Tools → Terminal
2. Click the "Configure terminal keybindings" hyperlink next to "Override IDE Shortcuts"
3. Within the terminal keybindings, scroll down to "Switch focus to Editor" and delete that shortcut

This will allow the ESC key to properly function for canceling Claude Code operations instead of being captured by PyCharm's "Switch focus to Editor" action.

## Getting more help

If you're experiencing issues not covered here:

1. Use the `/bug` command within Claude Code to report problems directly to Anthropic
2. Check the [GitHub repository](https://github.com/anthropics/claude-code) for known issues
3. Run `/doctor` to check the health of your Claude Code installation
````

## File: docs/09_ai/04_ai_documentation/04.2_claude_code/claude-code-administration.md
````markdown
# Identity and Access Management

> Learn how to configure user authentication, authorization, and access controls for Claude Code in your organization.

## Authentication methods

Setting up Claude Code requires access to Anthropic models. For teams, you can set up Claude Code access in one of three ways:

- Anthropic API via the Anthropic Console
- Amazon Bedrock
- Google Vertex AI

### Anthropic API authentication

**To set up Claude Code access for your team via Anthropic API:**

1. Use your existing Anthropic Console account or create a new Anthropic Console account
2. You can add users through either method below:
   - Bulk invite users from within the Console (Console -> Settings -> Members -> Invite)
   - [Set up SSO](https://support.anthropic.com/en/articles/10280258-setting-up-single-sign-on-on-the-api-console)
3. When inviting users, they need one of the following roles:
   - "Claude Code" role means users can only create Claude Code API keys
   - "Developer" role means users can create any kind of API key
4. Each invited user needs to complete these steps:
   - Accept the Console invite
   - [Check system requirements](/en/docs/claude-code/setup#system-requirements)
   - [Install Claude Code](/en/docs/claude-code/setup#installation)
   - Login with Console account credentials

### Cloud provider authentication

**To set up Claude Code access for your team via Bedrock or Vertex:**

1. Follow the [Bedrock docs](/en/docs/claude-code/amazon-bedrock) or [Vertex docs](/en/docs/claude-code/google-vertex-ai)
2. Distribute the environment variables and instructions for generating cloud credentials to your users. Read more about how to [manage configuration here](/en/docs/claude-code/settings).
3. Users can [install Claude Code](/en/docs/claude-code/setup#installation)

## Access control and permissions

We support fine-grained permissions so that you're able to specify exactly what the agent is allowed to do (e.g. run tests, run linter) and what it is not allowed to do (e.g. update cloud infrastructure). These permission settings can be checked into version control and distributed to all developers in your organization, as well as customized by individual developers.

### Permission system

Claude Code uses a tiered permission system to balance power and safety:

| Tool Type         | Example              | Approval Required | "Yes, don't ask again" Behavior               |
| :---------------- | :------------------- | :---------------- | :-------------------------------------------- |
| Read-only         | File reads, LS, Grep | No                | N/A                                           |
| Bash Commands     | Shell execution      | Yes               | Permanently per project directory and command |
| File Modification | Edit/write files     | Yes               | Until session end                             |

### Configuring permissions

You can view & manage Claude Code's tool permissions with `/permissions`. This UI lists all permission rules and the settings.json file they are sourced from.

- **Allow** rules will allow Claude Code to use the specified tool without further manual approval.
- **Deny** rules will prevent Claude Code from using the specified tool. Deny rules take precedence over allow rules.
- **Additional directories** extend Claude's file access to directories beyond the initial working directory.
- **Default mode** controls Claude's permission behavior when encountering new requests.

Permission rules use the format: `Tool(optional-specifier)`

A rule that is just the tool name matches any use of that tool. For example, adding `Bash` to the list of allow rules would allow Claude Code to use the Bash tool without requiring user approval.

#### Permission modes

Claude Code supports several permission modes that can be set as the `defaultMode` in [settings files](/en/docs/claude-code/settings#settings-files):

| Mode                | Description                                                                  |
| :------------------ | :--------------------------------------------------------------------------- |
| `default`           | Standard behavior - prompts for permission on first use of each tool         |
| `acceptEdits`       | Automatically accepts file edit permissions for the session                  |
| `plan`              | Plan mode - Claude can analyze but not modify files or execute commands      |
| `bypassPermissions` | Skips all permission prompts (requires safe environment - see warning below) |

#### Working directories

By default, Claude has access to files in the directory where it was launched. You can extend this access:

- **During startup**: Use `--add-dir <path>` CLI argument
- **During session**: Use `/add-dir` slash command
- **Persistent configuration**: Add to `additionalDirectories` in [settings files](/en/docs/claude-code/settings#settings-files)

Files in additional directories follow the same permission rules as the original working directory - they become readable without prompts, and file editing permissions follow the current permission mode.

#### Tool-specific permission rules

Some tools use the optional specifier for more fine-grained permission controls. For example, an allow rule with `Bash(git diff:*)` would allow Bash commands that start with `git diff`. The following tools support permission rules with specifiers:

**Bash**

- `Bash(npm run build)` Matches the exact Bash command `npm run build`
- `Bash(npm run test:*)` Matches Bash commands starting with `npm run test`.

<Tip>
  Claude Code is aware of shell operators (like `&&`) so a prefix match rule like `Bash(safe-cmd:*)` won't give it permission to run the command `safe-cmd && other-cmd`
</Tip>

**Read & Edit**

`Edit` rules apply to all built-in tools that edit files. Claude will make a best-effort attempt to apply `Read` rules to all built-in tools that read files like Grep, Glob, and LS.

Read & Edit rules both follow the [gitignore](https://git-scm.com/docs/gitignore) specification. Patterns are resolved relative to the directory containing `.claude/settings.json`. To reference an absolute path, use `//`. For a path relative to your home directory, use `~/`.

- `Edit(docs/**)` Matches edits to files in the `docs` directory of your project
- `Read(~/.zshrc)` Matches reads to your `~/.zshrc` file
- `Edit(//tmp/scratch.txt)` Matches edits to `/tmp/scratch.txt`

**WebFetch**

- `WebFetch(domain:example.com)` Matches fetch requests to example.com

**MCP**

- `mcp__puppeteer` Matches any tool provided by the `puppeteer` server (name configured in Claude Code)
- `mcp__puppeteer__puppeteer_navigate` Matches the `puppeteer_navigate` tool provided by the `puppeteer` server

### Enterprise managed policy settings

For enterprise deployments of Claude Code, we support enterprise managed policy settings that take precedence over user and project settings. This allows system administrators to enforce security policies that users cannot override.

System administrators can deploy policies to:

- **macOS**: `/Library/Application Support/ClaudeCode/managed-settings.json`
- **Linux and Windows (via WSL)**: `/etc/claude-code/managed-settings.json`

These policy files follow the same format as regular [settings files](/en/docs/claude-code/settings#settings-files) but cannot be overridden by user or project settings. This ensures consistent security policies across your organization.

### Settings precedence

When multiple settings sources exist, they are applied in the following order (highest to lowest precedence):

1. Enterprise policies
2. Command line arguments
3. Local project settings (`.claude/settings.local.json`)
4. Shared project settings (`.claude/settings.json`)
5. User settings (`~/.claude/settings.json`)

This hierarchy ensures that organizational policies are always enforced while still allowing flexibility at the project and user levels where appropriate.

### Additional permission control with hooks

[Claude Code hooks](/en/docs/claude-code/hooks) provide a way to register custom shell commands to perform permission evaluation at runtime. When Claude Code makes a tool call, PreToolUse hooks run before the permission system runs, and the hook output can determine whether to approve or deny the tool call in place of the permission system.

## Credential management

Claude Code supports authentication via Claude.ai credentials, Anthropic API credentials, Bedrock Auth, and Vertex Auth. On macOS, the API keys, OAuth tokens, and other credentials are stored on encrypted macOS Keychain. Alternately, the setting [apiKeyHelper](/en/docs/claude-code/settings#available-settings) can be set to a shell script which returns an API key. By default, this helper is called after 5 minutes or on HTTP 401 response; specifying environment variable `CLAUDE_CODE_API_KEY_HELPER_TTL_MS` defines a custom refresh interval.

# Identity and Access Management

> Learn how to configure user authentication, authorization, and access controls for Claude Code in your organization.

## Authentication methods

Setting up Claude Code requires access to Anthropic models. For teams, you can set up Claude Code access in one of three ways:

- Anthropic API via the Anthropic Console
- Amazon Bedrock
- Google Vertex AI

### Anthropic API authentication

**To set up Claude Code access for your team via Anthropic API:**

1. Use your existing Anthropic Console account or create a new Anthropic Console account
2. You can add users through either method below:
   - Bulk invite users from within the Console (Console -> Settings -> Members -> Invite)
   - [Set up SSO](https://support.anthropic.com/en/articles/10280258-setting-up-single-sign-on-on-the-api-console)
3. When inviting users, they need one of the following roles:
   - "Claude Code" role means users can only create Claude Code API keys
   - "Developer" role means users can create any kind of API key
4. Each invited user needs to complete these steps:
   - Accept the Console invite
   - [Check system requirements](/en/docs/claude-code/setup#system-requirements)
   - [Install Claude Code](/en/docs/claude-code/setup#installation)
   - Login with Console account credentials

### Cloud provider authentication

**To set up Claude Code access for your team via Bedrock or Vertex:**

1. Follow the [Bedrock docs](/en/docs/claude-code/amazon-bedrock) or [Vertex docs](/en/docs/claude-code/google-vertex-ai)
2. Distribute the environment variables and instructions for generating cloud credentials to your users. Read more about how to [manage configuration here](/en/docs/claude-code/settings).
3. Users can [install Claude Code](/en/docs/claude-code/setup#installation)

## Access control and permissions

We support fine-grained permissions so that you're able to specify exactly what the agent is allowed to do (e.g. run tests, run linter) and what it is not allowed to do (e.g. update cloud infrastructure). These permission settings can be checked into version control and distributed to all developers in your organization, as well as customized by individual developers.

### Permission system

Claude Code uses a tiered permission system to balance power and safety:

| Tool Type         | Example              | Approval Required | "Yes, don't ask again" Behavior               |
| :---------------- | :------------------- | :---------------- | :-------------------------------------------- |
| Read-only         | File reads, LS, Grep | No                | N/A                                           |
| Bash Commands     | Shell execution      | Yes               | Permanently per project directory and command |
| File Modification | Edit/write files     | Yes               | Until session end                             |

### Configuring permissions

You can view & manage Claude Code's tool permissions with `/permissions`. This UI lists all permission rules and the settings.json file they are sourced from.

- **Allow** rules will allow Claude Code to use the specified tool without further manual approval.
- **Deny** rules will prevent Claude Code from using the specified tool. Deny rules take precedence over allow rules.
- **Additional directories** extend Claude's file access to directories beyond the initial working directory.
- **Default mode** controls Claude's permission behavior when encountering new requests.

Permission rules use the format: `Tool(optional-specifier)`

A rule that is just the tool name matches any use of that tool. For example, adding `Bash` to the list of allow rules would allow Claude Code to use the Bash tool without requiring user approval.

#### Permission modes

Claude Code supports several permission modes that can be set as the `defaultMode` in [settings files](/en/docs/claude-code/settings#settings-files):

| Mode                | Description                                                                  |
| :------------------ | :--------------------------------------------------------------------------- |
| `default`           | Standard behavior - prompts for permission on first use of each tool         |
| `acceptEdits`       | Automatically accepts file edit permissions for the session                  |
| `plan`              | Plan mode - Claude can analyze but not modify files or execute commands      |
| `bypassPermissions` | Skips all permission prompts (requires safe environment - see warning below) |

#### Working directories

By default, Claude has access to files in the directory where it was launched. You can extend this access:

- **During startup**: Use `--add-dir <path>` CLI argument
- **During session**: Use `/add-dir` slash command
- **Persistent configuration**: Add to `additionalDirectories` in [settings files](/en/docs/claude-code/settings#settings-files)

Files in additional directories follow the same permission rules as the original working directory - they become readable without prompts, and file editing permissions follow the current permission mode.

#### Tool-specific permission rules

Some tools use the optional specifier for more fine-grained permission controls. For example, an allow rule with `Bash(git diff:*)` would allow Bash commands that start with `git diff`. The following tools support permission rules with specifiers:

**Bash**

- `Bash(npm run build)` Matches the exact Bash command `npm run build`
- `Bash(npm run test:*)` Matches Bash commands starting with `npm run test`.

<Tip>
  Claude Code is aware of shell operators (like `&&`) so a prefix match rule like `Bash(safe-cmd:*)` won't give it permission to run the command `safe-cmd && other-cmd`
</Tip>

**Read & Edit**

`Edit` rules apply to all built-in tools that edit files. Claude will make a best-effort attempt to apply `Read` rules to all built-in tools that read files like Grep, Glob, and LS.

Read & Edit rules both follow the [gitignore](https://git-scm.com/docs/gitignore) specification. Patterns are resolved relative to the directory containing `.claude/settings.json`. To reference an absolute path, use `//`. For a path relative to your home directory, use `~/`.

- `Edit(docs/**)` Matches edits to files in the `docs` directory of your project
- `Read(~/.zshrc)` Matches reads to your `~/.zshrc` file
- `Edit(//tmp/scratch.txt)` Matches edits to `/tmp/scratch.txt`

**WebFetch**

- `WebFetch(domain:example.com)` Matches fetch requests to example.com

**MCP**

- `mcp__puppeteer` Matches any tool provided by the `puppeteer` server (name configured in Claude Code)
- `mcp__puppeteer__puppeteer_navigate` Matches the `puppeteer_navigate` tool provided by the `puppeteer` server

### Enterprise managed policy settings

For enterprise deployments of Claude Code, we support enterprise managed policy settings that take precedence over user and project settings. This allows system administrators to enforce security policies that users cannot override.

System administrators can deploy policies to:

- **macOS**: `/Library/Application Support/ClaudeCode/managed-settings.json`
- **Linux and Windows (via WSL)**: `/etc/claude-code/managed-settings.json`

These policy files follow the same format as regular [settings files](/en/docs/claude-code/settings#settings-files) but cannot be overridden by user or project settings. This ensures consistent security policies across your organization.

### Settings precedence

When multiple settings sources exist, they are applied in the following order (highest to lowest precedence):

1. Enterprise policies
2. Command line arguments
3. Local project settings (`.claude/settings.local.json`)
4. Shared project settings (`.claude/settings.json`)
5. User settings (`~/.claude/settings.json`)

This hierarchy ensures that organizational policies are always enforced while still allowing flexibility at the project and user levels where appropriate.

### Additional permission control with hooks

[Claude Code hooks](/en/docs/claude-code/hooks) provide a way to register custom shell commands to perform permission evaluation at runtime. When Claude Code makes a tool call, PreToolUse hooks run before the permission system runs, and the hook output can determine whether to approve or deny the tool call in place of the permission system.

## Credential management

Claude Code supports authentication via Claude.ai credentials, Anthropic API credentials, Bedrock Auth, and Vertex Auth. On macOS, the API keys, OAuth tokens, and other credentials are stored on encrypted macOS Keychain. Alternately, the setting [apiKeyHelper](/en/docs/claude-code/settings#available-settings) can be set to a shell script which returns an API key. By default, this helper is called after 5 minutes or on HTTP 401 response; specifying environment variable `CLAUDE_CODE_API_KEY_HELPER_TTL_MS` defines a custom refresh interval.

# Manage costs effectively

> Learn how to track and optimize token usage and costs when using Claude Code.

Claude Code consumes tokens for each interaction. The average cost is \$6 per developer per day, with daily costs remaining below \$12 for 90% of users.

For team usage, Claude Code charges by API token consumption. On average, Claude Code costs \~\$50-60/developer per month with Sonnet 4 though there is large variance depending on how many instances users are running and whether they're using it in automation.

## Track your costs

- Use `/cost` to see current session usage
- **Anthropic Console users**:
  - Check [historical usage](https://support.anthropic.com/en/articles/9534590-cost-and-usage-reporting-in-console) in the Anthropic Console (requires Admin or Billing role)
  - Set [workspace spend limits](https://support.anthropic.com/en/articles/9796807-creating-and-managing-workspaces) for the Claude Code workspace (requires Admin role)
- **Pro and Max plan users**: Usage is included in your subscription

## Managing costs for teams

When using Anthropic API, you can limit the total Claude Code workspace spend. To configure, [follow these instructions](https://support.anthropic.com/en/articles/9796807-creating-and-managing-workspaces). Admins can view cost and usage reporting by [following these instructions](https://support.anthropic.com/en/articles/9534590-cost-and-usage-reporting-in-console).

On Bedrock and Vertex, Claude Code does not send metrics from your cloud. In order to get cost metrics, several large enterprises reported using [LiteLLM](/en/docs/claude-code/bedrock-vertex-proxies#litellm), which is an open-source tool that helps companies [track spend by key](https://docs.litellm.ai/docs/proxy/virtual_keys#tracking-spend). This project is unaffiliated with Anthropic and we have not audited its security.

## Reduce token usage

- **Compact conversations:**
  - Claude uses auto-compact by default when context exceeds 95% capacity
  - Toggle auto-compact: Run `/config` and navigate to "Auto-compact enabled"
  - Use `/compact` manually when context gets large
  - Add custom instructions: `/compact Focus on code samples and API usage`
  - Customize compaction by adding to CLAUDE.md:

    ```markdown
    # Summary instructions

    When you are using compact, please focus on test output and code changes
    ```

- **Write specific queries:** Avoid vague requests that trigger unnecessary scanning

- **Break down complex tasks:** Split large tasks into focused interactions

- **Clear history between tasks:** Use `/clear` to reset context

Costs can vary significantly based on:

- Size of codebase being analyzed
- Complexity of queries
- Number of files being searched or modified
- Length of conversation history
- Frequency of compacting conversations
- Background processes (haiku generation, conversation summarization)

## Background token usage

Claude Code uses tokens for some background functionality even when idle:

- **Haiku generation**: Small creative messages that appear while you type (approximately 1 cent per day)
- **Conversation summarization**: Background jobs that summarize previous conversations for the `claude --resume` feature
- **Command processing**: Some commands like `/cost` may generate requests to check status

These background processes consume a small amount of tokens (typically under \$0.04 per session) even without active interaction.

<Note>
  For team deployments, we recommend starting with a small pilot group to
  establish usage patterns before wider rollout.
</Note>
````

## File: docs/09_ai/04_ai_documentation/04.2_claude_code/claude-code-commands.md
````markdown
# Slash commands

> Control Claude's behavior during an interactive session with slash commands.

## Built-in slash commands

| Command                   | Purpose                                                                        |
| :------------------------ | :----------------------------------------------------------------------------- |
| `/add-dir`                | Add additional working directories                                             |
| `/bug`                    | Report bugs (sends conversation to Anthropic)                                  |
| `/clear`                  | Clear conversation history                                                     |
| `/compact [instructions]` | Compact conversation with optional focus instructions                          |
| `/config`                 | View/modify configuration                                                      |
| `/cost`                   | Show token usage statistics                                                    |
| `/doctor`                 | Checks the health of your Claude Code installation                             |
| `/help`                   | Get usage help                                                                 |
| `/init`                   | Initialize project with CLAUDE.md guide                                        |
| `/login`                  | Switch Anthropic accounts                                                      |
| `/logout`                 | Sign out from your Anthropic account                                           |
| `/mcp`                    | Manage MCP server connections and OAuth authentication                         |
| `/memory`                 | Edit CLAUDE.md memory files                                                    |
| `/model`                  | Select or change the AI model                                                  |
| `/permissions`            | View or update [permissions](/en/docs/claude-code/iam#configuring-permissions) |
| `/pr_comments`            | View pull request comments                                                     |
| `/review`                 | Request code review                                                            |
| `/status`                 | View account and system statuses                                               |
| `/terminal-setup`         | Install Shift+Enter key binding for newlines (iTerm2 and VSCode only)          |
| `/vim`                    | Enter vim mode for alternating insert and command modes                        |

## Custom slash commands

Custom slash commands allow you to define frequently-used prompts as Markdown files that Claude Code can execute. Commands are organized by scope (project-specific or personal) and support namespacing through directory structures.

### Syntax

```
/<prefix>:<command-name> [arguments]
```

#### Parameters

| Parameter        | Description                                                         |
| :--------------- | :------------------------------------------------------------------ |
| `<prefix>`       | Command scope (`project` for project-specific, `user` for personal) |
| `<command-name>` | Name derived from the Markdown filename (without `.md` extension)   |
| `[arguments]`    | Optional arguments passed to the command                            |

### Command types

#### Project commands

Commands stored in your repository and shared with your team.

**Location**: `.claude/commands/`\
**Prefix**: `/project:`

In the following example, we create the `/project:optimize` command:

```bash
# Create a project command
mkdir -p .claude/commands
echo "Analyze this code for performance issues and suggest optimizations:" > .claude/commands/optimize.md
```

#### Personal commands

Commands available across all your projects.

**Location**: `~/.claude/commands/`\
**Prefix**: `/user:`

In the following example, we create the `/user:security-review` command:

```bash
# Create a personal command
mkdir -p ~/.claude/commands
echo "Review this code for security vulnerabilities:" > ~/.claude/commands/security-review.md
```

### Features

#### Namespacing

Organize commands in subdirectories to create namespaced commands.

**Structure**: `<prefix>:<namespace>:<command>`

For example, a file at `.claude/commands/frontend/component.md` creates the command `/project:frontend:component`

#### Arguments

Pass dynamic values to commands using the `$ARGUMENTS` placeholder.

For example:

```bash
# Command definition
echo 'Fix issue #$ARGUMENTS following our coding standards' > .claude/commands/fix-issue.md

# Usage
> /project:fix-issue 123
```

#### Bash command execution

Execute bash commands before the slash command runs using the `!` prefix. The output is included in the command context.

For example:

```markdown
---
allowed-tools: Bash(git add:*), Bash(git status:*), Bash(git commit:*)
description: Create a git commit
---

## Context

- Current git status: !`git status`
- Current git diff (staged and unstaged changes): !`git diff HEAD`
- Current branch: !`git branch --show-current`
- Recent commits: !`git log --oneline -10`

## Your task

Based on the above changes, create a single git commit.
```

#### File references

Include file contents in commands using the `@` prefix to [reference files](/en/docs/claude-code/common-workflows#reference-files-and-directories).

For example:

```markdown
# Reference a specific file

Review the implementation in @src/utils/helpers.js

# Reference multiple files

Compare @src/old-version.js with @src/new-version.js
```

#### Thinking mode

Slash commands can trigger extended thinking by including [extended thinking keywords](/en/docs/claude-code/common-workflows#use-extended-thinking).

### File format

Command files support:

- **Markdown format** (`.md` extension)
- **YAML frontmatter** for metadata:
  - `allowed-tools`: List of tools the command can use
  - `description`: Brief description of the command
- **Dynamic content** with bash commands (`!`) and file references (`@`)
- **Prompt instructions** as the main content

## MCP slash commands

MCP servers can expose prompts as slash commands that become available in Claude Code. These commands are dynamically discovered from connected MCP servers.

### Command format

MCP commands follow the pattern:

```
/mcp__<server-name>__<prompt-name> [arguments]
```

### Features

#### Dynamic discovery

MCP commands are automatically available when:

- An MCP server is connected and active
- The server exposes prompts through the MCP protocol
- The prompts are successfully retrieved during connection

#### Arguments

MCP prompts can accept arguments defined by the server:

```
# Without arguments
> /mcp__github__list_prs

# With arguments
> /mcp__github__pr_review 456
> /mcp__jira__create_issue "Bug title" high
```

#### Naming conventions

- Server and prompt names are normalized
- Spaces and special characters become underscores
- Names are lowercased for consistency

### Managing MCP connections

Use the `/mcp` command to:

- View all configured MCP servers
- Check connection status
- Authenticate with OAuth-enabled servers
- Clear authentication tokens
- View available tools and prompts from each server

## See also

- [Interactive mode](/en/docs/claude-code/interactive-mode) - Shortcuts, input modes, and interactive features
- [CLI reference](/en/docs/claude-code/cli-reference) - Command-line flags and options
- [Settings](/en/docs/claude-code/settings) - Configuration options
- [Memory management](/en/docs/claude-code/memory) - Managing Claude's memory across sessions
````

## File: docs/09_ai/04_ai_documentation/04.2_claude_code/claude-code-common-workflows.md
````markdown
# Common workflows

> Learn about common workflows with Claude Code.

Each task in this document includes clear instructions, example commands, and best practices to help you get the most from Claude Code.

## Understand new codebases

### Get a quick codebase overview

Suppose you've just joined a new project and need to understand its structure quickly.

<Steps>
  <Step title="Navigate to the project root directory">
    ```bash
    cd /path/to/project
    ```
  </Step>

  <Step title="Start Claude Code">
    ```bash
    claude
    ```
  </Step>

  <Step title="Ask for a high-level overview">
    ```
    > give me an overview of this codebase
    ```
  </Step>

  <Step title="Dive deeper into specific components">
    ```
    > explain the main architecture patterns used here
    ```

    ```
    > what are the key data models?
    ```

    ```
    > how is authentication handled?
    ```

  </Step>
</Steps>

<Tip>
  Tips:

- Start with broad questions, then narrow down to specific areas
- Ask about coding conventions and patterns used in the project
- Request a glossary of project-specific terms
  </Tip>

### Find relevant code

Suppose you need to locate code related to a specific feature or functionality.

<Steps>
  <Step title="Ask Claude to find relevant files">
    ```
    > find the files that handle user authentication
    ```
  </Step>

  <Step title="Get context on how components interact">
    ```
    > how do these authentication files work together?
    ```
  </Step>

  <Step title="Understand the execution flow">
    ```
    > trace the login process from front-end to database
    ```
  </Step>
</Steps>

<Tip>
  Tips:

- Be specific about what you're looking for
- Use domain language from the project
  </Tip>

---

## Fix bugs efficiently

Suppose you've encountered an error message and need to find and fix its source.

<Steps>
  <Step title="Share the error with Claude">
    ```
    > I'm seeing an error when I run npm test
    ```
  </Step>

  <Step title="Ask for fix recommendations">
    ```
    > suggest a few ways to fix the @ts-ignore in user.ts
    ```
  </Step>

  <Step title="Apply the fix">
    ```
    > update user.ts to add the null check you suggested
    ```
  </Step>
</Steps>

<Tip>
  Tips:

- Tell Claude the command to reproduce the issue and get a stack trace
- Mention any steps to reproduce the error
- Let Claude know if the error is intermittent or consistent
  </Tip>

---

## Refactor code

Suppose you need to update old code to use modern patterns and practices.

<Steps>
  <Step title="Identify legacy code for refactoring">
    ```
    > find deprecated API usage in our codebase
    ```
  </Step>

  <Step title="Get refactoring recommendations">
    ```
    > suggest how to refactor utils.js to use modern JavaScript features
    ```
  </Step>

  <Step title="Apply the changes safely">
    ```
    > refactor utils.js to use ES2024 features while maintaining the same behavior
    ```
  </Step>

  <Step title="Verify the refactoring">
    ```
    > run tests for the refactored code
    ```
  </Step>
</Steps>

<Tip>
  Tips:

- Ask Claude to explain the benefits of the modern approach
- Request that changes maintain backward compatibility when needed
- Do refactoring in small, testable increments
  </Tip>

---

## Work with tests

Suppose you need to add tests for uncovered code.

<Steps>
  <Step title="Identify untested code">
    ```
    > find functions in NotificationsService.swift that are not covered by tests
    ```
  </Step>

  <Step title="Generate test scaffolding">
    ```
    > add tests for the notification service
    ```
  </Step>

  <Step title="Add meaningful test cases">
    ```
    > add test cases for edge conditions in the notification service
    ```
  </Step>

  <Step title="Run and verify tests">
    ```
    > run the new tests and fix any failures
    ```
  </Step>
</Steps>

<Tip>
  Tips:

- Ask for tests that cover edge cases and error conditions
- Request both unit and integration tests when appropriate
- Have Claude explain the testing strategy
  </Tip>

---

## Create pull requests

Suppose you need to create a well-documented pull request for your changes.

<Steps>
  <Step title="Summarize your changes">
    ```
    > summarize the changes I've made to the authentication module
    ```
  </Step>

  <Step title="Generate a PR with Claude">
    ```
    > create a pr
    ```
  </Step>

  <Step title="Review and refine">
    ```
    > enhance the PR description with more context about the security improvements
    ```
  </Step>

  <Step title="Add testing details">
    ```
    > add information about how these changes were tested
    ```
  </Step>
</Steps>

<Tip>
  Tips:

- Ask Claude directly to make a PR for you
- Review Claude's generated PR before submitting
- Ask Claude to highlight potential risks or considerations
  </Tip>

## Handle documentation

Suppose you need to add or update documentation for your code.

<Steps>
  <Step title="Identify undocumented code">
    ```
    > find functions without proper JSDoc comments in the auth module
    ```
  </Step>

  <Step title="Generate documentation">
    ```
    > add JSDoc comments to the undocumented functions in auth.js
    ```
  </Step>

  <Step title="Review and enhance">
    ```
    > improve the generated documentation with more context and examples
    ```
  </Step>

  <Step title="Verify documentation">
    ```
    > check if the documentation follows our project standards
    ```
  </Step>
</Steps>

<Tip>
  Tips:

- Specify the documentation style you want (JSDoc, docstrings, etc.)
- Ask for examples in the documentation
- Request documentation for public APIs, interfaces, and complex logic
  </Tip>

---

## Work with images

Suppose you need to work with images in your codebase, and you want Claude's help analyzing image content.

<Steps>
  <Step title="Add an image to the conversation">
    You can use any of these methods:

    1. Drag and drop an image into the Claude Code window
    2. Copy an image and paste it into the CLI with ctrl+v (Do not use cmd+v)
    3. Provide an image path to Claude. E.g., "Analyze this image: /path/to/your/image.png"

  </Step>

  <Step title="Ask Claude to analyze the image">
    ```
    > What does this image show?
    ```

    ```
    > Describe the UI elements in this screenshot
    ```

    ```
    > Are there any problematic elements in this diagram?
    ```

  </Step>

  <Step title="Use images for context">
    ```
    > Here's a screenshot of the error. What's causing it?
    ```

    ```
    > This is our current database schema. How should we modify it for the new feature?
    ```

  </Step>

  <Step title="Get code suggestions from visual content">
    ```
    > Generate CSS to match this design mockup
    ```

    ```
    > What HTML structure would recreate this component?
    ```

  </Step>
</Steps>

<Tip>
  Tips:

- Use images when text descriptions would be unclear or cumbersome
- Include screenshots of errors, UI designs, or diagrams for better context
- You can work with multiple images in a conversation
- Image analysis works with diagrams, screenshots, mockups, and more
  </Tip>

---

## Reference files and directories

Use @ to quickly include files or directories without waiting for Claude to read them.

<Steps>
  <Step title="Reference a single file">
    ```
    > Explain the logic in @src/utils/auth.js
    ```

    This includes the full content of the file in the conversation.

  </Step>

  <Step title="Reference a directory">
    ```
    > What's the structure of @src/components?
    ```

    This provides a directory listing with file information.

  </Step>

  <Step title="Reference MCP resources">
    ```
    > Show me the data from @github:repos/owner/repo/issues
    ```

    This fetches data from connected MCP servers using the format @server:resource. See [MCP resources](/en/docs/claude-code/mcp#use-mcp-resources) for details.

  </Step>
</Steps>

<Tip>
  Tips:

- File paths can be relative or absolute
- @ file references add CLAUDE.md in the file's directory and parent directories to context
- Directory references show file listings, not contents
- You can reference multiple files in a single message (e.g., "@file1.js and @file2.js")
  </Tip>

---

## Use extended thinking

Suppose you're working on complex architectural decisions, challenging bugs, or planning multi-step implementations that require deep reasoning.

<Steps>
  <Step title="Provide context and ask Claude to think">
    ```
    > I need to implement a new authentication system using OAuth2 for our API. Think deeply about the best approach for implementing this in our codebase.
    ```

    Claude will gather relevant information from your codebase and
    use extended thinking, which will be visible in the interface.

  </Step>

  <Step title="Refine the thinking with follow-up prompts">
    ```
    > think about potential security vulnerabilities in this approach
    ```

    ```
    > think harder about edge cases we should handle
    ```

  </Step>
</Steps>

<Tip>
  Tips to get the most value out of extended thinking:

Extended thinking is most valuable for complex tasks such as:

- Planning complex architectural changes
- Debugging intricate issues
- Creating implementation plans for new features
- Understanding complex codebases
- Evaluating tradeoffs between different approaches

The way you prompt for thinking results in varying levels of thinking depth:

- "think" triggers basic extended thinking
- intensifying phrases such as "think more", "think a lot", "think harder", or "think longer" triggers deeper thinking

For more extended thinking prompting tips, see [Extended thinking tips](/en/docs/build-with-claude/prompt-engineering/extended-thinking-tips).
</Tip>

<Note>
  Claude will display its thinking process as italic gray text above the
  response.
</Note>

---

## Resume previous conversations

Suppose you've been working on a task with Claude Code and need to continue where you left off in a later session.

Claude Code provides two options for resuming previous conversations:

- `--continue` to automatically continue the most recent conversation
- `--resume` to display a conversation picker

<Steps>
  <Step title="Continue the most recent conversation">
    ```bash
    claude --continue
    ```

    This immediately resumes your most recent conversation without any prompts.

  </Step>

  <Step title="Continue in non-interactive mode">
    ```bash
    claude --continue --print "Continue with my task"
    ```

    Use `--print` with `--continue` to resume the most recent conversation in non-interactive mode, perfect for scripts or automation.

  </Step>

  <Step title="Show conversation picker">
    ```bash
    claude --resume
    ```

    This displays an interactive conversation selector showing:

    * Conversation start time
    * Initial prompt or conversation summary
    * Message count

    Use arrow keys to navigate and press Enter to select a conversation.

  </Step>
</Steps>

<Tip>
  Tips:

- Conversation history is stored locally on your machine
- Use `--continue` for quick access to your most recent conversation
- Use `--resume` when you need to select a specific past conversation
- When resuming, you'll see the entire conversation history before continuing
- The resumed conversation starts with the same model and configuration as the original

How it works:

1. **Conversation Storage**: All conversations are automatically saved locally with their full message history
2. **Message Deserialization**: When resuming, the entire message history is restored to maintain context
3. **Tool State**: Tool usage and results from the previous conversation are preserved
4. **Context Restoration**: The conversation resumes with all previous context intact

Examples:

```bash
# Continue most recent conversation
claude --continue

# Continue most recent conversation with a specific prompt
claude --continue --print "Show me our progress"

# Show conversation picker
claude --resume

# Continue most recent conversation in non-interactive mode
claude --continue --print "Run the tests again"
```

</Tip>

---

## Run parallel Claude Code sessions with Git worktrees

Suppose you need to work on multiple tasks simultaneously with complete code isolation between Claude Code instances.

<Steps>
  <Step title="Understand Git worktrees">
    Git worktrees allow you to check out multiple branches from the same
    repository into separate directories. Each worktree has its own working
    directory with isolated files, while sharing the same Git history. Learn
    more in the [official Git worktree
    documentation](https://git-scm.com/docs/git-worktree).
  </Step>

  <Step title="Create a new worktree">
    ```bash
    # Create a new worktree with a new branch
    git worktree add ../project-feature-a -b feature-a

    # Or create a worktree with an existing branch
    git worktree add ../project-bugfix bugfix-123
    ```

    This creates a new directory with a separate working copy of your repository.

  </Step>

  <Step title="Run Claude Code in each worktree">
    ```bash
    # Navigate to your worktree
    cd ../project-feature-a

    # Run Claude Code in this isolated environment
    claude
    ```

  </Step>

  <Step title="Run Claude in another worktree">
    ```bash
    cd ../project-bugfix
    claude
    ```
  </Step>

  <Step title="Manage your worktrees">
    ```bash
    # List all worktrees
    git worktree list

    # Remove a worktree when done
    git worktree remove ../project-feature-a
    ```

  </Step>
</Steps>

<Tip>
  Tips:

- Each worktree has its own independent file state, making it perfect for parallel Claude Code sessions
- Changes made in one worktree won't affect others, preventing Claude instances from interfering with each other
- All worktrees share the same Git history and remote connections
- For long-running tasks, you can have Claude working in one worktree while you continue development in another
- Use descriptive directory names to easily identify which task each worktree is for
- Remember to initialize your development environment in each new worktree according to your project's setup. Depending on your stack, this might include:
  _ JavaScript projects: Running dependency installation (`npm install`, `yarn`)
  _ Python projects: Setting up virtual environments or installing with package managers \* Other languages: Following your project's standard setup process
  </Tip>

---

## Use Claude as a unix-style utility

### Add Claude to your verification process

Suppose you want to use Claude Code as a linter or code reviewer.

**Add Claude to your build script:**

```json
// package.json
{
    ...
    "scripts": {
        ...
        "lint:claude": "claude -p 'you are a linter. please look at the changes vs. main and report any issues related to typos. report the filename and line number on one line, and a description of the issue on the second line. do not return any other text.'"
    }
}
```

<Tip>
  Tips:

- Use Claude for automated code review in your CI/CD pipeline
- Customize the prompt to check for specific issues relevant to your project
- Consider creating multiple scripts for different types of verification
  </Tip>

### Pipe in, pipe out

Suppose you want to pipe data into Claude, and get back data in a structured format.

**Pipe data through Claude:**

```bash
cat build-error.txt | claude -p 'concisely explain the root cause of this build error' > output.txt
```

<Tip>
  Tips:

- Use pipes to integrate Claude into existing shell scripts
- Combine with other Unix tools for powerful workflows
- Consider using --output-format for structured output
  </Tip>

### Control output format

Suppose you need Claude's output in a specific format, especially when integrating Claude Code into scripts or other tools.

<Steps>
  <Step title="Use text format (default)">
    ```bash
    cat data.txt | claude -p 'summarize this data' --output-format text > summary.txt
    ```

    This outputs just Claude's plain text response (default behavior).

  </Step>

  <Step title="Use JSON format">
    ```bash
    cat code.py | claude -p 'analyze this code for bugs' --output-format json > analysis.json
    ```

    This outputs a JSON array of messages with metadata including cost and duration.

  </Step>

  <Step title="Use streaming JSON format">
    ```bash
    cat log.txt | claude -p 'parse this log file for errors' --output-format stream-json
    ```

    This outputs a series of JSON objects in real-time as Claude processes the request. Each message is a valid JSON object, but the entire output is not valid JSON if concatenated.

  </Step>
</Steps>

<Tip>
  Tips:

- Use `--output-format text` for simple integrations where you just need Claude's response
- Use `--output-format json` when you need the full conversation log
- Use `--output-format stream-json` for real-time output of each conversation turn
  </Tip>

---

## Create custom slash commands

Claude Code supports custom slash commands that you can create to quickly execute specific prompts or tasks.

For more details, see the [Slash commands](/en/docs/claude-code/slash-commands) reference page.

### Create project-specific commands

Suppose you want to create reusable slash commands for your project that all team members can use.

<Steps>
  <Step title="Create a commands directory in your project">
    ```bash
    mkdir -p .claude/commands
    ```
  </Step>

  <Step title="Create a Markdown file for each command">
    ```bash
    echo "Analyze the performance of this code and suggest three specific optimizations:" > .claude/commands/optimize.md
    ```
  </Step>

  <Step title="Use your custom command in Claude Code">
    ```
    > /project:optimize
    ```
  </Step>
</Steps>

<Tip>
  Tips:

- Command names are derived from the filename (e.g., `optimize.md` becomes `/project:optimize`)
- You can organize commands in subdirectories (e.g., `.claude/commands/frontend/component.md` becomes `/project:frontend:component`)
- Project commands are available to everyone who clones the repository
- The Markdown file content becomes the prompt sent to Claude when the command is invoked
  </Tip>

### Add command arguments with \$ARGUMENTS

Suppose you want to create flexible slash commands that can accept additional input from users.

<Steps>
  <Step title="Create a command file with the $ARGUMENTS placeholder">
    ```bash
    echo "Find and fix issue #$ARGUMENTS. Follow these steps: 1.
    Understand the issue described in the ticket 2. Locate the relevant code in
    our codebase 3. Implement a solution that addresses the root cause 4. Add
    appropriate tests 5. Prepare a concise PR description" >
    .claude/commands/fix-issue.md
    ```
  </Step>

  <Step title="Use the command with an issue number">
    In your Claude session, use the command with arguments.

    ```
    > /project:fix-issue 123
    ```

    This will replace \$ARGUMENTS with "123" in the prompt.

  </Step>
</Steps>

<Tip>
  Tips:

- The \$ARGUMENTS placeholder is replaced with any text that follows the command
- You can position \$ARGUMENTS anywhere in your command template
- Other useful applications: generating test cases for specific functions, creating documentation for components, reviewing code in particular files, or translating content to specified languages
  </Tip>

### Create personal slash commands

Suppose you want to create personal slash commands that work across all your projects.

<Steps>
  <Step title="Create a commands directory in your home folder">
    ```bash
    mkdir -p ~/.claude/commands
    ```
  </Step>

  <Step title="Create a Markdown file for each command">
    ```bash
    echo "Review this code for security vulnerabilities, focusing on:" >
    ~/.claude/commands/security-review.md
    ```
  </Step>

  <Step title="Use your personal custom command">
    ```
    > /user:security-review
    ```
  </Step>
</Steps>

<Tip>
  Tips:

- Personal commands are prefixed with `/user:` instead of `/project:`
- Personal commands are only available to you and not shared with your team
- Personal commands work across all your projects
- You can use these for consistent workflows across different codebases
  </Tip>

---

## Next steps

<Card title="Claude Code reference implementation" icon="code" href="https://github.com/anthropics/claude-code/tree/main/.devcontainer">
  Clone our development container reference implementation.
</Card>
````

## File: docs/09_ai/04_ai_documentation/04.2_claude_code/claude-code-documentation-overview.md
````markdown
# Claude Code Documentation

This document provides a comprehensive overview of Claude Code, an agentic coding tool for your terminal.

## 1. Overview

Claude Code is a command-line tool that helps you code faster through natural language commands. It integrates directly with your development environment, providing a seamless workflow without requiring additional servers or complex setup.

### 1.1. Why Claude Code?

- **Accelerate development**: Edit files, fix bugs, answer questions about your code, execute tests, manage git, and browse the web.
- **Security and privacy by design**: Your code stays on your machine, with direct API connections to Anthropic.
- **Enterprise integration**: Connect to Amazon Bedrock or Google Vertex AI for secure, compliant deployments.

## 2. Setup and Installation

### 2.1. System Requirements

- **Operating Systems**: macOS 10.15+, Ubuntu 20.04+/Debian 10+, or Windows via WSL
- **Hardware**: 4GB RAM minimum
- **Software**:
  - Node.js 18+
  - [git](https://git-scm.com/downloads) 2.23+ (optional)
  - [GitHub](https://cli.github.com/) or [GitLab](https://gitlab.com/gitlab-org/cli) CLI for PR workflows (optional)
- **Network**: Internet connection required for authentication and AI processing
- **Location**: Available only in [supported countries](https://www.anthropic.com/supported-countries)

### 2.2. Installation and Authentication

1.  **Install Claude Code**:
    ```sh
    npm install -g @anthropic-ai/claude-code
    ```
    <Warning>
      Do NOT use `sudo npm install -g` as this can lead to permission issues and
      security risks. If you encounter permission errors, see [Troubleshooting](#8-troubleshooting) for recommended solutions.
    </Warning>

2.  **Navigate to your project**:
    ```bash
    cd your-project-directory
    ```

3.  **Start Claude Code**:
    ```bash
    claude
    ```

4.  **Complete authentication**:
    - **Anthropic Console**: Default option, requires active billing.
    - **Claude App (Pro or Max plan)**: Unified subscription for Claude Code and web interface.
    - **Enterprise platforms**: Configure with [Amazon Bedrock or Google Vertex AI](#6-enterprise-deployment).

### 2.3. IDE Integration

Claude Code integrates with VS Code and JetBrains IDEs.

- **Features**: Quick launch, diff viewing, selection context, file reference shortcuts, and diagnostic sharing.
- **Installation**:
    - **VS Code**: Run `claude` in the integrated terminal.
    - **JetBrains**: Install the [Claude Code plugin](https://docs.anthropic.com/s/claude-code-jetbrains) from the marketplace.

## 3. Core Concepts and Usage

### 3.1. Interactive Mode

Run `claude` to start an interactive REPL session.

**Keyboard Shortcuts:**

| Shortcut         | Description                        |
| :--------------- | :--------------------------------- |
| `Ctrl+C`         | Cancel current input or generation |
| `Ctrl+D`         | Exit Claude Code session           |
| `Ctrl+L`         | Clear terminal screen              |
| `Up/Down arrows` | Navigate command history           |
| `Esc` + `Esc`    | Edit previous message              |

**Multiline Input:**

- `\` + `Enter`
- `Option+Enter` (macOS)
- `Shift+Enter` (after `/terminal-setup`)

### 3.2. CLI Reference

**Commands:**

| Command                            | Description                                    |
| :--------------------------------- | :--------------------------------------------- |
| `claude`                           | Start interactive REPL                         |
| `claude "query"`                   | Start REPL with initial prompt                 |
| `claude -p "query"`                | Query via SDK, then exit                       |
| `cat file \| claude -p "query"`    | Process piped content                          |
| `claude -c`                        | Continue most recent conversation              |
| `claude -r "<session-id>" "query"` | Resume session by ID                           |
| `claude update`                    | Update to latest version                       |
| `claude mcp`                       | Configure MCP servers                          |

**Flags:**

| Flag                             | Description                                                              |
| :------------------------------- | :----------------------------------------------------------------------- |
| `--add-dir`                      | Add additional working directories                                       |
| `--allowedTools`                 | List of allowed tools                                                    |
| `--disallowedTools`              | List of disallowed tools                                                 |
| `--print`, `-p`                  | Print response without interactive mode                                  |
| `--output-format`                | Output format for print mode (`text`, `json`, `stream-json`)             |
| `--input-format`                 | Input format for print mode (`text`, `stream-json`)                      |
| `--verbose`                      | Enable verbose logging                                                   |
| `--max-turns`                    | Limit agentic turns in non-interactive mode                              |
| `--model`                        | Set the model for the session                                            |
| `--permission-mode`              | Set a permission mode (`default`, `acceptEdits`, `plan`, `bypassPermissions`) |
| `--resume`                       | Resume a specific session                                                |
| `--continue`                     | Continue the most recent conversation                                    |
| `--dangerously-skip-permissions` | Skip permission prompts (use with caution)                               |

### 3.3. Slash Commands

Control Claude's behavior with slash commands.

**Built-in Commands:**

| Command                   | Purpose                                                |
| :------------------------ | :----------------------------------------------------- |
| `/add-dir`                | Add additional working directories                     |
| `/bug`                    | Report bugs                                            |
| `/clear`                  | Clear conversation history                             |
| `/compact [instructions]` | Compact conversation                                   |
| `/config`                 | View/modify configuration                              |
| `/cost`                   | Show token usage statistics                            |
| `/doctor`                 | Check installation health                              |
| `/help`                   | Get usage help                                         |
| `/init`                   | Initialize project with `CLAUDE.md`                    |
| `/login`                  | Switch Anthropic accounts                              |
| `/logout`                 | Sign out                                               |
| `/mcp`                    | Manage MCP server connections                          |
| `/memory`                 | Edit `CLAUDE.md` memory files                          |
| `/model`                  | Select or change the AI model                          |
| `/permissions`            | View or update permissions                             |
| `/review`                 | Request code review                                    |
| `/status`                 | View account and system statuses                       |
| `/terminal-setup`         | Install Shift+Enter key binding                        |
| `/vim`                    | Enter vim mode                                         |

**Custom Slash Commands:**

- **Project commands**: `.claude/commands/`, prefix `/project:`
- **Personal commands**: `~/.claude/commands/`, prefix `/user:`
- **Arguments**: Use `$ARGUMENTS` placeholder.
- **Bash execution**: Use `!` prefix.
- **File references**: Use `@` prefix.

### 3.4. Memory Management (`CLAUDE.md`)

Claude remembers preferences and project context via `CLAUDE.md` files.

**Memory Locations:**

| Memory Type                | Location              | Purpose                                  |
| -------------------------- | --------------------- | ---------------------------------------- |
| **Project memory**         | `./CLAUDE.md`         | Team-shared instructions for the project |
| **User memory**            | `~/.claude/CLAUDE.md` | Personal preferences for all projects    |
| **Project memory (local)** | `./CLAUDE.local.md`   | Personal project-specific preferences (deprecated) |

**Features:**

- **Imports**: Use `@path/to/import` to include other files.
- **Recursive lookup**: Claude reads `CLAUDE.md` files from the current directory up to the root.
- **Quick add**: Start input with `#` to add a memory.
- **Direct edit**: Use `/memory` to edit memory files.

## 4. Common Workflows

- **Understand new codebases**: Ask for overviews, architecture patterns, and data models.
- **Fix bugs**: Share error messages and ask for fix recommendations.
- **Refactor code**: Identify legacy code and get refactoring suggestions.
- **Work with tests**: Identify untested code and generate test cases.
- **Create pull requests**: Summarize changes and generate PR descriptions.
- **Handle documentation**: Find undocumented code and generate comments.
- **Work with images**: Analyze screenshots, diagrams, and mockups.
- **Reference files and directories**: Use `@` to include file content or directory listings.
- **Use extended thinking**: Use "think", "think hard", etc., for complex tasks.
- **Resume conversations**: Use `--continue` or `--resume`.
- **Parallel sessions**: Use Git worktrees for isolated environments.
- **Unix-style utility**: Pipe data in and out, control output format.

## 5. Advanced Features

### 5.1. Claude Code SDK

Integrate Claude Code programmatically into your applications.

- **Authentication**: Use `ANTHROPIC_API_KEY`, or configure for Amazon Bedrock or Google Vertex AI.
- **Command line**: `claude -p "prompt"`
- **TypeScript**: `@anthropic-ai/claude-code` package on NPM.
- **Python**: `claude-code-sdk` on PyPI.

### 5.2. Hooks

Customize Claude Code's behavior with user-defined shell commands.

- **Events**: `PreToolUse`, `PostToolUse`, `Notification`, `Stop`, `SubagentStop`.
- **Configuration**: In `settings.json` files.
- **Input**: JSON data via stdin.
- **Output**: Exit codes or JSON for more control.
- **Security**: Hooks execute with your user permissions. Use with caution.

### 5.3. Model Context Protocol (MCP)

Extend Claude Code with external tools and data sources.

- **Configuration**: Use `claude mcp` commands to add, list, and remove servers.
- **Scopes**: `local`, `project`, `user`.
- **Authentication**: Supports OAuth 2.0 for remote servers via `/mcp` command.
- **Resources**: Reference MCP resources with `@server:protocol://resource/path`.
- **Prompts**: MCP servers can expose prompts as slash commands.

### 5.4. Subagents (Task Tool)

Launch independent agents for autonomous research and analysis.

- **Usage**: Use the `Task` tool for searching codebases, research-heavy tasks, and parallel processing.
- **Parallelism**: Supports up to 10 parallel tasks. For optimal efficiency, do not specify a parallelism level and let Claude manage it dynamically.
- **Context Window**: Each subagent has its own context window.

## 6. Enterprise Deployment

### 6.1. Identity and Access Management (IAM)

- **Authentication**: Anthropic API, Amazon Bedrock, or Google Vertex AI.
- **Permissions**: Configure tool permissions with `/permissions` or in `settings.json`.
    - **Modes**: `default`, `acceptEdits`, `plan`, `bypassPermissions`.
    - **Rules**: `Tool(optional-specifier)` format, e.g., `Bash(git diff:*)`.
- **Managed Policies**: Enforce security policies via `managed-settings.json`.

### 6.2. Cloud Providers

- **Amazon Bedrock**: Use Claude models through AWS infrastructure.
- **Google Vertex AI**: Access Claude models via Google Cloud Platform.

### 6.3. Corporate Infrastructure

- **Corporate Proxy**: Configure via `HTTPS_PROXY` environment variable.
- **LLM Gateway**: Use services like LiteLLM for centralized management.

### 6.4. Monitoring (OpenTelemetry)

- **Enablement**: `export CLAUDE_CODE_ENABLE_TELEMETRY=1`.
- **Exporters**: `otlp`, `prometheus`, `console`.
- **Configuration**: Use `OTEL_*` environment variables.
- **Metrics**: Session count, lines of code, cost, token usage, etc.
- **Events**: User prompts, tool results, API requests, etc.

## 7. GitHub Actions

Integrate Claude Code into your GitHub workflow.

- **Usage**: Mention `@claude` in a PR or issue.
- **Setup**: Use `/install-github-app` or manual setup.
- **Use Cases**: Turn issues into PRs, get implementation help, fix bugs.
- **Best Practices**: Use `CLAUDE.md` for guidelines, manage secrets securely.
- **Cloud Providers**: Can be configured to work with AWS Bedrock and Google Vertex AI.

## 8. Troubleshooting

- **Linux permission issues**: Create a user-writable npm prefix.
- **Auto-updater issues**: Fix npm permissions or disable with `DISABLE_AUTOUPDATER=1`.
- **Authentication issues**: Run `/logout`, restart, or remove `~/.config/claude-code/auth.json`.
- **Performance issues**: Use `/compact`, restart sessions, or add large directories to `.gitignore`.
- **JetBrains ESC key issue**: Reconfigure terminal keybindings in JetBrains settings.
- **Getting help**: Use `/bug`, check the GitHub repository, or run `/doctor`.
````

## File: docs/09_ai/04_ai_documentation/04.2_claude_code/claude-code-github-actions.md
````markdown
# Claude Code GitHub Actions

> Learn about integrating Claude Code into your development workflow with Claude Code GitHub Actions

Claude Code GitHub Actions brings AI-powered automation to your GitHub workflow. With a simple `@claude` mention in any PR or issue, Claude can analyze your code, create pull requests, implement features, and fix bugs - all while following your project's standards.

<Info>
  Claude Code GitHub Actions is currently in beta. Features and functionality may evolve as we refine the experience.
</Info>

<Note>
  Claude Code GitHub Actions is built on top of the [Claude Code SDK](/en/docs/claude-code/sdk), which enables programmatic integration of Claude Code into your applications. You can use the SDK to build custom automation workflows beyond GitHub Actions.
</Note>

## Why use Claude Code GitHub Actions?

- **Instant PR creation**: Describe what you need, and Claude creates a complete PR with all necessary changes
- **Automated code implementation**: Turn issues into working code with a single command
- **Follows your standards**: Claude respects your `CLAUDE.md` guidelines and existing code patterns
- **Simple setup**: Get started in minutes with our installer and API key
- **Secure by default**: Your code stays on Github's runners

## What can Claude do?

Claude Code provides powerful GitHub Actions that transform how you work with code:

### Claude Code Action

This GitHub Action allows you to run Claude Code within your GitHub Actions workflows. You can use this to build any custom workflow on top of Claude Code.

[View repository →](https://github.com/anthropics/claude-code-action)

### Claude Code Action (Base)

The foundation for building custom GitHub workflows with Claude. This extensible framework gives you full access to Claude's capabilities for creating tailored automation.

[View repository →](https://github.com/anthropics/claude-code-base-action)

## Setup

## Quick setup

The easiest way to set up this action is through Claude Code in the terminal. Just open claude and run `/install-github-app`.

This command will guide you through setting up the GitHub app and required secrets.

<Note>
  * You must be a repository admin to install the GitHub app and add secrets
  * This quickstart method is only available for direct Anthropic API users. If you're using AWS Bedrock or Google Vertex AI, please see the [Using with AWS Bedrock & Google Vertex AI](#using-with-aws-bedrock-%26-google-vertex-ai) section.
</Note>

## Manual setup

If the `/install-github-app` command fails or you prefer manual setup, please follow these manual setup instructions:

1. **Install the Claude GitHub app** to your repository: [https://github.com/apps/claude](https://github.com/apps/claude)
2. **Add ANTHROPIC_API_KEY** to your repository secrets ([Learn how to use secrets in GitHub Actions](https://docs.github.com/en/actions/security-guides/using-secrets-in-github-actions))
3. **Copy the workflow file** from [examples/claude.yml](https://github.com/anthropics/claude-code-action/blob/main/examples/claude.yml) into your repository's `.github/workflows/`

<Tip>
  After completing either the quickstart or manual setup, test the action by tagging `@claude` in an issue or PR comment!
</Tip>

## Example use cases

Claude Code GitHub Actions can help you with a variety of tasks. For complete working examples, see the [examples directory](https://github.com/anthropics/claude-code-action/tree/main/examples).

### Turn issues into PRs

In an issue comment:

```
@claude implement this feature based on the issue description
```

Claude will analyze the issue, write the code, and create a PR for review.

### Get implementation help

In a PR comment:

```
@claude how should I implement user authentication for this endpoint?
```

Claude will analyze your code and provide specific implementation guidance.

### Fix bugs quickly

In an issue:

```yaml
@claude fix the TypeError in the user dashboard component
```

Claude will locate the bug, implement a fix, and create a PR.

## Best practices

### CLAUDE.md configuration

Create a `CLAUDE.md` file in your repository root to define code style guidelines, review criteria, project-specific rules, and preferred patterns. This file guides Claude's understanding of your project standards.

### Security considerations

<Warning>
  Never commit API keys directly to your repository!
</Warning>

Always use GitHub Secrets for API keys:

- Add your API key as a repository secret named `ANTHROPIC_API_KEY`
- Reference it in workflows: `anthropic_api_key: ${{ secrets.ANTHROPIC_API_KEY }}`
- Limit action permissions to only what's necessary
- Review Claude's suggestions before merging

Always use GitHub Secrets (e.g., `${{ secrets.ANTHROPIC_API_KEY }}`) rather than hardcoding API keys directly in your workflow files.

### Optimizing performance

Use issue templates to provide context, keep your `CLAUDE.md` concise and focused, and configure appropriate timeouts for your workflows.

### CI costs

When using Claude Code GitHub Actions, be aware of the associated costs:

**GitHub Actions costs:**

- Claude Code runs on GitHub-hosted runners, which consume your GitHub Actions minutes
- See [GitHub's billing documentation](https://docs.github.com/en/billing/managing-billing-for-your-products/managing-billing-for-github-actions/about-billing-for-github-actions) for detailed pricing and minute limits

**API costs:**

- Each Claude interaction consumes API tokens based on the length of prompts and responses
- Token usage varies by task complexity and codebase size
- See [Claude's pricing page](https://www.anthropic.com/api) for current token rates

**Cost optimization tips:**

- Use specific `@claude` commands to reduce unnecessary API calls
- Configure appropriate `max_turns` limits to prevent excessive iterations
- Set reasonable `timeout_minutes` to avoid runaway workflows
- Consider using GitHub's concurrency controls to limit parallel runs

## Configuration examples

For ready-to-use workflow configurations for different use cases, including:

- Basic workflow setup for issue and PR comments
- Automated code reviews on pull requests
- Custom implementations for specific needs

Visit the [examples directory](https://github.com/anthropics/claude-code-action/tree/main/examples) in the Claude Code Action repository.

<Tip>
  The examples repository includes complete, tested workflows that you can copy directly into your `.github/workflows/` directory.
</Tip>

## Using with AWS Bedrock & Google Vertex AI

For enterprise environments, you can use Claude Code GitHub Actions with your own cloud infrastructure. This approach gives you control over data residency and billing while maintaining the same functionality.

### Prerequisites

Before setting up Claude Code GitHub Actions with cloud providers, you need:

#### For Google Cloud Vertex AI:

1. A Google Cloud Project with Vertex AI enabled
2. Workload Identity Federation configured for GitHub Actions
3. A service account with the required permissions
4. A GitHub App (recommended) or use the default GITHUB_TOKEN

#### For AWS Bedrock:

1. An AWS account with Amazon Bedrock enabled
2. GitHub OIDC Identity Provider configured in AWS
3. An IAM role with Bedrock permissions
4. A GitHub App (recommended) or use the default GITHUB_TOKEN

<Steps>
  <Step title="Create a custom GitHub App (Recommended for 3P Providers)">
    For best control and security when using 3P providers like Vertex AI or Bedrock, we recommend creating your own GitHub App:

    1. Go to [https://github.com/settings/apps/new](https://github.com/settings/apps/new)
    2. Fill in the basic information:
       * **GitHub App name**: Choose a unique name (e.g., "YourOrg Claude Assistant")
       * **Homepage URL**: Your organization's website or the repository URL
    3. Configure the app settings:
       * **Webhooks**: Uncheck "Active" (not needed for this integration)
    4. Set the required permissions:
       * **Repository permissions**:
         * Contents: Read & Write
         * Issues: Read & Write
         * Pull requests: Read & Write
    5. Click "Create GitHub App"
    6. After creation, click "Generate a private key" and save the downloaded `.pem` file
    7. Note your App ID from the app settings page
    8. Install the app to your repository:
       * From your app's settings page, click "Install App" in the left sidebar
       * Select your account or organization
       * Choose "Only select repositories" and select the specific repository
       * Click "Install"
    9. Add the private key as a secret to your repository:
       * Go to your repository's Settings → Secrets and variables → Actions
       * Create a new secret named `APP_PRIVATE_KEY` with the contents of the `.pem` file
    10. Add the App ID as a secret:

    * Create a new secret named `APP_ID` with your GitHub App's ID

    <Note>
      This app will be used with the [actions/create-github-app-token](https://github.com/actions/create-github-app-token) action to generate authentication tokens in your workflows.
    </Note>

    **Alternative for Anthropic API or if you don't want to setup your own Github app**: Use the official Anthropic app:

    1. Install from: [https://github.com/apps/claude](https://github.com/apps/claude)
    2. No additional configuration needed for authentication

  </Step>

  <Step title="Configure cloud provider authentication">
    Choose your cloud provider and set up secure authentication:

    <AccordionGroup>
      <Accordion title="AWS Bedrock">
        **Configure AWS to allow GitHub Actions to authenticate securely without storing credentials.**

        > **Security Note**: Use repository-specific configurations and grant only the minimum required permissions.

        **Required Setup**:

        1. **Enable Amazon Bedrock**:
           * Request access to Claude models in Amazon Bedrock
           * For cross-region models, request access in all required regions

        2. **Set up GitHub OIDC Identity Provider**:
           * Provider URL: `https://token.actions.githubusercontent.com`
           * Audience: `sts.amazonaws.com`

        3. **Create IAM Role for GitHub Actions**:
           * Trusted entity type: Web identity
           * Identity provider: `token.actions.githubusercontent.com`
           * Permissions: `AmazonBedrockFullAccess` policy
           * Configure trust policy for your specific repository

        **Required Values**:

        After setup, you'll need:

        * **AWS\_ROLE\_TO\_ASSUME**: The ARN of the IAM role you created

        <Tip>
          OIDC is more secure than using static AWS access keys because credentials are temporary and automatically rotated.
        </Tip>

        See [AWS documentation](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_create_oidc.html) for detailed OIDC setup instructions.
      </Accordion>

      <Accordion title="Google Vertex AI">
        **Configure Google Cloud to allow GitHub Actions to authenticate securely without storing credentials.**

        > **Security Note**: Use repository-specific configurations and grant only the minimum required permissions.

        **Required Setup**:

        1. **Enable APIs** in your Google Cloud project:
           * IAM Credentials API
           * Security Token Service (STS) API
           * Vertex AI API

        2. **Create Workload Identity Federation resources**:
           * Create a Workload Identity Pool
           * Add a GitHub OIDC provider with:
             * Issuer: `https://token.actions.githubusercontent.com`
             * Attribute mappings for repository and owner
             * **Security recommendation**: Use repository-specific attribute conditions

        3. **Create a Service Account**:
           * Grant only `Vertex AI User` role
           * **Security recommendation**: Create a dedicated service account per repository

        4. **Configure IAM bindings**:
           * Allow the Workload Identity Pool to impersonate the service account
           * **Security recommendation**: Use repository-specific principal sets

        **Required Values**:

        After setup, you'll need:

        * **GCP\_WORKLOAD\_IDENTITY\_PROVIDER**: The full provider resource name
        * **GCP\_SERVICE\_ACCOUNT**: The service account email address

        <Tip>
          Workload Identity Federation eliminates the need for downloadable service account keys, improving security.
        </Tip>

        For detailed setup instructions, consult the [Google Cloud Workload Identity Federation documentation](https://cloud.google.com/iam/docs/workload-identity-federation).
      </Accordion>
    </AccordionGroup>

  </Step>

  <Step title="Add Required Secrets">
    Add the following secrets to your repository (Settings → Secrets and variables → Actions):

    #### For Anthropic API (Direct):

    1. **For API Authentication**:
       * `ANTHROPIC_API_KEY`: Your Anthropic API key from [console.anthropic.com](https://console.anthropic.com)

    2. **For GitHub App (if using your own app)**:
       * `APP_ID`: Your GitHub App's ID
       * `APP_PRIVATE_KEY`: The private key (.pem) content

    #### For Google Cloud Vertex AI

    1. **For GCP Authentication**:
       * `GCP_WORKLOAD_IDENTITY_PROVIDER`
       * `GCP_SERVICE_ACCOUNT`

    2. **For GitHub App (if using your own app)**:
       * `APP_ID`: Your GitHub App's ID
       * `APP_PRIVATE_KEY`: The private key (.pem) content

    #### For AWS Bedrock

    1. **For AWS Authentication**:
       * `AWS_ROLE_TO_ASSUME`

    2. **For GitHub App (if using your own app)**:
       * `APP_ID`: Your GitHub App's ID
       * `APP_PRIVATE_KEY`: The private key (.pem) content

  </Step>

  <Step title="Create workflow files">
    Create GitHub Actions workflow files that integrate with your cloud provider. The examples below show complete configurations for both AWS Bedrock and Google Vertex AI:

    <AccordionGroup>
      <Accordion title="AWS Bedrock workflow">
        **Prerequisites:**

        * AWS Bedrock access enabled with Claude model permissions
        * GitHub configured as an OIDC identity provider in AWS
        * IAM role with Bedrock permissions that trusts GitHub Actions

        **Required GitHub secrets:**

        | Secret Name          | Description                                       |
        | -------------------- | ------------------------------------------------- |
        | `AWS_ROLE_TO_ASSUME` | ARN of the IAM role for Bedrock access            |
        | `APP_ID`             | Your GitHub App ID (from app settings)            |
        | `APP_PRIVATE_KEY`    | The private key you generated for your GitHub App |

        ```yaml
        name: Claude PR Action

        permissions:
          contents: write
          pull-requests: write
          issues: write
          id-token: write

        on:
          issue_comment:
            types: [created]
          pull_request_review_comment:
            types: [created]
          issues:
            types: [opened, assigned]

        jobs:
          claude-pr:
            if: |
              (github.event_name == 'issue_comment' && contains(github.event.comment.body, '@claude')) ||
              (github.event_name == 'pull_request_review_comment' && contains(github.event.comment.body, '@claude')) ||
              (github.event_name == 'issues' && contains(github.event.issue.body, '@claude'))
            runs-on: ubuntu-latest
            env:
              AWS_REGION: us-west-2
            steps:
              - name: Checkout repository
                uses: actions/checkout@v4

              - name: Generate GitHub App token
                id: app-token
                uses: actions/create-github-app-token@v2
                with:
                  app-id: ${{ secrets.APP_ID }}
                  private-key: ${{ secrets.APP_PRIVATE_KEY }}

              - name: Configure AWS Credentials (OIDC)
                uses: aws-actions/configure-aws-credentials@v4
                with:
                  role-to-assume: ${{ secrets.AWS_ROLE_TO_ASSUME }}
                  aws-region: us-west-2

              - uses: ./.github/actions/claude-pr-action
                with:
                  trigger_phrase: "@claude"
                  timeout_minutes: "60"
                  github_token: ${{ steps.app-token.outputs.token }}
                  use_bedrock: "true"
                  model: "us.anthropic.claude-3-7-sonnet-20250219-v1:0"
        ```

        <Tip>
          The model ID format for Bedrock includes the region prefix (e.g., `us.anthropic.claude...`) and version suffix.
        </Tip>
      </Accordion>

      <Accordion title="Google Vertex AI workflow">
        **Prerequisites:**

        * Vertex AI API enabled in your GCP project
        * Workload Identity Federation configured for GitHub
        * Service account with Vertex AI permissions

        **Required GitHub secrets:**

        | Secret Name                      | Description                                       |
        | -------------------------------- | ------------------------------------------------- |
        | `GCP_WORKLOAD_IDENTITY_PROVIDER` | Workload identity provider resource name          |
        | `GCP_SERVICE_ACCOUNT`            | Service account email with Vertex AI access       |
        | `APP_ID`                         | Your GitHub App ID (from app settings)            |
        | `APP_PRIVATE_KEY`                | The private key you generated for your GitHub App |

        ```yaml
        name: Claude PR Action

        permissions:
          contents: write
          pull-requests: write
          issues: write
          id-token: write

        on:
          issue_comment:
            types: [created]
          pull_request_review_comment:
            types: [created]
          issues:
            types: [opened, assigned]

        jobs:
          claude-pr:
            if: |
              (github.event_name == 'issue_comment' && contains(github.event.comment.body, '@claude')) ||
              (github.event_name == 'pull_request_review_comment' && contains(github.event.comment.body, '@claude')) ||
              (github.event_name == 'issues' && contains(github.event.issue.body, '@claude'))
            runs-on: ubuntu-latest
            steps:
              - name: Checkout repository
                uses: actions/checkout@v4

              - name: Generate GitHub App token
                id: app-token
                uses: actions/create-github-app-token@v2
                with:
                  app-id: ${{ secrets.APP_ID }}
                  private-key: ${{ secrets.APP_PRIVATE_KEY }}

              - name: Authenticate to Google Cloud
                id: auth
                uses: google-github-actions/auth@v2
                with:
                  workload_identity_provider: ${{ secrets.GCP_WORKLOAD_IDENTITY_PROVIDER }}
                  service_account: ${{ secrets.GCP_SERVICE_ACCOUNT }}

              - uses: ./.github/actions/claude-pr-action
                with:
                  trigger_phrase: "@claude"
                  timeout_minutes: "60"
                  github_token: ${{ steps.app-token.outputs.token }}
                  use_vertex: "true"
                  model: "claude-3-7-sonnet@20250219"
                env:
                  ANTHROPIC_VERTEX_PROJECT_ID: ${{ steps.auth.outputs.project_id }}
                  CLOUD_ML_REGION: us-east5
                  VERTEX_REGION_CLAUDE_3_7_SONNET: us-east5
        ```

        <Tip>
          The project ID is automatically retrieved from the Google Cloud authentication step, so you don't need to hardcode it.
        </Tip>
      </Accordion>
    </AccordionGroup>

  </Step>
</Steps>

## Troubleshooting

### Claude not responding to @claude commands

Verify the GitHub App is installed correctly, check that workflows are enabled, ensure API key is set in repository secrets, and confirm the comment contains `@claude` (not `/claude`).

### CI not running on Claude's commits

Ensure you're using the GitHub App or custom app (not Actions user), check workflow triggers include the necessary events, and verify app permissions include CI triggers.

### Authentication errors

Confirm API key is valid and has sufficient permissions. For Bedrock/Vertex, check credentials configuration and ensure secrets are named correctly in workflows.

## Advanced configuration

### Action parameters

The Claude Code Action supports these key parameters:

| Parameter           | Description                    | Required |
| ------------------- | ------------------------------ | -------- |
| `prompt`            | The prompt to send to Claude   | Yes\*    |
| `prompt_file`       | Path to file containing prompt | Yes\*    |
| `anthropic_api_key` | Anthropic API key              | Yes\*\*  |
| `max_turns`         | Maximum conversation turns     | No       |
| `timeout_minutes`   | Execution timeout              | No       |

\*Either `prompt` or `prompt_file` required\
\*\*Required for direct Anthropic API, not for Bedrock/Vertex

### Alternative integration methods

While the `/install-github-app` command is the recommended approach, you can also:

- **Custom GitHub App**: For organizations needing branded usernames or custom authentication flows. Create your own GitHub App with required permissions (contents, issues, pull requests) and use the actions/create-github-app-token action to generate tokens in your workflows.
- **Manual GitHub Actions**: Direct workflow configuration for maximum flexibility
- **MCP Configuration**: Dynamic loading of Model Context Protocol servers

See the [Claude Code Action repository](https://github.com/anthropics/claude-code-action) for detailed documentation.

### Customizing Claude's behavior

You can configure Claude's behavior in two ways:

1. **CLAUDE.md**: Define coding standards, review criteria, and project-specific rules in a `CLAUDE.md` file at the root of your repository. Claude will follow these guidelines when creating PRs and responding to requests. Check out our [Memory documentation](/en/docs/claude-code/memory) for more details.
2. **Custom prompts**: Use the `prompt` parameter in the workflow file to provide workflow-specific instructions. This allows you to customize Claude's behavior for different workflows or tasks.

Claude will follow these guidelines when creating PRs and responding to requests.
````

## File: docs/09_ai/04_ai_documentation/04.2_claude_code/claude-code-hooks.md
````markdown
# Hooks

> Customize and extend Claude Code's behavior by registering shell commands

# Introduction

Claude Code hooks are user-defined shell commands that execute at various points
in Claude Code's lifecycle. Hooks provide deterministic control over Claude
Code's behavior, ensuring certain actions always happen rather than relying on
the LLM to choose to run them.

Example use cases include:

- **Notifications**: Customize how you get notified when Claude Code is awaiting
  your input or permission to run something.
- **Automatic formatting**: Run `prettier` on .ts files, `gofmt` on .go files,
  etc. after every file edit.
- **Logging**: Track and count all executed commands for compliance or
  debugging.
- **Feedback**: Provide automated feedback when Claude Code produces code that
  does not follow your codebase conventions.
- **Custom permissions**: Block modifications to production files or sensitive
  directories.

By encoding these rules as hooks rather than prompting instructions, you turn
suggestions into app-level code that executes every time it is expected to run.

<Warning>
  Hooks execute shell commands with your full user permissions without
  confirmation. You are responsible for ensuring your hooks are safe and secure.
  Anthropic is not liable for any data loss or system damage resulting from hook
  usage. Review [Security Considerations](#security-considerations).
</Warning>

## Quickstart

In this quickstart, you'll add a hook that logs the shell commands that Claude
Code runs.

Quickstart Prerequisite: Install `jq` for JSON processing in the command line.

### Step 1: Open hooks configuration

Run the `/hooks` [slash command](/en/docs/claude-code/slash-commands) and select
the `PreToolUse` hook event.

`PreToolUse` hooks run before tool calls and can block them while providing
Claude feedback on what to do differently.

### Step 2: Add a matcher

Select `+ Add new matcher…` to run your hook only on Bash tool calls.

Type `Bash` for the matcher.

### Step 3: Add the hook

Select `+ Add new hook…` and enter this command:

```bash
jq -r '"\(.tool_input.command) - \(.tool_input.description // "No description")"' >> ~/.claude/bash-command-log.txt
```

### Step 4: Save your configuration

For storage location, select `User settings` since you're logging to your home
directory. This hook will then apply to all projects, not just your current
project.

Then press Esc until you return to the REPL. Your hook is now registered!

### Step 5: Verify your hook

Run `/hooks` again or check `~/.claude/settings.json` to see your configuration:

```json
"hooks": {
  "PreToolUse": [
    {
      "matcher": "Bash",
      "hooks": [
        {
          "type": "command",
          "command": "jq -r '\"\\(.tool_input.command) - \\(.tool_input.description // \"No description\")\"' >> ~/.claude/bash-command-log.txt"
        }
      ]
    }
  ]
}
```

## Configuration

Claude Code hooks are configured in your
[settings files](/en/docs/claude-code/settings):

- `~/.claude/settings.json` - User settings
- `.claude/settings.json` - Project settings
- `.claude/settings.local.json` - Local project settings (not committed)
- Enterprise managed policy settings

### Structure

Hooks are organized by matchers, where each matcher can have multiple hooks:

```json
{
  "hooks": {
    "EventName": [
      {
        "matcher": "ToolPattern",
        "hooks": [
          {
            "type": "command",
            "command": "your-command-here"
          }
        ]
      }
    ]
  }
}
```

- **matcher**: Pattern to match tool names (only applicable for `PreToolUse` and
  `PostToolUse`)
  - Simple strings match exactly: `Write` matches only the Write tool
  - Supports regex: `Edit|Write` or `Notebook.*`
  - If omitted or empty string, hooks run for all matching events
- **hooks**: Array of commands to execute when the pattern matches
  - `type`: Currently only `"command"` is supported
  - `command`: The bash command to execute
  - `timeout`: (Optional) How long a command should run, in seconds, before
    canceling all in-progress hooks.

## Hook Events

### PreToolUse

Runs after Claude creates tool parameters and before processing the tool call.

**Common matchers:**

- `Task` - Agent tasks
- `Bash` - Shell commands
- `Glob` - File pattern matching
- `Grep` - Content search
- `Read` - File reading
- `Edit`, `MultiEdit` - File editing
- `Write` - File writing
- `WebFetch`, `WebSearch` - Web operations

### PostToolUse

Runs immediately after a tool completes successfully.

Recognizes the same matcher values as PreToolUse.

### Notification

Runs when Claude Code sends notifications.

### Stop

Runs when the main Claude Code agent has finished responding.

### SubagentStop

Runs when a Claude Code subagent (Task tool call) has finished responding.

## Hook Input

Hooks receive JSON data via stdin containing session information and
event-specific data:

```typescript
{
  // Common fields
  session_id: string
  transcript_path: string  // Path to conversation JSON

  // Event-specific fields
  ...
}
```

### PreToolUse Input

The exact schema for `tool_input` depends on the tool.

```json
{
  "session_id": "abc123",
  "transcript_path": "~/.claude/projects/.../00893aaf-19fa-41d2-8238-13269b9b3ca0.jsonl",
  "tool_name": "Write",
  "tool_input": {
    "file_path": "/path/to/file.txt",
    "content": "file content"
  }
}
```

### PostToolUse Input

The exact schema for `tool_input` and `tool_response` depends on the tool.

```json
{
  "session_id": "abc123",
  "transcript_path": "~/.claude/projects/.../00893aaf-19fa-41d2-8238-13269b9b3ca0.jsonl",
  "tool_name": "Write",
  "tool_input": {
    "file_path": "/path/to/file.txt",
    "content": "file content"
  },
  "tool_response": {
    "filePath": "/path/to/file.txt",
    "success": true
  }
}
```

### Notification Input

```json
{
  "session_id": "abc123",
  "transcript_path": "~/.claude/projects/.../00893aaf-19fa-41d2-8238-13269b9b3ca0.jsonl",
  "message": "Task completed successfully",
  "title": "Claude Code"
}
```

### Stop and SubagentStop Input

`stop_hook_active` is true when Claude Code is already continuing as a result of
a stop hook. Check this value or process the transcript to prevent Claude Code
from running indefinitely.

```json
{
  "session_id": "abc123",
  "transcript_path": "~/.claude/projects/.../00893aaf-19fa-41d2-8238-13269b9b3ca0.jsonl",
  "stop_hook_active": true
}
```

## Hook Output

There are two ways for hooks to return output back to Claude Code. The output
communicates whether to block and any feedback that should be shown to Claude
and the user.

### Simple: Exit Code

Hooks communicate status through exit codes, stdout, and stderr:

- **Exit code 0**: Success. `stdout` is shown to the user in transcript mode
  (CTRL-R).
- **Exit code 2**: Blocking error. `stderr` is fed back to Claude to process
  automatically. See per-hook-event behavior below.
- **Other exit codes**: Non-blocking error. `stderr` is shown to the user and
  execution continues.

<Warning>
  Reminder: Claude Code does not see stdout if the exit code is 0.
</Warning>

#### Exit Code 2 Behavior

| Hook Event     | Behavior                                        |
| -------------- | ----------------------------------------------- |
| `PreToolUse`   | Blocks the tool call, shows error to Claude     |
| `PostToolUse`  | Shows error to Claude (tool already ran)        |
| `Notification` | N/A, shows stderr to user only                  |
| `Stop`         | Blocks stoppage, shows error to Claude          |
| `SubagentStop` | Blocks stoppage, shows error to Claude subagent |

### Advanced: JSON Output

Hooks can return structured JSON in `stdout` for more sophisticated control:

#### Common JSON Fields

All hook types can include these optional fields:

```json
{
  "continue": true, // Whether Claude should continue after hook execution (default: true)
  "stopReason": "string" // Message shown when continue is false
  "suppressOutput": true, // Hide stdout from transcript mode (default: false)
}
```

If `continue` is false, Claude stops processing after the hooks run.

- For `PreToolUse`, this is different from `"decision": "block"`, which only
  blocks a specific tool call and provides automatic feedback to Claude.
- For `PostToolUse`, this is different from `"decision": "block"`, which
  provides automated feedback to Claude.
- For `Stop` and `SubagentStop`, this takes precedence over any
  `"decision": "block"` output.
- In all cases, `"continue" = false` takes precedence over any
  `"decision": "block"` output.

`stopReason` accompanies `continue` with a reason shown to the user, not shown
to Claude.

#### `PreToolUse` Decision Control

`PreToolUse` hooks can control whether a tool call proceeds.

- "approve" bypasses the permission system. `reason` is shown to the user but
  not to Claude.
- "block" prevents the tool call from executing. `reason` is shown to Claude.
- `undefined` leads to the existing permission flow. `reason` is ignored.

```json
{
  "decision": "approve" | "block" | undefined,
  "reason": "Explanation for decision"
}
```

#### `PostToolUse` Decision Control

`PostToolUse` hooks can control whether a tool call proceeds.

- "block" automatically prompts Claude with `reason`.
- `undefined` does nothing. `reason` is ignored.

```json
{
  "decision": "block" | undefined,
  "reason": "Explanation for decision"
}
```

#### `Stop`/`SubagentStop` Decision Control

`Stop` and `SubagentStop` hooks can control whether Claude must continue.

- "block" prevents Claude from stopping. You must populate `reason` for Claude
  to know how to proceed.
- `undefined` allows Claude to stop. `reason` is ignored.

```json
{
  "decision": "block" | undefined,
  "reason": "Must be provided when Claude is blocked from stopping"
}
```

#### JSON Output Example: Bash Command Editing

```python
#!/usr/bin/env python3
import json
import re
import sys

# Define validation rules as a list of (regex pattern, message) tuples
VALIDATION_RULES = [
    (
        r"\bgrep\b(?!.*\|)",
        "Use 'rg' (ripgrep) instead of 'grep' for better performance and features",
    ),
    (
        r"\bfind\s+\S+\s+-name\b",
        "Use 'rg --files | rg pattern' or 'rg --files -g pattern' instead of 'find -name' for better performance",
    ),
]


def validate_command(command: str) -> list[str]:
    issues = []
    for pattern, message in VALIDATION_RULES:
        if re.search(pattern, command):
            issues.append(message)
    return issues


try:
    input_data = json.load(sys.stdin)
except json.JSONDecodeError as e:
    print(f"Error: Invalid JSON input: {e}", file=sys.stderr)
    sys.exit(1)

tool_name = input_data.get("tool_name", "")
tool_input = input_data.get("tool_input", {})
command = tool_input.get("command", "")

if tool_name != "Bash" or not command:
    sys.exit(1)

# Validate the command
issues = validate_command(command)

if issues:
    for message in issues:
        print(f"• {message}", file=sys.stderr)
    # Exit code 2 blocks tool call and shows stderr to Claude
    sys.exit(2)
```

## Working with MCP Tools

Claude Code hooks work seamlessly with
[Model Context Protocol (MCP) tools](/en/docs/claude-code/mcp). When MCP servers
provide tools, they appear with a special naming pattern that you can match in
your hooks.

### MCP Tool Naming

MCP tools follow the pattern `mcp__<server>__<tool>`, for example:

- `mcp__memory__create_entities` - Memory server's create entities tool
- `mcp__filesystem__read_file` - Filesystem server's read file tool
- `mcp__github__search_repositories` - GitHub server's search tool

### Configuring Hooks for MCP Tools

You can target specific MCP tools or entire MCP servers:

```json
{
  "hooks": {
    "PreToolUse": [
      {
        "matcher": "mcp__memory__.*",
        "hooks": [
          {
            "type": "command",
            "command": "echo 'Memory operation initiated' >> ~/mcp-operations.log"
          }
        ]
      },
      {
        "matcher": "mcp__.*__write.*",
        "hooks": [
          {
            "type": "command",
            "command": "/home/user/scripts/validate-mcp-write.py"
          }
        ]
      }
    ]
  }
}
```

## Examples

### Code Formatting

Automatically format code after file modifications:

```json
{
  "hooks": {
    "PostToolUse": [
      {
        "matcher": "Write|Edit|MultiEdit",
        "hooks": [
          {
            "type": "command",
            "command": "/home/user/scripts/format-code.sh"
          }
        ]
      }
    ]
  }
}
```

### Notification

Customize the notification that is sent when Claude Code requests permission or
when the prompt input has become idle.

```json
{
  "hooks": {
    "Notification": [
      {
        "matcher": "",
        "hooks": [
          {
            "type": "command",
            "command": "python3 ~/my_custom_notifier.py"
          }
        ]
      }
    ]
  }
}
```

## Security Considerations

### Disclaimer

**USE AT YOUR OWN RISK**: Claude Code hooks execute arbitrary shell commands on
your system automatically. By using hooks, you acknowledge that:

- You are solely responsible for the commands you configure
- Hooks can modify, delete, or access any files your user account can access
- Malicious or poorly written hooks can cause data loss or system damage
- Anthropic provides no warranty and assumes no liability for any damages
  resulting from hook usage
- You should thoroughly test hooks in a safe environment before production use

Always review and understand any hook commands before adding them to your
configuration.

### Security Best Practices

Here are some key practices for writing more secure hooks:

1. **Validate and sanitize inputs** - Never trust input data blindly
2. **Always quote shell variables** - Use `"$VAR"` not `$VAR`
3. **Block path traversal** - Check for `..` in file paths
4. **Use absolute paths** - Specify full paths for scripts
5. **Skip sensitive files** - Avoid `.env`, `.git/`, keys, etc.

### Configuration Safety

Direct edits to hooks in settings files don't take effect immediately. Claude
Code:

1. Captures a snapshot of hooks at startup
2. Uses this snapshot throughout the session
3. Warns if hooks are modified externally
4. Requires review in `/hooks` menu for changes to apply

This prevents malicious hook modifications from affecting your current session.

## Hook Execution Details

- **Timeout**: 60-second execution limit by default, configurable per command.
  - If any individual command times out, all in-progress hooks are cancelled.
- **Parallelization**: All matching hooks run in parallel
- **Environment**: Runs in current directory with Claude Code's environment
- **Input**: JSON via stdin
- **Output**:
  - PreToolUse/PostToolUse/Stop: Progress shown in transcript (Ctrl-R)
  - Notification: Logged to debug only (`--debug`)

## Debugging

To troubleshoot hooks:

1. Check if `/hooks` menu displays your configuration
2. Verify that your [settings files](/en/docs/claude-code/settings) are valid
   JSON
3. Test commands manually
4. Check exit codes
5. Review stdout and stderr format expectations
6. Ensure proper quote escaping
7. Use `claude --debug` to debug your hooks. The output of a successful hook
   appears like below.

```
[DEBUG] Executing hooks for PostToolUse:Write
[DEBUG] Getting matching hook commands for PostToolUse with query: Write
[DEBUG] Found 1 hook matchers in settings
[DEBUG] Matched 1 hooks for query "Write"
[DEBUG] Found 1 hook commands to execute
[DEBUG] Executing hook command: <Your command> with timeout 60000ms
[DEBUG] Hook command completed with status 0: <Your stdout>
```

Progress messages appear in transcript mode (Ctrl-R) showing:

- Which hook is running
- Command being executed
- Success/failure status
- Output or error messages
````

## File: docs/09_ai/04_ai_documentation/04.2_claude_code/claude-code-mcp.md
````markdown
# Model Context Protocol (MCP)

> Learn how to set up MCP with Claude Code.

Model Context Protocol (MCP) is an open protocol that enables LLMs to access external tools and data sources. For more details about MCP, see the [MCP documentation](https://modelcontextprotocol.io/introduction).

<Warning>
  Use third party MCP servers at your own risk. Make sure you trust the MCP
  servers, and be especially careful when using MCP servers that talk to the
  internet, as these can expose you to prompt injection risk.
</Warning>

## Configure MCP servers

<Steps>
  <Step title="Add an MCP stdio Server">
    ```bash
    # Basic syntax
    claude mcp add <name> <command> [args...]

    # Example: Adding a local server
    claude mcp add my-server -e API_KEY=123 -- /path/to/server arg1 arg2
    ```

  </Step>

  <Step title="Add an MCP SSE Server">
    ```bash
    # Basic syntax
    claude mcp add --transport sse <name> <url>

    # Example: Adding an SSE server
    claude mcp add --transport sse sse-server https://example.com/sse-endpoint

    # Example: Adding an SSE server with custom headers
    claude mcp add --transport sse api-server https://api.example.com/mcp --header "X-API-Key: your-key"
    ```

  </Step>

  <Step title="Add an MCP HTTP Server">
    ```bash
    # Basic syntax
    claude mcp add --transport http <name> <url>

    # Example: Adding a streamable HTTP server
    claude mcp add --transport http http-server https://example.com/mcp

    # Example: Adding an HTTP server with authentication header
    claude mcp add --transport http secure-server https://api.example.com/mcp --header "Authorization: Bearer your-token"
    ```

  </Step>

  <Step title="Manage your MCP servers">
    ```bash
    # List all configured servers
    claude mcp list

    # Get details for a specific server
    claude mcp get my-server

    # Remove a server
    claude mcp remove my-server
    ```

  </Step>
</Steps>

<Tip>
  Tips:

- Use the `-s` or `--scope` flag to specify where the configuration is stored:
  - `local` (default): Available only to you in the current project (was called `project` in older versions)
  - `project`: Shared with everyone in the project via `.mcp.json` file
  - `user`: Available to you across all projects (was called `global` in older versions)
- Set environment variables with `-e` or `--env` flags (e.g., `-e KEY=value`)
- Configure MCP server startup timeout using the MCP_TIMEOUT environment variable (e.g., `MCP_TIMEOUT=10000 claude` sets a 10-second timeout)
- Check MCP server status any time using the `/mcp` command within Claude Code
- MCP follows a client-server architecture where Claude Code (the client) can connect to multiple specialized servers
- Claude Code supports SSE (Server-Sent Events) and streamable HTTP servers for real-time communication
- Use `/mcp` to authenticate with remote servers that require OAuth 2.0 authentication
  </Tip>

## Understanding MCP server scopes

MCP servers can be configured at three different scope levels, each serving distinct purposes for managing server accessibility and sharing. Understanding these scopes helps you determine the best way to configure servers for your specific needs.

### Scope hierarchy and precedence

MCP server configurations follow a clear precedence hierarchy. When servers with the same name exist at multiple scopes, the system resolves conflicts by prioritizing local-scoped servers first, followed by project-scoped servers, and finally user-scoped servers. This design ensures that personal configurations can override shared ones when needed.

### Local scope

Local-scoped servers represent the default configuration level and are stored in your project-specific user settings. These servers remain private to you and are only accessible when working within the current project directory. This scope is ideal for personal development servers, experimental configurations, or servers containing sensitive credentials that shouldn't be shared.

```bash
# Add a local-scoped server (default)
claude mcp add my-private-server /path/to/server

# Explicitly specify local scope
claude mcp add my-private-server -s local /path/to/server
```

### Project scope

Project-scoped servers enable team collaboration by storing configurations in a `.mcp.json` file at your project's root directory. This file is designed to be checked into version control, ensuring all team members have access to the same MCP tools and services. When you add a project-scoped server, Claude Code automatically creates or updates this file with the appropriate configuration structure.

```bash
# Add a project-scoped server
claude mcp add shared-server -s project /path/to/server
```

The resulting `.mcp.json` file follows a standardized format:

```json
{
  "mcpServers": {
    "shared-server": {
      "command": "/path/to/server",
      "args": [],
      "env": {}
    }
  }
}
```

For security reasons, Claude Code prompts for approval before using project-scoped servers from `.mcp.json` files. If you need to reset these approval choices, use the `claude mcp reset-project-choices` command.

### User scope

User-scoped servers provide cross-project accessibility, making them available across all projects on your machine while remaining private to your user account. This scope works well for personal utility servers, development tools, or services you frequently use across different projects.

```bash
# Add a user server
claude mcp add my-user-server -s user /path/to/server
```

### Choosing the right scope

Select your scope based on:

- **Local scope**: Personal servers, experimental configurations, or sensitive credentials specific to one project
- **Project scope**: Team-shared servers, project-specific tools, or services required for collaboration
- **User scope**: Personal utilities needed across multiple projects, development tools, or frequently-used services

## Authenticate with remote MCP servers

Many remote MCP servers require authentication. Claude Code supports OAuth 2.0 authentication flow for secure connection to these servers.

<Steps>
  <Step title="Add a remote server requiring authentication">
    ```bash
    # Add an SSE or HTTP server that requires OAuth
    claude mcp add --transport sse github-server https://api.github.com/mcp
    ```
  </Step>

  <Step title="Authenticate using the /mcp command">
    Within Claude Code, use the `/mcp` command to manage authentication:

    ```
    > /mcp
    ```

    This opens an interactive menu where you can:

    * View connection status for all servers
    * Authenticate with servers requiring OAuth
    * Clear existing authentication
    * View server capabilities

  </Step>

  <Step title="Complete the OAuth flow">
    When you select "Authenticate" for a server:

    1. Your browser opens automatically to the OAuth provider
    2. Complete the authentication in your browser
    3. Claude Code receives and securely stores the access token
    4. The server connection becomes active

  </Step>
</Steps>

<Tip>
  Tips:

- Authentication tokens are stored securely and refreshed automatically
- Use "Clear authentication" in the `/mcp` menu to revoke access
- If your browser doesn't open automatically, copy the provided URL
- OAuth authentication works with both SSE and HTTP transports
  </Tip>

## Connect to a Postgres MCP server

Suppose you want to give Claude read-only access to a PostgreSQL database for querying and schema inspection.

<Steps>
  <Step title="Add the Postgres MCP server">
    ```bash
    claude mcp add postgres-server /path/to/postgres-mcp-server --connection-string "postgresql://user:pass@localhost:5432/mydb"
    ```
  </Step>

  <Step title="Query your database with Claude">
    ```
    > describe the schema of our users table
    ```

    ```
    > what are the most recent orders in the system?
    ```

    ```
    > show me the relationship between customers and invoices
    ```

  </Step>
</Steps>

<Tip>
  Tips:

- The Postgres MCP server provides read-only access for safety
- Claude can help you explore database structure and run analytical queries
- You can use this to quickly understand database schemas in unfamiliar projects
- Make sure your connection string uses appropriate credentials with minimum required permissions
  </Tip>

## Add MCP servers from JSON configuration

Suppose you have a JSON configuration for a single MCP server that you want to add to Claude Code.

<Steps>
  <Step title="Add an MCP server from JSON">
    ```bash
    # Basic syntax
    claude mcp add-json <name> '<json>'

    # Example: Adding a stdio server with JSON configuration
    claude mcp add-json weather-api '{"type":"stdio","command":"/path/to/weather-cli","args":["--api-key","abc123"],"env":{"CACHE_DIR":"/tmp"}}'
    ```

  </Step>

  <Step title="Verify the server was added">
    ```bash
    claude mcp get weather-api
    ```
  </Step>
</Steps>

<Tip>
  Tips:

- Make sure the JSON is properly escaped in your shell
- The JSON must conform to the MCP server configuration schema
- You can use `-s global` to add the server to your global configuration instead of the project-specific one
  </Tip>

## Import MCP servers from Claude Desktop

Suppose you have already configured MCP servers in Claude Desktop and want to use the same servers in Claude Code without manually reconfiguring them.

<Steps>
  <Step title="Import servers from Claude Desktop">
    ```bash
    # Basic syntax
    claude mcp add-from-claude-desktop
    ```
  </Step>

  <Step title="Select which servers to import">
    After running the command, you'll see an interactive dialog that allows you to select which servers you want to import.
  </Step>

  <Step title="Verify the servers were imported">
    ```bash
    claude mcp list
    ```
  </Step>
</Steps>

<Tip>
  Tips:

- This feature only works on macOS and Windows Subsystem for Linux (WSL)
- It reads the Claude Desktop configuration file from its standard location on those platforms
- Use the `-s global` flag to add servers to your global configuration
- Imported servers will have the same names as in Claude Desktop
- If servers with the same names already exist, they will get a numerical suffix (e.g., `server_1`)
  </Tip>

## Use Claude Code as an MCP server

Suppose you want to use Claude Code itself as an MCP server that other applications can connect to, providing them with Claude's tools and capabilities.

<Steps>
  <Step title="Start Claude as an MCP server">
    ```bash
    # Basic syntax
    claude mcp serve
    ```
  </Step>

  <Step title="Connect from another application">
    You can connect to Claude Code MCP server from any MCP client, such as Claude Desktop. If you're using Claude Desktop, you can add the Claude Code MCP server using this configuration:

    ```json
    {
      "command": "claude",
      "args": ["mcp", "serve"],
      "env": {}
    }
    ```

  </Step>
</Steps>

<Tip>
  Tips:

- The server provides access to Claude's tools like View, Edit, LS, etc.
- In Claude Desktop, try asking Claude to read files in a directory, make edits, and more.
- Note that this MCP server is simply exposing Claude Code's tools to your MCP client, so your own client is responsible for implementing user confirmation for individual tool calls.
  </Tip>

## Use MCP resources

MCP servers can expose resources that you can reference using @ mentions, similar to how you reference files.

### Reference MCP resources

<Steps>
  <Step title="List available resources">
    Type `@` in your prompt to see available resources from all connected MCP servers. Resources appear alongside files in the autocomplete menu.
  </Step>

  <Step title="Reference a specific resource">
    Use the format `@server:protocol://resource/path` to reference a resource:

    ```
    > Can you analyze @github:issue://123 and suggest a fix?
    ```

    ```
    > Please review the API documentation at @docs:file://api/authentication
    ```

  </Step>

  <Step title="Multiple resource references">
    You can reference multiple resources in a single prompt:

    ```
    > Compare @postgres:schema://users with @docs:file://database/user-model
    ```

  </Step>
</Steps>

<Tip>
  Tips:

- Resources are automatically fetched and included as attachments when referenced
- Resource paths are fuzzy-searchable in the @ mention autocomplete
- Claude Code automatically provides tools to list and read MCP resources when servers support them
- Resources can contain any type of content that the MCP server provides (text, JSON, structured data, etc.)
  </Tip>

## Use MCP prompts as slash commands

MCP servers can expose prompts that become available as slash commands in Claude Code.

### Execute MCP prompts

<Steps>
  <Step title="Discover available prompts">
    Type `/` to see all available commands, including those from MCP servers. MCP prompts appear with the format `/mcp__servername__promptname`.
  </Step>

  <Step title="Execute a prompt without arguments">
    ```
    > /mcp__github__list_prs
    ```
  </Step>

  <Step title="Execute a prompt with arguments">
    Many prompts accept arguments. Pass them space-separated after the command:

    ```
    > /mcp__github__pr_review 456
    ```

    ```
    > /mcp__jira__create_issue "Bug in login flow" high
    ```

  </Step>
</Steps>

<Tip>
  Tips:

- MCP prompts are dynamically discovered from connected servers
- Arguments are parsed based on the prompt's defined parameters
- Prompt results are injected directly into the conversation
- Server and prompt names are normalized (spaces become underscores)
  </Tip>
````

## File: docs/09_ai/04_ai_documentation/04.2_claude_code/claude-code-memory.md
````markdown
# Manage Claude's memory

> Learn how to manage Claude Code's memory across sessions with different memory locations and best practices.

Claude Code can remember your preferences across sessions, like style guidelines and common commands in your workflow.

## Determine memory type

Claude Code offers three memory locations, each serving a different purpose:

| Memory Type                | Location              | Purpose                                  | Use Case Examples                                                |
| -------------------------- | --------------------- | ---------------------------------------- | ---------------------------------------------------------------- |
| **Project memory**         | `./CLAUDE.md`         | Team-shared instructions for the project | Project architecture, coding standards, common workflows         |
| **User memory**            | `~/.claude/CLAUDE.md` | Personal preferences for all projects    | Code styling preferences, personal tooling shortcuts             |
| **Project memory (local)** | `./CLAUDE.local.md`   | Personal project-specific preferences    | _(Deprecated, see below)_ Your sandbox URLs, preferred test data |

All memory files are automatically loaded into Claude Code's context when launched.

## CLAUDE.md imports

CLAUDE.md files can import additional files using `@path/to/import` syntax. The following example imports 3 files:

```
See @README for project overview and @package.json for available npm commands for this project.

# Additional Instructions
- git workflow @docs/git-instructions.md
```

Both relative and absolute paths are allowed. In particular, importing files in user's home dir is a convenient way for your team members to provide individual instructions that are not checked into the repository. Previously CLAUDE.local.md served a similar purpose, but is now deprecated in favor of imports since they work better across multiple git worktrees.

```
# Individual Preferences
- @~/.claude/my-project-instructions.md
```

To avoid potential collisions, imports are not evaluated inside markdown code spans and code blocks.

```
This code span will not be treated as an import: `@anthropic-ai/claude-code`
```

Imported files can recursively import additional files, with a max-depth of 5 hops. You can see what memory files are loaded by running `/memory` command.

## How Claude looks up memories

Claude Code reads memories recursively: starting in the cwd, Claude Code recurses up to (but not including) the root directory _/_ and reads any CLAUDE.md or CLAUDE.local.md files it finds. This is especially convenient when working in large repositories where you run Claude Code in _foo/bar/_, and have memories in both _foo/CLAUDE.md_ and _foo/bar/CLAUDE.md_.

Claude will also discover CLAUDE.md nested in subtrees under your current working directory. Instead of loading them at launch, they are only included when Claude reads files in those subtrees.

## Quickly add memories with the `#` shortcut

The fastest way to add a memory is to start your input with the `#` character:

```
# Always use descriptive variable names
```

You'll be prompted to select which memory file to store this in.

## Directly edit memories with `/memory`

Use the `/memory` slash command during a session to open any memory file in your system editor for more extensive additions or organization.

## Set up project memory

Suppose you want to set up a CLAUDE.md file to store important project information, conventions, and frequently used commands.

Bootstrap a CLAUDE.md for your codebase with the following command:

```
> /init
```

<Tip>
  Tips:

- Include frequently used commands (build, test, lint) to avoid repeated searches
- Document code style preferences and naming conventions
- Add important architectural patterns specific to your project
- CLAUDE.md memories can be used for both instructions shared with your team and for your individual preferences.
  </Tip>

## Memory best practices

- **Be specific**: "Use 2-space indentation" is better than "Format code properly".
- **Use structure to organize**: Format each individual memory as a bullet point and group related memories under descriptive markdown headings.
- **Review periodically**: Update memories as your project evolves to ensure Claude is always using the most up to date information and context.
````

## File: docs/09_ai/04_ai_documentation/04.2_claude_code/claude-code-monitoring.md
````markdown
# Monitoring

> Learn how to enable and configure OpenTelemetry for Claude Code.

Claude Code supports OpenTelemetry (OTel) metrics and events for monitoring and observability.

All metrics are time series data exported via OpenTelemetry's standard metrics protocol, and events are exported via OpenTelemetry's logs/events protocol. It is the user's responsibility to ensure their metrics and logs backends are properly configured and that the aggregation granularity meets their monitoring requirements.

<Note>
  OpenTelemetry support is currently in beta and details are subject to change.
</Note>

## Quick Start

Configure OpenTelemetry using environment variables:

```bash
# 1. Enable telemetry
export CLAUDE_CODE_ENABLE_TELEMETRY=1

# 2. Choose exporters (both are optional - configure only what you need)
export OTEL_METRICS_EXPORTER=otlp       # Options: otlp, prometheus, console
export OTEL_LOGS_EXPORTER=otlp          # Options: otlp, console

# 3. Configure OTLP endpoint (for OTLP exporter)
export OTEL_EXPORTER_OTLP_PROTOCOL=grpc
export OTEL_EXPORTER_OTLP_ENDPOINT=http://localhost:4317

# 4. Set authentication (if required)
export OTEL_EXPORTER_OTLP_HEADERS="Authorization=Bearer your-token"

# 5. For debugging: reduce export intervals
export OTEL_METRIC_EXPORT_INTERVAL=10000  # 10 seconds (default: 60000ms)
export OTEL_LOGS_EXPORT_INTERVAL=5000     # 5 seconds (default: 5000ms)

# 6. Run Claude Code
claude
```

<Note>
  The default export intervals are 60 seconds for metrics and 5 seconds for logs. During setup, you may want to use shorter intervals for debugging purposes. Remember to reset these for production use.
</Note>

For full configuration options, see the [OpenTelemetry specification](https://github.com/open-telemetry/opentelemetry-specification/blob/main/specification/protocol/exporter.md#configuration-options).

## Administrator Configuration

Administrators can configure OpenTelemetry settings for all users through the managed settings file. This allows for centralized control of telemetry settings across an organization. See the [settings precedence](/en/docs/claude-code/settings#settings-precedence) for more information about how settings are applied.

The managed settings file is located at:

- macOS: `/Library/Application Support/ClaudeCode/managed-settings.json`
- Linux: `/etc/claude-code/managed-settings.json`

Example managed settings configuration:

```json
{
  "env": {
    "CLAUDE_CODE_ENABLE_TELEMETRY": "1",
    "OTEL_METRICS_EXPORTER": "otlp",
    "OTEL_LOGS_EXPORTER": "otlp",
    "OTEL_EXPORTER_OTLP_PROTOCOL": "grpc",
    "OTEL_EXPORTER_OTLP_ENDPOINT": "http://collector.company.com:4317",
    "OTEL_EXPORTER_OTLP_HEADERS": "Authorization=Bearer company-token"
  }
}
```

<Note>
  Managed settings can be distributed via MDM (Mobile Device Management) or other device management solutions. Environment variables defined in the managed settings file have high precedence and cannot be overridden by users.
</Note>

## Configuration Details

### Common Configuration Variables

| Environment Variable                            | Description                                               | Example Values                       |
| ----------------------------------------------- | --------------------------------------------------------- | ------------------------------------ |
| `CLAUDE_CODE_ENABLE_TELEMETRY`                  | Enables telemetry collection (required)                   | `1`                                  |
| `OTEL_METRICS_EXPORTER`                         | Metrics exporter type(s) (comma-separated)                | `console`, `otlp`, `prometheus`      |
| `OTEL_LOGS_EXPORTER`                            | Logs/events exporter type(s) (comma-separated)            | `console`, `otlp`                    |
| `OTEL_EXPORTER_OTLP_PROTOCOL`                   | Protocol for OTLP exporter (all signals)                  | `grpc`, `http/json`, `http/protobuf` |
| `OTEL_EXPORTER_OTLP_ENDPOINT`                   | OTLP collector endpoint (all signals)                     | `http://localhost:4317`              |
| `OTEL_EXPORTER_OTLP_METRICS_PROTOCOL`           | Protocol for metrics (overrides general)                  | `grpc`, `http/json`, `http/protobuf` |
| `OTEL_EXPORTER_OTLP_METRICS_ENDPOINT`           | OTLP metrics endpoint (overrides general)                 | `http://localhost:4318/v1/metrics`   |
| `OTEL_EXPORTER_OTLP_LOGS_PROTOCOL`              | Protocol for logs (overrides general)                     | `grpc`, `http/json`, `http/protobuf` |
| `OTEL_EXPORTER_OTLP_LOGS_ENDPOINT`              | OTLP logs endpoint (overrides general)                    | `http://localhost:4318/v1/logs`      |
| `OTEL_EXPORTER_OTLP_HEADERS`                    | Authentication headers for OTLP                           | `Authorization=Bearer token`         |
| `OTEL_EXPORTER_OTLP_METRICS_CLIENT_KEY`         | Client key for mTLS authentication                        | Path to client key file              |
| `OTEL_EXPORTER_OTLP_METRICS_CLIENT_CERTIFICATE` | Client certificate for mTLS authentication                | Path to client cert file             |
| `OTEL_METRIC_EXPORT_INTERVAL`                   | Export interval in milliseconds (default: 60000)          | `5000`, `60000`                      |
| `OTEL_LOGS_EXPORT_INTERVAL`                     | Logs export interval in milliseconds (default: 5000)      | `1000`, `10000`                      |
| `OTEL_LOG_USER_PROMPTS`                         | Enable logging of user prompt content (default: disabled) | `1` to enable                        |

### Metrics Cardinality Control

The following environment variables control which attributes are included in metrics to manage cardinality:

| Environment Variable                | Description                                    | Default Value | Example to Disable |
| ----------------------------------- | ---------------------------------------------- | ------------- | ------------------ |
| `OTEL_METRICS_INCLUDE_SESSION_ID`   | Include session.id attribute in metrics        | `true`        | `false`            |
| `OTEL_METRICS_INCLUDE_VERSION`      | Include app.version attribute in metrics       | `false`       | `true`             |
| `OTEL_METRICS_INCLUDE_ACCOUNT_UUID` | Include user.account_uuid attribute in metrics | `true`        | `false`            |

These variables help control the cardinality of metrics, which affects storage requirements and query performance in your metrics backend. Lower cardinality generally means better performance and lower storage costs but less granular data for analysis.

### Multi-Team Organization Support

Organizations with multiple teams or departments can add custom attributes to distinguish between different groups using the `OTEL_RESOURCE_ATTRIBUTES` environment variable:

```bash
# Add custom attributes for team identification
export OTEL_RESOURCE_ATTRIBUTES="department=engineering,team.id=platform,cost_center=eng-123"
```

These custom attributes will be included in all metrics and events, allowing you to:

- Filter metrics by team or department
- Track costs per cost center
- Create team-specific dashboards
- Set up alerts for specific teams

### Example Configurations

```bash
# Console debugging (1-second intervals)
export CLAUDE_CODE_ENABLE_TELEMETRY=1
export OTEL_METRICS_EXPORTER=console
export OTEL_METRIC_EXPORT_INTERVAL=1000

# OTLP/gRPC
export CLAUDE_CODE_ENABLE_TELEMETRY=1
export OTEL_METRICS_EXPORTER=otlp
export OTEL_EXPORTER_OTLP_PROTOCOL=grpc
export OTEL_EXPORTER_OTLP_ENDPOINT=http://localhost:4317

# Prometheus
export CLAUDE_CODE_ENABLE_TELEMETRY=1
export OTEL_METRICS_EXPORTER=prometheus

# Multiple exporters
export CLAUDE_CODE_ENABLE_TELEMETRY=1
export OTEL_METRICS_EXPORTER=console,otlp
export OTEL_EXPORTER_OTLP_PROTOCOL=http/json

# Different endpoints/backends for metrics and logs
export CLAUDE_CODE_ENABLE_TELEMETRY=1
export OTEL_METRICS_EXPORTER=otlp
export OTEL_LOGS_EXPORTER=otlp
export OTEL_EXPORTER_OTLP_METRICS_PROTOCOL=http/protobuf
export OTEL_EXPORTER_OTLP_METRICS_ENDPOINT=http://metrics.company.com:4318
export OTEL_EXPORTER_OTLP_LOGS_PROTOCOL=grpc
export OTEL_EXPORTER_OTLP_LOGS_ENDPOINT=http://logs.company.com:4317

# Metrics only (no events/logs)
export CLAUDE_CODE_ENABLE_TELEMETRY=1
export OTEL_METRICS_EXPORTER=otlp
export OTEL_EXPORTER_OTLP_PROTOCOL=grpc
export OTEL_EXPORTER_OTLP_ENDPOINT=http://localhost:4317

# Events/logs only (no metrics)
export CLAUDE_CODE_ENABLE_TELEMETRY=1
export OTEL_LOGS_EXPORTER=otlp
export OTEL_EXPORTER_OTLP_PROTOCOL=grpc
export OTEL_EXPORTER_OTLP_ENDPOINT=http://localhost:4317
```

## Available Metrics and Events

### Standard Attributes

All metrics and events share these standard attributes:

| Attribute           | Description                                                   | Controlled By                                       |
| ------------------- | ------------------------------------------------------------- | --------------------------------------------------- |
| `session.id`        | Unique session identifier                                     | `OTEL_METRICS_INCLUDE_SESSION_ID` (default: true)   |
| `app.version`       | Current Claude Code version                                   | `OTEL_METRICS_INCLUDE_VERSION` (default: false)     |
| `organization.id`   | Organization UUID (when authenticated)                        | Always included when available                      |
| `user.account_uuid` | Account UUID (when authenticated)                             | `OTEL_METRICS_INCLUDE_ACCOUNT_UUID` (default: true) |
| `terminal.type`     | Terminal type (e.g., `iTerm.app`, `vscode`, `cursor`, `tmux`) | Always included when detected                       |

### Metrics

Claude Code exports the following metrics:

| Metric Name                           | Description                                     | Unit   |
| ------------------------------------- | ----------------------------------------------- | ------ |
| `claude_code.session.count`           | Count of CLI sessions started                   | count  |
| `claude_code.lines_of_code.count`     | Count of lines of code modified                 | count  |
| `claude_code.pull_request.count`      | Number of pull requests created                 | count  |
| `claude_code.commit.count`            | Number of git commits created                   | count  |
| `claude_code.cost.usage`              | Cost of the Claude Code session                 | USD    |
| `claude_code.token.usage`             | Number of tokens used                           | tokens |
| `claude_code.code_edit_tool.decision` | Count of code editing tool permission decisions | count  |

### Metric Details

#### Session Counter

Incremented at the start of each session.

**Attributes**:

- All [standard attributes](#standard-attributes)

#### Lines of Code Counter

Incremented when code is added or removed.

**Attributes**:

- All [standard attributes](#standard-attributes)
- `type`: (`"added"`, `"removed"`)

#### Pull Request Counter

Incremented when creating pull requests via Claude Code.

**Attributes**:

- All [standard attributes](#standard-attributes)

#### Commit Counter

Incremented when creating git commits via Claude Code.

**Attributes**:

- All [standard attributes](#standard-attributes)

#### Cost Counter

Incremented after each API request.

**Attributes**:

- All [standard attributes](#standard-attributes)
- `model`: Model identifier (e.g., "claude-3-5-sonnet-20241022")

#### Token Counter

Incremented after each API request.

**Attributes**:

- All [standard attributes](#standard-attributes)
- `type`: (`"input"`, `"output"`, `"cacheRead"`, `"cacheCreation"`)
- `model`: Model identifier (e.g., "claude-3-5-sonnet-20241022")

#### Code Edit Tool Decision Counter

Incremented when user accepts or rejects Edit, MultiEdit, Write, or NotebookEdit tool usage.

**Attributes**:

- All [standard attributes](#standard-attributes)
- `tool`: Tool name (`"Edit"`, `"MultiEdit"`, `"Write"`, `"NotebookEdit"`)
- `decision`: User decision (`"accept"`, `"reject"`)
- `language`: Programming language of the edited file (e.g., `"TypeScript"`, `"Python"`, `"JavaScript"`, `"Markdown"`). Returns `"unknown"` for unrecognized file extensions.

### Events

Claude Code exports the following events via OpenTelemetry logs/events (when `OTEL_LOGS_EXPORTER` is configured):

#### User Prompt Event

Logged when a user submits a prompt.

**Event Name**: `claude_code.user_prompt`

**Attributes**:

- All [standard attributes](#standard-attributes)
- `event.name`: `"user_prompt"`
- `event.timestamp`: ISO 8601 timestamp
- `prompt_length`: Length of the prompt
- `prompt`: Prompt content (redacted by default, enable with `OTEL_LOG_USER_PROMPTS=1`)

#### Tool Result Event

Logged when a tool completes execution.

**Event Name**: `claude_code.tool_result`

**Attributes**:

- All [standard attributes](#standard-attributes)
- `event.name`: `"tool_result"`
- `event.timestamp`: ISO 8601 timestamp
- `name`: Name of the tool
- `success`: `"true"` or `"false"`
- `duration_ms`: Execution time in milliseconds
- `error`: Error message (if failed)

#### API Request Event

Logged for each API request to Claude.

**Event Name**: `claude_code.api_request`

**Attributes**:

- All [standard attributes](#standard-attributes)
- `event.name`: `"api_request"`
- `event.timestamp`: ISO 8601 timestamp
- `model`: Model used (e.g., "claude-3-5-sonnet-20241022")
- `cost_usd`: Estimated cost in USD
- `duration_ms`: Request duration in milliseconds
- `input_tokens`: Number of input tokens
- `output_tokens`: Number of output tokens
- `cache_read_tokens`: Number of tokens read from cache
- `cache_creation_tokens`: Number of tokens used for cache creation

#### API Error Event

Logged when an API request to Claude fails.

**Event Name**: `claude_code.api_error`

**Attributes**:

- All [standard attributes](#standard-attributes)
- `event.name`: `"api_error"`
- `event.timestamp`: ISO 8601 timestamp
- `model`: Model used (e.g., "claude-3-5-sonnet-20241022")
- `error`: Error message
- `status_code`: HTTP status code (if applicable)
- `duration_ms`: Request duration in milliseconds
- `attempt`: Attempt number (for retried requests)

#### Tool Decision Event

Logged when a tool permission decision is made (accept/reject).

**Event Name**: `claude_code.tool_decision`

**Attributes**:

- All [standard attributes](#standard-attributes)
- `event.name`: `"tool_decision"`
- `event.timestamp`: ISO 8601 timestamp
- `tool_name`: Name of the tool (e.g., "Read", "Edit", "MultiEdit", "Write", "NotebookEdit", etc.)
- `decision`: Either `"accept"` or `"reject"`
- `source`: Decision source - `"config"`, `"user_permanent"`, `"user_temporary"`, `"user_abort"`, or `"user_reject"`

## Interpreting Metrics and Events Data

The metrics exported by Claude Code provide valuable insights into usage patterns and productivity. Here are some common visualizations and analyses you can create:

### Usage Monitoring

| Metric                                                        | Analysis Opportunity                                      |
| ------------------------------------------------------------- | --------------------------------------------------------- |
| `claude_code.token.usage`                                     | Break down by `type` (input/output), user, team, or model |
| `claude_code.session.count`                                   | Track adoption and engagement over time                   |
| `claude_code.lines_of_code.count`                             | Measure productivity by tracking code additions/removals  |
| `claude_code.commit.count` & `claude_code.pull_request.count` | Understand impact on development workflows                |

### Cost Monitoring

The `claude_code.cost.usage` metric helps with:

- Tracking usage trends across teams or individuals
- Identifying high-usage sessions for optimization

<Note>
  Cost metrics are approximations. For official billing data, refer to your API provider (Anthropic Console, AWS Bedrock, or Google Cloud Vertex).
</Note>

### Alerting and Segmentation

Common alerts to consider:

- Cost spikes
- Unusual token consumption
- High session volume from specific users

All metrics can be segmented by `user.account_uuid`, `organization.id`, `session.id`, `model`, and `app.version`.

### Event Analysis

The event data provides detailed insights into Claude Code interactions:

**Tool Usage Patterns**: Analyze tool result events to identify:

- Most frequently used tools
- Tool success rates
- Average tool execution times
- Error patterns by tool type

**Performance Monitoring**: Track API request durations and tool execution times to identify performance bottlenecks.

## Backend Considerations

Your choice of metrics and logs backends will determine the types of analyses you can perform:

### For Metrics:

- **Time series databases (e.g., Prometheus)**: Rate calculations, aggregated metrics
- **Columnar stores (e.g., ClickHouse)**: Complex queries, unique user analysis
- **Full-featured observability platforms (e.g., Honeycomb, Datadog)**: Advanced querying, visualization, alerting

### For Events/Logs:

- **Log aggregation systems (e.g., Elasticsearch, Loki)**: Full-text search, log analysis
- **Columnar stores (e.g., ClickHouse)**: Structured event analysis
- **Full-featured observability platforms (e.g., Honeycomb, Datadog)**: Correlation between metrics and events

For organizations requiring Daily/Weekly/Monthly Active User (DAU/WAU/MAU) metrics, consider backends that support efficient unique value queries.

## Service Information

All metrics are exported with:

- Service Name: `claude-code`
- Service Version: Current Claude Code version
- Meter Name: `com.anthropic.claude_code`

## Security/Privacy Considerations

- Telemetry is opt-in and requires explicit configuration
- Sensitive information like API keys or file contents are never included in metrics or events
- User prompt content is redacted by default - only prompt length is recorded. To enable user prompt logging, set `OTEL_LOG_USER_PROMPTS=1`
````

## File: docs/09_ai/04_ai_documentation/04.2_claude_code/claude-code-overview.md
````markdown
# Claude Code overview

> Learn about Claude Code, the agentic coding tool that lives in your terminal, understands your codebase, and helps you code faster through natural language commands.

By integrating directly with your development environment, Claude Code streamlines your workflow without requiring additional servers or complex setup.

## Basic usage

To install Claude Code, use NPM:

```bash
npm install -g @anthropic-ai/claude-code
```

For more detailed installation instructions, see [Set up Claude Code](/en/docs/claude-code/setup).

To run Claude Code, simply call the `claude` CLI:

```bash
claude
```

You can then prompt Claude directly from the interactive Claude Code REPL session.

For more usage instructions, see [Quickstart](/en/docs/claude-code/quickstart).

## Why Claude Code?

### Accelerate development

Use Claude Code to accelerate development with the following key capabilities:

- Editing files and fixing bugs across your codebase
- Answering questions about your code's architecture and logic
- Executing and fixing tests, linting, and other commands
- Searching through git history, resolving merge conflicts, and creating commits and PRs
- Browsing documentation and resources from the internet using web search

Claude Code provides a comprehensive set of [tools](/en/docs/claude-code/settings#tools-available-to-claude) for interacting with your development environment, including file operations, code search, web browsing, and more. Understanding these tools helps you leverage Claude Code's full capabilities.

### Security and privacy by design

Your code's security is paramount. Claude Code's architecture ensures:

- **Direct API connection**: Your queries go straight to Anthropic's API without intermediate servers
- **Works where you work**: Operates directly in your terminal
- **Understands context**: Maintains awareness of your entire project structure
- **Takes action**: Performs real operations like editing files and creating commits

### Enterprise integration

Claude Code seamlessly integrates with enterprise AI platforms. You can connect to [Amazon Bedrock or Google Vertex AI](/en/docs/claude-code/third-party-integrations) for secure, compliant deployments that meet your organization's requirements.

## Next steps

<CardGroup>
  <Card title="Setup" icon="download" href="/en/docs/claude-code/setup">
    Install and authenticate Claude Code
  </Card>

  <Card title="Quickstart" icon="rocket" href="/en/docs/claude-code/quickstart">
    See Claude Code in action with practical examples
  </Card>

  <Card title="Commands" icon="terminal" href="/en/docs/claude-code/cli-reference">
    Learn about CLI commands and controls
  </Card>

  <Card title="Configuration" icon="gear" href="/en/docs/claude-code/settings">
    Customize Claude Code for your workflow
  </Card>
</CardGroup>

## Additional resources

<CardGroup>
  <Card title="Common workflows" icon="graduation-cap" href="/en/docs/claude-code/common-workflows">
    Step-by-step guides for common workflows
  </Card>

  <Card title="Troubleshooting" icon="wrench" href="/en/docs/claude-code/troubleshooting">
    Solutions for common issues with Claude Code
  </Card>

  <Card title="Bedrock & Vertex integrations" icon="cloud" href="/en/docs/claude-code/bedrock-vertex-proxies">
    Configure Claude Code with Amazon Bedrock or Google Vertex AI
  </Card>

  <Card title="Reference implementation" icon="code" href="https://github.com/anthropics/claude-code/tree/main/.devcontainer">
    Clone our development container reference implementation.
  </Card>
</CardGroup>

# Set up Claude Code

> Install, authenticate, and start using Claude Code on your development machine.

## System requirements

- **Operating Systems**: macOS 10.15+, Ubuntu 20.04+/Debian 10+, or Windows via WSL
- **Hardware**: 4GB RAM minimum
- **Software**:
  - Node.js 18+
  - [git](https://git-scm.com/downloads) 2.23+ (optional)
  - [GitHub](https://cli.github.com/) or [GitLab](https://gitlab.com/gitlab-org/cli) CLI for PR workflows (optional)
- **Network**: Internet connection required for authentication and AI processing
- **Location**: Available only in [supported countries](https://www.anthropic.com/supported-countries)

## Install and authenticate

<Steps>
  <Step title="Install Claude Code">
    Install [NodeJS 18+](https://nodejs.org/en/download), then run:

    ```sh
    npm install -g @anthropic-ai/claude-code
    ```

    <Warning>
      Do NOT use `sudo npm install -g` as this can lead to permission issues and
      security risks. If you encounter permission errors, see [configure Claude
      Code](/en/docs/claude-code/troubleshooting#linux-permission-issues) for recommended solutions.
    </Warning>

  </Step>

  <Step title="Navigate to your project">
    ```bash
    cd your-project-directory
    ```
  </Step>

  <Step title="Start Claude Code">
    ```bash
    claude
    ```
  </Step>

  <Step title="Complete authentication">
    Claude Code offers multiple authentication options:

    1. **Anthropic Console**: The default option. Connect through the Anthropic Console and
       complete the OAuth process. Requires active billing at [console.anthropic.com](https://console.anthropic.com).
    2. **Claude App (with Pro or Max plan)**: Subscribe to Claude's [Pro or Max plan](https://www.anthropic.com/pricing) for a unified subscription that includes both Claude Code and the web interface. Get more value at the same price point while managing your account in one place. Log in with your Claude.ai account. During launch, choose the option that matches your subscription type.
    3. **Enterprise platforms**: Configure Claude Code to use
       [Amazon Bedrock or Google Vertex AI](/en/docs/claude-code/bedrock-vertex-proxies)
       for enterprise deployments with your existing cloud infrastructure.

  </Step>
</Steps>

## Initialize your project

For first-time users, we recommend:

<Steps>
  <Step title="Start Claude Code">
    ```bash
    claude
    ```
  </Step>

  <Step title="Run a simple command">
    ```
    > summarize this project
    ```
  </Step>

  <Step title="Generate a CLAUDE.md project guide">
    ```
    /init
    ```
  </Step>

  <Step title="Commit the generated CLAUDE.md file">
    Ask Claude to commit the generated CLAUDE.md file to your repository.
  </Step>
</Steps>

## Troubleshooting

### Troubleshooting WSL installation

Currently, Claude Code does not run directly in Windows, and instead requires WSL.

You might encounter the following issues in WSL:

**OS/platform detection issues**: If you receive an error during installation, WSL may be using Windows `npm`. Try:

- Run `npm config set os linux` before installation
- Install with `npm install -g @anthropic-ai/claude-code --force --no-os-check` (Do NOT use `sudo`)

**Node not found errors**: If you see `exec: node: not found` when running `claude`, your WSL environment may be using a Windows installation of Node.js. You can confirm this with `which npm` and `which node`, which should point to Linux paths starting with `/usr/` rather than `/mnt/c/`. To fix this, try installing Node via your Linux distribution's package manager or via [`nvm`](https://github.com/nvm-sh/nvm).

## Optimize your terminal setup

Claude Code works best when your terminal is properly configured. Follow these guidelines to optimize your experience.

**Supported shells**:

- Bash
- Zsh
- Fish

### Themes and appearance

Claude cannot control the theme of your terminal. That's handled by your terminal application. You can match Claude Code's theme to your terminal during onboarding or any time via the `/config` command

### Line breaks

You have several options for entering linebreaks into Claude Code:

- **Quick escape**: Type `\` followed by Enter to create a newline
- **Keyboard shortcut**: Press Option+Enter (Meta+Enter) with proper configuration

To set up Option+Enter in your terminal:

**For Mac Terminal.app:**

1. Open Settings → Profiles → Keyboard
2. Check "Use Option as Meta Key"

**For iTerm2 and VSCode terminal:**

1. Open Settings → Profiles → Keys
2. Under General, set Left/Right Option key to "Esc+"

**Tip for iTerm2 and VSCode users**: Run `/terminal-setup` within Claude Code to automatically configure Shift+Enter as a more intuitive alternative.

### Notification setup

Never miss when Claude completes a task with proper notification configuration:

#### Terminal bell notifications

Enable sound alerts when tasks complete:

```sh
claude config set --global preferredNotifChannel terminal_bell
```

**For macOS users**: Don't forget to enable notification permissions in System Settings → Notifications → \[Your Terminal App].

#### iTerm 2 system notifications

For iTerm 2 alerts when tasks complete:

1. Open iTerm 2 Preferences
2. Navigate to Profiles → Terminal
3. Enable "Silence bell" and Filter Alerts → "Send escape sequence-generated alerts"
4. Set your preferred notification delay

Note that these notifications are specific to iTerm 2 and not available in the default macOS Terminal.

#### Custom notification hooks

For advanced notification handling, you can create [notification hooks](/en/docs/claude-code/hooks#notification) to run your own logic.

### Handling large inputs

When working with extensive code or long instructions:

- **Avoid direct pasting**: Claude Code may struggle with very long pasted content
- **Use file-based workflows**: Write content to a file and ask Claude to read it
- **Be aware of VS Code limitations**: The VS Code terminal is particularly prone to truncating long pastes

### Vim Mode

Claude Code supports a subset of Vim keybindings that can be enabled with `/vim` or configured via `/config`.

The supported subset includes:

- Mode switching: `Esc` (to NORMAL), `i`/`I`, `a`/`A`, `o`/`O` (to INSERT)
- Navigation: `h`/`j`/`k`/`l`, `w`/`e`/`b`, `0`/`$`/`^`, `gg`/`G`
- Editing: `x`, `dw`/`de`/`db`/`dd`/`D`, `cw`/`ce`/`cb`/`cc`/`C`, `.` (repeat)

# Quickstart

> Welcome to Claude Code!

This quickstart guide will have you using AI-powered coding assistance in just a few minutes. By the end, you'll understand how to use Claude Code for common development tasks.

## Before you begin

Make sure you have:

- [Installed Claude Code](/en/docs/claude-code/setup)
- A terminal or command prompt open
- A code project to work with

## Step 1: Start your first session

Open your terminal in any project directory and start Claude Code:

```bash
cd /path/to/your/project
claude
```

You'll see the Claude Code prompt inside a new interactive session:

```
✻ Welcome to Claude Code!

...

> Try "create a util logging.py that..."
```

## Step 2: Ask your first question

Let's start with understanding your codebase. Try one of these commands:

```
> what does this project do?
```

Claude will analyze your files and provide a summary. You can also ask more specific questions:

```
> what technologies does this project use?
```

```
> where is the main entry point?
```

```
> explain the folder structure
```

<Note>
  Claude Code reads your files as needed - you don't have to manually add context.
</Note>

## Step 3: Make your first code change

Now let's make Claude Code do some actual coding. Try a simple task:

```
> add a hello world function to the main file
```

Claude Code will:

1. Find the appropriate file
2. Show you the proposed changes
3. Ask for your approval
4. Make the edit

<Note>
  Claude Code always asks for permission before modifying files. You can approve individual changes or enable "Accept all" mode for a session.
</Note>

## Step 4: Use Git with Claude Code

Claude Code makes Git operations conversational:

```
> what files have I changed?
```

```
> commit my changes with a descriptive message
```

You can also prompt for more complex Git operations:

```
> create a new branch called feature/quickstart
```

```
> show me the last 5 commits
```

```
> help me resolve merge conflicts
```

## Step 5: Fix a bug or add a feature

Claude is proficient at debugging and feature implementation.

Describe what you want in natural language:

```
> add input validation to the user registration form
```

Or fix existing issues:

```
> there's a bug where users can submit empty forms - fix it
```

Claude Code will:

- Locate the relevant code
- Understand the context
- Implement a solution
- Run tests if available

## Step 6: Test out other common workflows

There are a number of ways to work with Claude:

**Refactor code**

```
> refactor the authentication module to use async/await instead of callbacks
```

**Write tests**

```
> write unit tests for the calculator functions
```

**Update documentation**

```
> update the README with installation instructions
```

**Code review**

```
> review my changes and suggest improvements
```

<Tip>
  **Remember**: Claude Code is your AI pair programmer. Talk to it like you would a helpful colleague - describe what you want to achieve, and it will help you get there.
</Tip>

## Essential commands

Here are the most important commands for daily use:

| Command             | What it does                      | Example                             |
| ------------------- | --------------------------------- | ----------------------------------- |
| `claude`            | Start interactive mode            | `claude`                            |
| `claude "task"`     | Run a one-time task               | `claude "fix the build error"`      |
| `claude -p "query"` | Run one-off query, then exit      | `claude -p "explain this function"` |
| `claude -c`         | Continue most recent conversation | `claude -c`                         |
| `claude -r`         | Resume a previous conversation    | `claude -r`                         |
| `claude commit`     | Create a Git commit               | `claude commit`                     |
| `/clear`            | Clear conversation history        | `> /clear`                          |
| `/help`             | Show available commands           | `> /help`                           |
| `exit` or Ctrl+C    | Exit Claude Code                  | `> exit`                            |

## Pro tips for beginners

<AccordionGroup>
  <Accordion title="Be specific with your requests">
    Instead of: "fix the bug"

    Try: "fix the login bug where users see a blank screen after entering wrong credentials"

  </Accordion>

  <Accordion title="Use step-by-step instructions">
    Break complex tasks into steps:

    ```
    > 1. create a new API endpoint for user profiles
    ```

    ```
    > 2. add validation for required fields
    ```

    ```
    > 3. write tests for the endpoint
    ```

  </Accordion>

  <Accordion title="Let Claude explore first">
    Before making changes, let Claude understand your code:

    ```
    > analyze the database schema
    ```

    ```
    > how does error handling work in this app?
    ```

  </Accordion>

  <Accordion title="Save time with shortcuts">
    * Use Tab for command completion
    * Press ↑ for command history
    * Type `/` to see all slash commands
  </Accordion>
</AccordionGroup>

## What's next?

Now that you've learned the basics, explore more advanced features:

<CardGroup cols={3}>
  <Card title="CLI reference" icon="terminal" href="/en/docs/claude-code/cli-reference">
    Master all commands and options
  </Card>

  <Card title="Configuration" icon="gear" href="/en/docs/claude-code/settings">
    Customize Claude Code for your workflow
  </Card>

  <Card title="Common workflows" icon="graduation-cap" href="/en/docs/claude-code/common-workflows">
    Learn advanced techniques
  </Card>
</CardGroup>

## Getting help

- **In Claude Code**: Type `/help` or ask "how do I..."
- **Documentation**: You're here! Browse other guides
- **Community**: Join our [Discord](https://www.anthropic.com/discord) for tips and support
````

## File: docs/09_ai/04_ai_documentation/04.2_claude_code/claude-code-settings.md
````markdown
# Claude Code settings

> Configure Claude Code with global and project-level settings, and environment variables.

Claude Code offers a variety of settings to configure its behavior to meet your needs. You can configure Claude Code by running the `/config` command when using the interactive REPL.

## Settings files

The `settings.json` file is our official mechanism for configuring Claude
Code through hierarchical settings:

- **User settings** are defined in `~/.claude/settings.json` and apply to all
  projects.
- **Project settings** are saved in your project directory:
  - `.claude/settings.json` for settings that are checked into source control and shared with your team
  - `.claude/settings.local.json` for settings that are not checked in, useful for personal preferences and experimentation. Claude Code will configure git to ignore `.claude/settings.local.json` when it is created.
- For enterprise deployments of Claude Code, we also support **enterprise
  managed policy settings**. These take precedence over user and project
  settings. System administrators can deploy policies to
  `/Library/Application Support/ClaudeCode/managed-settings.json` on macOS and
  `/etc/claude-code/managed-settings.json` on Linux and Windows via WSL.

```JSON Example settings.json
{
  "permissions": {
    "allow": [
      "Bash(npm run lint)",
      "Bash(npm run test:*)",
      "Read(~/.zshrc)"
    ],
    "deny": [
      "Bash(curl:*)"
    ]
  },
  "env": {
    "CLAUDE_CODE_ENABLE_TELEMETRY": "1",
    "OTEL_METRICS_EXPORTER": "otlp"
  }
}
```

### Available settings

`settings.json` supports a number of options:

| Key                   | Description                                                                                                                                                                                                    | Example                         |
| :-------------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | :------------------------------ |
| `apiKeyHelper`        | Custom script, to be executed in `/bin/sh`, to generate an auth value. This value will generally be sent as `X-Api-Key`, `Authorization: Bearer`, and `Proxy-Authorization: Bearer` headers for model requests | `/bin/generate_temp_api_key.sh` |
| `cleanupPeriodDays`   | How long to locally retain chat transcripts (default: 30 days)                                                                                                                                                 | `20`                            |
| `env`                 | Environment variables that will be applied to every session                                                                                                                                                    | `{"FOO": "bar"}`                |
| `includeCoAuthoredBy` | Whether to include the `co-authored-by Claude` byline in git commits and pull requests (default: `true`)                                                                                                       | `false`                         |
| `permissions`         | See table below for structure of permissions.                                                                                                                                                                  |                                 |

### Permission settings

| Keys                           | Description                                                                                                                                        | Example                          |
| :----------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------------- | :------------------------------- |
| `allow`                        | Array of [permission rules](/en/docs/claude-code/iam#configuring-permissions) to allow tool use                                                    | `[ "Bash(git diff:*)" ]`         |
| `deny`                         | Array of [permission rules](/en/docs/claude-code/iam#configuring-permissions) to deny tool use                                                     | `[ "WebFetch", "Bash(curl:*)" ]` |
| `additionalDirectories`        | Additional [working directories](iam#working-directories) that Claude has access to                                                                | `[ "../docs/" ]`                 |
| `defaultMode`                  | Default [permission mode](iam#permission-modes) when opening Claude Code                                                                           | `"allowEdits"`                   |
| `disableBypassPermissionsMode` | Set to `"disable"` to prevent `bypassPermissions` mode from being activated. See [managed policy settings](iam#enterprise-managed-policy-settings) | `"disable"`                      |

### Settings precedence

Settings are applied in order of precedence:

1. Enterprise policies (see [IAM documentation](/en/docs/claude-code/iam#enterprise-managed-policy-settings))
2. Command line arguments
3. Local project settings
4. Shared project settings
5. User settings

## Environment variables

Claude Code supports the following environment variables to control its behavior:

<Note>
  All environment variables can also be configured in [`settings.json`](#available-settings). This is useful as a way to automatically set environment variables for each session, or to roll out a set of environment variables for your whole team or organization.
</Note>

| Variable                                   | Purpose                                                                                                                                |
| :----------------------------------------- | :------------------------------------------------------------------------------------------------------------------------------------- |
| `ANTHROPIC_API_KEY`                        | API key sent as `X-Api-Key` header, typically for the Claude SDK (for interactive usage, run `/login`)                                 |
| `ANTHROPIC_AUTH_TOKEN`                     | Custom value for the `Authorization` and `Proxy-Authorization` headers (the value you set here will be prefixed with `Bearer `)        |
| `ANTHROPIC_CUSTOM_HEADERS`                 | Custom headers you want to add to the request (in `Name: Value` format)                                                                |
| `ANTHROPIC_MODEL`                          | Name of custom model to use (see [Model Configuration](/en/docs/claude-code/bedrock-vertex-proxies#model-configuration))               |
| `ANTHROPIC_SMALL_FAST_MODEL`               | Name of [Haiku-class model for background tasks](/en/docs/claude-code/costs)                                                           |
| `BASH_DEFAULT_TIMEOUT_MS`                  | Default timeout for long-running bash commands                                                                                         |
| `BASH_MAX_TIMEOUT_MS`                      | Maximum timeout the model can set for long-running bash commands                                                                       |
| `BASH_MAX_OUTPUT_LENGTH`                   | Maximum number of characters in bash outputs before they are middle-truncated                                                          |
| `CLAUDE_BASH_MAINTAIN_PROJECT_WORKING_DIR` | Return to the original working directory after each Bash command                                                                       |
| `CLAUDE_CODE_API_KEY_HELPER_TTL_MS`        | Interval in milliseconds at which credentials should be refreshed (when using `apiKeyHelper`)                                          |
| `CLAUDE_CODE_MAX_OUTPUT_TOKENS`            | Set the maximum number of output tokens for most requests                                                                              |
| `CLAUDE_CODE_USE_BEDROCK`                  | Use Bedrock (see [Bedrock & Vertex](/en/docs/claude-code/bedrock-vertex-proxies))                                                      |
| `CLAUDE_CODE_USE_VERTEX`                   | Use Vertex (see [Bedrock & Vertex](/en/docs/claude-code/bedrock-vertex-proxies))                                                       |
| `CLAUDE_CODE_SKIP_BEDROCK_AUTH`            | Skip AWS authentication for Bedrock (e.g. when using an LLM gateway)                                                                   |
| `CLAUDE_CODE_SKIP_VERTEX_AUTH`             | Skip Google authentication for Vertex (e.g. when using an LLM gateway)                                                                 |
| `CLAUDE_CODE_DISABLE_NONESSENTIAL_TRAFFIC` | Equivalent of setting `DISABLE_AUTOUPDATER`, `DISABLE_BUG_COMMAND`, `DISABLE_ERROR_REPORTING`, and `DISABLE_TELEMETRY`                 |
| `DISABLE_AUTOUPDATER`                      | Set to `1` to disable the automatic updater                                                                                            |
| `DISABLE_BUG_COMMAND`                      | Set to `1` to disable the `/bug` command                                                                                               |
| `DISABLE_COST_WARNINGS`                    | Set to `1` to disable cost warning messages                                                                                            |
| `DISABLE_ERROR_REPORTING`                  | Set to `1` to opt out of Sentry error reporting                                                                                        |
| `DISABLE_NON_ESSENTIAL_MODEL_CALLS`        | Set to `1` to disable model calls for non-critical paths like flavor text                                                              |
| `DISABLE_TELEMETRY`                        | Set to `1` to opt out of Statsig telemetry (note that Statsig events do not include user data like code, file paths, or bash commands) |
| `HTTP_PROXY`                               | Specify HTTP proxy server for network connections                                                                                      |
| `HTTPS_PROXY`                              | Specify HTTPS proxy server for network connections                                                                                     |
| `MAX_THINKING_TOKENS`                      | Force a thinking for the model budget                                                                                                  |
| `MCP_TIMEOUT`                              | Timeout in milliseconds for MCP server startup                                                                                         |
| `MCP_TOOL_TIMEOUT`                         | Timeout in milliseconds for MCP tool execution                                                                                         |
| `MAX_MCP_OUTPUT_TOKENS`                    | Maximum number of tokens allowed in MCP tool responses (default: 25000)                                                                |

## Configuration options

We are in the process of migrating global configuration to `settings.json`.

`claude config` will be deprecated in place of [settings.json](#settings-files)

To manage your configurations, use the following commands:

- List settings: `claude config list`
- See a setting: `claude config get <key>`
- Change a setting: `claude config set <key> <value>`
- Push to a setting (for lists): `claude config add <key> <value>`
- Remove from a setting (for lists): `claude config remove <key> <value>`

By default `config` changes your project configuration. To manage your global configuration, use the `--global` (or `-g`) flag.

### Global configuration

To set a global configuration, use `claude config set -g <key> <value>`:

| Key                     | Description                                                      | Example                                                                    |
| :---------------------- | :--------------------------------------------------------------- | :------------------------------------------------------------------------- |
| `autoUpdates`           | Whether to enable automatic updates (default: `true`)            | `false`                                                                    |
| `preferredNotifChannel` | Where you want to receive notifications (default: `iterm2`)      | `iterm2`, `iterm2_with_bell`, `terminal_bell`, or `notifications_disabled` |
| `theme`                 | Color theme                                                      | `dark`, `light`, `light-daltonized`, or `dark-daltonized`                  |
| `verbose`               | Whether to show full bash and command outputs (default: `false`) | `true`                                                                     |

## Tools available to Claude

Claude Code has access to a set of powerful tools that help it understand and modify your codebase:

| Tool             | Description                                          | Permission Required |
| :--------------- | :--------------------------------------------------- | :------------------ |
| **Agent**        | Runs a sub-agent to handle complex, multi-step tasks | No                  |
| **Bash**         | Executes shell commands in your environment          | Yes                 |
| **Edit**         | Makes targeted edits to specific files               | Yes                 |
| **Glob**         | Finds files based on pattern matching                | No                  |
| **Grep**         | Searches for patterns in file contents               | No                  |
| **LS**           | Lists files and directories                          | No                  |
| **MultiEdit**    | Performs multiple edits on a single file atomically  | Yes                 |
| **NotebookEdit** | Modifies Jupyter notebook cells                      | Yes                 |
| **NotebookRead** | Reads and displays Jupyter notebook contents         | No                  |
| **Read**         | Reads the contents of files                          | No                  |
| **TodoRead**     | Reads the current session's task list                | No                  |
| **TodoWrite**    | Creates and manages structured task lists            | No                  |
| **WebFetch**     | Fetches content from a specified URL                 | Yes                 |
| **WebSearch**    | Performs web searches with domain filtering          | Yes                 |
| **Write**        | Creates or overwrites files                          | Yes                 |

Permission rules can be configured using `/allowed-tools` or in [permission settings](/en/docs/claude-code/settings#available-settings).

### Extending tools with hooks

You can run custom commands before or after any tool executes using
[Claude Code hooks](/en/docs/claude-code/hooks).

For example, you could automatically run a Python formatter after Claude
modifies Python files, or prevent modifications to production configuration
files by blocking Write operations to certain paths.

## See also

- [Identity and Access Management](/en/docs/claude-code/iam#configuring-permissions) - Learn about Claude Code's permission system
- [IAM and access control](/en/docs/claude-code/iam#enterprise-managed-policy-settings) - Enterprise policy management
- [Troubleshooting](/en/docs/claude-code/troubleshooting#auto-updater-issues) - Solutions for common configuration issues
````

## File: docs/templates/00_context_engineering/init-context-example.md
````markdown
# Initial Context Engineering: cloudcost-cli

> **💡 Context Engineering Note:** This document provides comprehensive repository context for AI assistants, AI Agents, and Developers/Maintainers using proven context engineering methodologies. As highlighted by industry leaders in 2025, context engineering represents a fundamental shift from experimental AI use to enterprise-grade AI operations, providing 10x better accuracy and 100x fewer production failures compared to traditional "vibe coding" approaches. It serves as the foundation for understanding the complete project landscape and enables generation of detailed architecture, tech stack, reference documentation, and other downstream documents.

---

## Context Engineering Initial Context

### 1. Product, Application, or Tool Description

### 1.1 GitHub Repository

**Repository Summary Table:**

| GitHub Repository | Description | Configurable Settings |
|------------------|-------------|----------------------|
| `cloudcost-cli` | A powerful command-line interface for AWS cost optimization and resource rightsizing with automated recommendations | **User-Specified:**<br>- Repository name: cloudcost-cli<br>- Technology topics: ["go", "cli", "aws", "cost-optimization", "devops"]<br>- Team access: maintainers (admin), contributors (push)<br>- Branch protection: require 2 reviewers<br><br>**Auto-Inferred:**<br>- Labels: "go", "aws-sdk", "cli-tool", "cost-optimization"<br>- CI/CD: ["ci/test", "ci/build", "ci/lint", "ci/security-scan"]<br>- Security: dependabot, code scanning, secret scanning<br>- Best practices: branch protection, required reviews, status checks |

**Complete GitHub Repository Settings Configuration:**

```yml
# Core Repository Configuration
repository:
  name: cloudcost-cli
  description: "A powerful command-line interface for AWS cost optimization and resource rightsizing with automated recommendations"
  topics: ["go", "cli", "aws", "cost-optimization", "devops", "finops", "cloud-management"]

# Team Access Configuration
teams:
  - name: maintainers
    permission: admin
  - name: contributors  
    permission: push

# Technology-Specific Labels
labels:
  - name: go
    color: "00ADD8"
    description: "Go language related changes"
  - name: aws-sdk
    color: "FF9900"
    description: "AWS SDK integration and API changes"
  - name: cli
    color: "0366d6"
    description: "Command-line interface functionality"
  - name: cost-optimization
    color: "28a745"
    description: "Cost analysis and optimization features"
  - name: security
    color: "d73a49"
    description: "Security-related changes and improvements"

# Branch Protection
branches:
  - name: main
    protection:
      required_pull_request_reviews:
        required_approving_review_count: 2
        require_code_owner_reviews: true
        dismiss_stale_reviews: true
      required_status_checks:
        strict: true
        contexts: ["ci/test", "ci/build", "ci/lint", "ci/security-scan"]
      enforce_admins: true
      restrictions:
        users: ["Excoriate"]
        teams: ["maintainers"]
```

### 1.2 Application/Tool/Product Name

**Product Identification Summary:**

| Product Name | Display Name | Description |
|--------------|--------------|-------------|
| `cloudcost-cli` | CloudCost CLI | A powerful command-line interface for AWS cost optimization and resource rightsizing with automated recommendations |

**Product Summary:**

CloudCost CLI is a comprehensive command-line tool designed to help DevOps engineers, cloud architects, and financial operations teams optimize their Amazon Web Services infrastructure costs through intelligent analysis and automated recommendations. By leveraging advanced cost analysis algorithms and real-time AWS API integration, this tool transforms complex cloud financial management into a streamlined, actionable process that can reduce infrastructure spending by 20-40% while maintaining optimal performance.

The CLI provides deep visibility into AWS resource utilization patterns, identifying underutilized EC2 instances, oversized RDS databases, orphaned EBS volumes, and inefficient Reserved Instance allocations. Through its sophisticated recommendation engine, teams can generate comprehensive cost optimization reports, receive precise rightsizing suggestions, and implement changes with confidence through built-in safety checks and rollback capabilities. The tool supports multiple AWS accounts, provides detailed cost impact projections, and integrates seamlessly with existing DevOps workflows.

Built for enterprise-scale operations, CloudCost CLI combines machine learning-driven insights with industry best practices to deliver measurable cost savings without compromising system reliability or performance. Whether managing small startup environments or complex multi-account enterprise deployments, this tool empowers organizations to achieve optimal cloud resource efficiency while maintaining full operational control and visibility.

**Complete Product Definition:**

| Field | Value |
|-------|-------|
| **Technical Name** | `cloudcost-cli` |
| **Display Name** | CloudCost CLI |
| **Description** | A powerful command-line interface for AWS cost optimization and resource rightsizing with automated recommendations |
| **Other Details** | Enterprise-grade tool supporting multi-account AWS environments with ML-driven cost optimization recommendations |

### 1.3 Primary Purpose (High-Level Description)

**Problem Statement:**
Organizations struggle with rapidly increasing AWS costs due to overprovisioned resources, inefficient instance types, and lack of visibility into actual resource utilization patterns. Many teams lack the time and expertise to continuously monitor and optimize their cloud infrastructure, leading to significant budget overruns and wasted resources that can account for 30-50% of total cloud spending.

**Value Proposition:**
CloudCost CLI delivers automated, intelligent cost optimization recommendations that enable teams to reduce AWS spending by 20-40% while maintaining or improving system performance. The tool provides actionable insights with precise cost impact calculations, safety-validated recommendations, and seamless integration into existing DevOps workflows, transforming cloud cost management from a manual, error-prone process into an automated, data-driven practice.

---

### 2. Features

**Core Features:**
- **Target Users:** DevOps Engineers, Cloud Architects, FinOps Teams, Infrastructure Managers
- **Capabilities:** 
  - Real-time AWS cost analysis across EC2, RDS, EBS, and Lambda services
  - Automated rightsizing recommendations with precise cost impact calculations
  - Multi-account AWS environment support with consolidated reporting
  - Resource utilization monitoring with 30-day historical analysis
  - Cost optimization reports with actionable recommendations and implementation timelines
  - Safety validation for all recommendations with rollback procedures
- **Primary Use Cases:** 
  - Monthly cost optimization reviews with automated report generation for executive stakeholders
  - Pre-deployment cost impact analysis for new infrastructure changes and capacity planning
- **Success Indicators:** 
  - 20-40% reduction in AWS infrastructure costs within 3 months of implementation
  - 95% accuracy in cost impact predictions with less than 5% variance from actual results

**Extended Features:**
- **Target Users:** Enterprise Cloud Teams, Compliance Officers, Financial Controllers, C-Suite Executives
- **Capabilities:**
  - Advanced Reserved Instance optimization with purchase recommendations and coverage analysis
  - Spot Instance integration with automated failover strategies and cost-benefit analysis
  - Custom cost allocation tags with department-level chargeback reporting
  - Integration with AWS Cost Explorer, CloudWatch, and third-party monitoring tools
  - Automated scheduling for recurring optimization scans with configurable alert thresholds
  - Compliance reporting for SOC 2, ISO 27001, and enterprise governance requirements
  - API endpoints for integration with existing DevOps toolchains and CI/CD pipelines
- **Primary Use Cases:**
  - Enterprise-wide cost governance with automated policy enforcement and exception handling
  - Quarterly business reviews with detailed cost attribution and trend analysis for strategic planning
- **Success Indicators:**
  - 99.5% uptime during optimization implementations with zero service disruptions
  - 75% reduction in manual cost analysis tasks with automated reporting and alerting

---

### 3. Architecture & Design Patterns

**Design Patterns Applied:**
- **Command Pattern:** Implemented in `cmd/` directory for CLI command structure, enabling extensible command handling with consistent interface patterns (cobra.Command implementations)
- **Factory Pattern:** Used in `internal/providers/` for AWS service client creation, allowing dynamic instantiation of different AWS service clients based on configuration
- **Strategy Pattern:** Applied in `internal/analyzers/` for different cost analysis algorithms (EC2, RDS, Lambda analyzers), enabling pluggable analysis strategies
- **Repository Pattern:** Implemented in `internal/storage/` for data persistence abstraction, supporting multiple storage backends (local file, S3, database)
- **Observer Pattern:** Used in `internal/reporting/` for notification systems, enabling multiple output formats and delivery mechanisms

**Software Architecture Style:**
Clean Architecture with Hexagonal (Ports and Adapters) principles, organized in concentric layers with clear dependency inversion. The architecture separates business logic from external dependencies, enabling testability and maintainability. Core business rules reside in the center, with adapters for AWS APIs, storage systems, and CLI interfaces at the boundaries.

```
┌─────────────────────────────────────────────────────────────┐
│                    CLI Interface Layer                      │
│  ┌─────────────────────────────────────────────────────┐   │
│  │              Application Layer                       │   │
│  │  ┌─────────────────────────────────────────────┐   │   │
│  │  │            Business Logic Layer              │   │   │
│  │  │  ┌─────────────────────────────────────┐   │   │   │
│  │  │  │         Domain Layer                │   │   │   │
│  │  │  │  • Cost Analysis Rules             │   │   │   │
│  │  │  │  • Optimization Algorithms         │   │   │   │
│  │  │  │  • Business Entities              │   │   │   │
│  │  │  └─────────────────────────────────────┘   │   │   │
│  │  │  • Use Cases & Orchestration              │   │   │
│  │  │  • Recommendation Engine                  │   │   │
│  │  └─────────────────────────────────────────────┘   │   │
│  │  • Command Handlers & Workflow                     │   │
│  │  • Input Validation & Error Handling               │   │
│  └─────────────────────────────────────────────────────┘   │
│  • CLI Commands & User Interface                           │
│  • Configuration Management                                │
└─────────────────────────────────────────────────────────────┘
```

**Main System Components:**
- **CLI Interface (`cmd/`):** Command-line interface handlers using Cobra framework for user interactions and command routing
- **Application Services (`internal/app/`):** High-level orchestration services that coordinate between different domain components
- **Domain Logic (`internal/domain/`):** Core business rules for cost analysis, optimization algorithms, and recommendation generation
- **AWS Adapters (`internal/providers/aws/`):** AWS SDK integration layer for EC2, RDS, CloudWatch, and Cost Explorer APIs
- **Storage Adapters (`internal/storage/`):** Data persistence layer supporting multiple backends (local JSON, S3, database)
- **Reporting Engine (`internal/reporting/`):** Report generation and formatting system with multiple output formats (JSON, CSV, HTML, PDF)

**Recommended Project Structure:**
```
cloudcost-cli/
├── cmd/                        # CLI command implementations
│   ├── root.go                # Root command and global flags
│   ├── analyze.go             # Cost analysis commands
│   ├── optimize.go            # Optimization commands
│   ├── report.go              # Report generation commands
│   └── validate.go            # Validation commands
├── internal/                   # Private application code
│   ├── app/                   # Application services layer
│   │   ├── analyzer/          # Analysis orchestration services
│   │   ├── optimizer/         # Optimization orchestration services
│   │   └── reporter/          # Reporting orchestration services
│   ├── domain/                # Core business logic
│   │   ├── models/            # Domain entities and value objects
│   │   ├── services/          # Domain services
│   │   └── repositories/      # Repository interfaces
│   ├── providers/             # External service adapters
│   │   ├── aws/               # AWS service clients
│   │   ├── storage/           # Storage implementations
│   │   └── notification/      # Notification service adapters
│   ├── config/                # Configuration management
│   └── utils/                 # Shared utilities
├── pkg/                       # Public API packages
│   ├── client/                # Client library for programmatic access
│   └── types/                 # Public type definitions
├── tests/                     # Test files
│   ├── integration/           # Integration tests
│   ├── unit/                  # Unit tests
│   └── fixtures/              # Test data and fixtures
├── docs/                      # Documentation
├── scripts/                   # Build and development scripts
├── examples/                  # Usage examples
├── configs/                   # Configuration file templates
├── go.mod                     # Go module definition
├── go.sum                     # Go module checksums
├── Makefile                   # Build automation
└── README.md                  # Project documentation
```

**Architectural Rationale:**
The Clean Architecture approach with Hexagonal principles ensures high testability by isolating business logic from external dependencies. The Command Pattern enables extensible CLI functionality, while the Strategy Pattern allows for pluggable analysis algorithms as AWS services evolve. The Repository Pattern abstracts storage concerns, enabling flexible deployment scenarios from local development to enterprise cloud environments. This architecture supports the tool's requirement for enterprise-scale reliability while maintaining development velocity and code maintainability.

**Data Flow Diagram:**
```
┌─────────────┐    ┌─────────────────┐    ┌─────────────────┐
│   CLI User  │───▶│  Command Layer  │───▶│ Application     │
│   Input     │    │  (cmd/)         │    │ Services        │
└─────────────┘    └─────────────────┘    │ (internal/app/) │
                                          └─────────────────┘
                                                   │
                                                   ▼
┌─────────────┐    ┌─────────────────┐    ┌─────────────────┐
│   Report    │◀───│  Reporting      │◀───│  Domain Logic   │
│   Output    │    │  Engine         │    │  (internal/     │
└─────────────┘    │ (internal/      │    │   domain/)      │
                   │  reporting/)    │    └─────────────────┘
                   └─────────────────┘             │
                                                   ▼
┌─────────────┐    ┌─────────────────┐    ┌─────────────────┐
│   Storage   │◀───│  Storage        │◀───│  AWS Providers  │
│   Backends  │    │  Adapters       │    │  (internal/     │
└─────────────┘    │ (internal/      │    │   providers/)   │
                   │  storage/)      │    └─────────────────┘
                   └─────────────────┘             │
                                                   ▼
                                          ┌─────────────────┐
                                          │   AWS APIs      │
                                          │  (EC2, RDS,     │
                                          │   CloudWatch,   │
                                          │   Cost Explorer)│
                                          └─────────────────┘
```

---

### 4. Implementation Requirements

**Quality Attributes:**
- **Maintainability:** Code coverage minimum 85% with comprehensive unit and integration tests, following Go best practices and linting standards (golangci-lint)
- **Testability:** Dependency injection throughout application layers, mock interfaces for all external dependencies, isolated unit tests with no external service dependencies
- **Reliability:** Graceful error handling with detailed error messages, automatic retry mechanisms for transient AWS API failures, comprehensive logging with structured output
- **Usability:** Intuitive CLI interface with consistent command patterns, comprehensive help documentation, progress indicators for long-running operations
- **Modularity:** Clean separation of concerns with well-defined interfaces, pluggable architecture for different AWS services and analysis algorithms

**Performance & Scalability:**
- **Response Time:** CLI commands complete within 30 seconds for single-account analysis, 5 minutes maximum for multi-account enterprise environments
- **Throughput:** Support concurrent analysis of up to 50 AWS accounts with parallel processing, handle 10,000+ EC2 instances per analysis run
- **Memory Usage:** Maximum 512MB RAM consumption during peak analysis operations, efficient streaming processing for large datasets
- **API Rate Limits:** Intelligent AWS API throttling with exponential backoff, respect AWS service limits with configurable rate limiting
- **Scalability Targets:** Horizontal scaling through batch processing, support for enterprise environments with 1000+ AWS accounts

**Security & Compliance:**
- **Authentication:** AWS IAM role-based authentication with least-privilege access principles, support for AWS SSO and cross-account role assumption
- **Data Protection:** Encryption at rest for local storage using AES-256, encryption in transit for all AWS API communications using TLS 1.2+
- **Compliance Standards:** SOC 2 Type II compliance for data handling, GDPR compliance for EU customer data, audit logging for all cost optimization actions
- **Secrets Management:** Integration with AWS Secrets Manager and HashiCorp Vault, no hardcoded credentials or API keys in code or configuration
- **Access Control:** Role-based access control for different CLI operations, audit trails for all cost optimization recommendations and implementations

**Integration Specifications:**
- **AWS API Integration:** AWS SDK for Go v2 with automatic credential chain, support for all AWS regions and GovCloud environments
- **Data Exchange Formats:** JSON for API responses, CSV/Excel for report exports, YAML for configuration files, Protocol Buffers for high-performance data exchange
- **External System Integration:** REST API endpoints for CI/CD pipeline integration, webhook support for real-time notifications, SMTP integration for email reports
- **Error Handling:** Structured error responses with error codes, detailed error context for troubleshooting, automatic error reporting to monitoring systems
- **Monitoring Integration:** Prometheus metrics export, CloudWatch custom metrics, structured logging compatible with ELK stack and Splunk

**Development & Deployment Constraints:**
- **Go Version:** Go 1.21+ with module support, cross-compilation for Linux, macOS, and Windows platforms
- **Build Requirements:** Reproducible builds with version pinning, automated testing in CI/CD pipeline, security scanning with Snyk and gosec
- **Deployment Models:** Single binary distribution, Docker container support, Kubernetes deployment manifests, AWS Lambda function packaging
- **Configuration Management:** Environment variable configuration, YAML configuration files, AWS Parameter Store integration for enterprise deployments
- **Documentation Requirements:** Comprehensive CLI help documentation, API documentation with OpenAPI specifications, deployment guides for different environments

---

### 5. Tech Stack

**Primary Language & Version:**
Go 1.21+ with module support, leveraging Go's excellent concurrency model for parallel AWS API processing and cross-platform compilation capabilities

**Core Technologies:**
- **CLI Framework:** Cobra v1.7+ for command-line interface with subcommands, flags, and help generation
- **AWS Integration:** AWS SDK for Go v2 (github.com/aws/aws-sdk-go-v2) for native AWS service integration
- **Configuration:** Viper v1.16+ for configuration management with multiple source support (files, environment variables, command flags)
- **Logging:** Zap v1.25+ for structured, high-performance logging with multiple output formats
- **HTTP Client:** Native Go net/http with retry and timeout configurations for external API calls
- **Data Processing:** Native Go encoding/json for JSON processing, gopkg.in/yaml.v3 for YAML configuration
- **Concurrency:** Go channels and goroutines for parallel AWS API processing and data analysis

**Development Environment:**
- **Package Manager:** Go modules (go.mod/go.sum) for dependency management and version pinning
- **Build Tool:** Native Go build system with Makefile for automation and cross-compilation
- **Testing Framework:** Native Go testing package with testify/assert for enhanced assertions
- **Linting:** golangci-lint v1.54+ with comprehensive linting rules and security checks
- **Code Formatting:** gofmt and goimports for consistent code formatting and import organization
- **Documentation:** godoc for API documentation generation and markdown for user documentation
- **Version Control:** Git with semantic versioning and conventional commit messages

**Deployment & Infrastructure:**
- **Containerization:** Docker with multi-stage builds for minimal production images
- **CI/CD:** GitHub Actions for automated testing, building, and release management
- **Binary Distribution:** GitHub Releases with cross-platform binary artifacts (Linux, macOS, Windows)
- **Package Managers:** Homebrew for macOS, apt/yum repositories for Linux distributions
- **Monitoring:** Prometheus metrics integration with Grafana dashboards for operational visibility
- **Cloud Deployment:** AWS Lambda packaging for serverless execution, ECS/EKS for containerized deployment

**Technology Decision Rationale:**
Go was selected as the primary language for its exceptional performance in concurrent operations, native AWS SDK support, and single-binary deployment model that simplifies distribution and installation. The language's strong typing system and excellent error handling patterns align perfectly with the reliability requirements for enterprise cost optimization tools. Cobra framework provides industry-standard CLI patterns with excellent documentation and community support, while AWS SDK for Go v2 offers the most comprehensive and performant AWS integration available.

The choice of Zap for logging provides the structured output and performance characteristics required for enterprise environments, while Viper enables flexible configuration management across different deployment scenarios. The decision to use native Go concurrency primitives rather than external frameworks ensures optimal performance for parallel AWS API processing and reduces external dependencies. Docker containerization supports modern deployment practices while maintaining the simplicity of single-binary distribution for development and testing environments.

---

### 6. Local Development Setup

**Setup Procedures:**
```bash
# Install Go 1.21+ (required)
# macOS
brew install go

# Linux (Ubuntu/Debian)
wget https://golang.org/dl/go1.21.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.21.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin

# Windows
# Download installer from https://golang.org/dl/

# Clone repository
git clone https://github.com/Excoriate/cloudcost-cli.git
cd cloudcost-cli

# Install development dependencies
go mod download
go install github.com/golangci/golangci-lint/cmd/golangci-lint@latest
go install github.com/vektra/mockery/v2@latest

# Install build tools
make install-tools

# Build the application
make build

# Run tests
make test
```

**Environment Validation:**
```bash
# Verify Go installation and version
go version
# Expected: go version go1.21.x

# Verify Go module support
go env GOMOD
# Expected: /path/to/cloudcost-cli/go.mod

# Verify AWS CLI configuration (optional but recommended)
aws sts get-caller-identity
# Expected: AWS account information

# Verify development tools
golangci-lint --version
mockery --version

# Run validation script
make validate-env
# Expected: All checks passed

# Test basic functionality
./bin/cloudcost-cli --help
# Expected: CLI help output with available commands
```

**Project Configuration:**
```bash
# Create local configuration file
cp configs/config.example.yaml configs/config.local.yaml

# Edit configuration for local development
vim configs/config.local.yaml

# Key configuration sections:
# - AWS region and profile settings
# - Log level and output format
# - Analysis parameters and thresholds
# - Report output directories

# Set environment variables
export CLOUDCOST_CONFIG_PATH=./configs/config.local.yaml
export CLOUDCOST_LOG_LEVEL=debug
export CLOUDCOST_OUTPUT_DIR=./output

# Initialize local database (if using local storage)
make init-db

# Generate mock data for testing
make generate-mocks
```

**External Service Setup:**
```bash
# AWS Authentication Setup
# Option 1: AWS CLI profile (recommended for development)
aws configure --profile cloudcost-dev
# Enter AWS Access Key ID, Secret Access Key, Region

# Option 2: Environment variables
export AWS_ACCESS_KEY_ID=your-access-key
export AWS_SECRET_ACCESS_KEY=your-secret-key
export AWS_DEFAULT_REGION=us-east-1

# Option 3: IAM role for EC2 instances
# No additional setup required if running on EC2 with appropriate IAM role

# Verify AWS permissions
aws sts get-caller-identity --profile cloudcost-dev
aws ec2 describe-instances --profile cloudcost-dev --max-items 1
aws rds describe-db-instances --profile cloudcost-dev --max-items 1

# Test AWS SDK integration
make test-aws-integration

# Setup monitoring (optional for development)
docker-compose up -d prometheus grafana
# Access Grafana at http://localhost:3000 (admin/admin)

# Initialize test AWS resources (optional)
make setup-test-resources
# Creates test EC2 instances and RDS databases for development

# Cleanup test resources
make cleanup-test-resources
```

---

### 7. AI Assistant Guidance

**AI Common Pitfalls:**
- **AWS Cost Calculation Errors:** AI assistants frequently miscalculate AWS pricing by using outdated rates or ignoring regional variations. Always verify cost calculations against current AWS pricing API and account for Reserved Instance discounts, Spot pricing, and volume discounts. For example, assuming standard On-Demand pricing when Reserved Instances are active can lead to 40-60% cost estimation errors.
- **Oversimplified Rightsizing Recommendations:** AI often suggests instance downsizing based solely on CPU utilization without considering memory, network, or I/O requirements. Always analyze all performance metrics and consider workload patterns before recommending instance changes. A web server with 20% CPU but 90% memory utilization should not be downsized.
- **Ignoring AWS Service Interdependencies:** AI assistants may recommend optimizations that break service dependencies, such as reducing RDS instance size without considering connection pool limits or suggesting EBS volume changes that affect IOPS requirements. Always validate recommendations against the complete infrastructure stack.
- **Misunderstanding Enterprise Constraints:** AI often ignores compliance requirements, maintenance windows, and business continuity needs when suggesting optimizations. Enterprise environments require gradual rollouts, rollback plans, and approval processes that AI assistants frequently overlook.

**Behavioral Guidance:**
- **Cost Analysis Approach:** Always start with comprehensive data gathering before making recommendations. Use the tool's multi-account analysis capabilities to understand the complete cost landscape before suggesting optimizations. Present cost savings as ranges with confidence intervals rather than exact figures.
- **Safety-First Recommendations:** Prioritize low-risk optimizations first (unused resources, obvious oversizing) before suggesting complex changes. Always include rollback procedures and impact assessments with every recommendation. For critical systems, recommend testing in staging environments first.
- **Business Context Integration:** Consider business hours, seasonal patterns, and growth projections when analyzing utilization data. A development environment with low weekend utilization is different from a production system with the same pattern. Always ask about business context before making optimization recommendations.
- **Incremental Implementation:** Recommend phased implementation approaches rather than wholesale changes. Start with non-critical resources, monitor results, and gradually expand optimization scope. This approach reduces risk and builds confidence in the optimization process.

**Domain-Specific Patterns:**
- **AWS Cost Optimization Workflow:** Follow the pattern of Discover → Analyze → Recommend → Validate → Implement → Monitor. Each phase has specific deliverables and success criteria. Never skip the validation phase, especially for production systems.
- **Multi-Account Analysis Pattern:** When analyzing enterprise environments, always aggregate data at the organization level before drilling down to individual accounts. Use consolidated billing data to identify cross-account optimization opportunities like Reserved Instance sharing.
- **Resource Lifecycle Management:** Understand that AWS resources have different optimization strategies based on their lifecycle stage. Development resources can be aggressively optimized for cost, while production resources require balanced cost-performance optimization.
- **Compliance and Governance Integration:** Always consider governance policies when recommending changes. Many enterprises have specific instance types, regions, or configuration requirements that must be respected regardless of cost implications.

**Technical Constraints Reference:**
For detailed technical constraints including security requirements, performance benchmarks, integration specifications, and deployment constraints, refer to Section 4 (Implementation Requirements). Key constraints include:
- AWS IAM role-based authentication with least-privilege access
- SOC 2 Type II and GDPR compliance requirements
- 30-second response time limits for CLI operations
- 512MB maximum memory consumption during analysis
- Support for enterprise environments with 1000+ AWS accounts

---

### 8. Reference & Documentation

**Official Documentation:**
| Documentation | Description | Link | How to Obtain | Validation Status |
|--------------|-------------|------|---------------|-------------------|
| AWS SDK for Go v2 | Comprehensive AWS service integration library with native Go support | https://aws.github.io/aws-sdk-go-v2/docs/ | Context7: /aws/aws-sdk-go-v2 | ✅ Verified |
| AWS Cost Explorer API | Official AWS cost analysis and reporting API documentation | https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-explorer-api.html | Direct Web: AWS Docs | ✅ Verified |
| AWS EC2 API Reference | Complete EC2 service API documentation for instance management | https://docs.aws.amazon.com/AWSEC2/latest/APIReference/ | Direct Web: AWS Docs | ✅ Verified |
| AWS RDS API Reference | RDS service API documentation for database instance optimization | https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/ | Direct Web: AWS Docs | ✅ Verified |

**Library & Framework Documentation:**
| Documentation | Description | Link | How to Obtain | Validation Status |
|--------------|-------------|------|---------------|-------------------|
| Cobra CLI Framework | Go library for creating powerful CLI applications with subcommands | https://cobra.dev/ | Context7: /spf13/cobra | ✅ Verified |
| Viper Configuration | Go configuration library supporting multiple formats and sources | https://github.com/spf13/viper | Context7: /spf13/viper | ✅ Verified |
| Zap Logging Library | High-performance structured logging library for Go applications | https://pkg.go.dev/go.uber.org/zap | Context7: /uber-go/zap | ✅ Verified |
| Testify Testing Framework | Go testing toolkit with assertions, mocks, and test suites | https://github.com/stretchr/testify | Context7: /stretchr/testify | ✅ Verified |

**Development Resources:**
| Documentation | Description | Link | How to Obtain | Validation Status |
|--------------|-------------|------|---------------|-------------------|
| Go Best Practices Guide | Comprehensive guide for writing idiomatic and efficient Go code | https://golang.org/doc/effective_go.html | Direct Web: Go Official | ✅ Verified |
| AWS Cost Optimization Guide | Official AWS whitepaper on cost optimization strategies and best practices | https://docs.aws.amazon.com/whitepapers/latest/cost-optimization-pillar/welcome.html | Direct Web: AWS Docs | ✅ Verified |
| CLI Design Patterns | Industry best practices for designing intuitive command-line interfaces | https://clig.dev/ | Web Research: CLI Guidelines | ✅ Verified |
| Go Module Documentation | Official guide for Go dependency management and module system | https://golang.org/doc/modules/gomod-ref | Direct Web: Go Official | ✅ Verified |

**Community & Tools:**
| Documentation | Description | Link | How to Obtain | Validation Status |
|--------------|-------------|------|---------------|-------------------|
| GolangCI-Lint | Comprehensive Go linter aggregator with extensive rule sets | https://golangci-lint.run/ | Context7: /golangci/golangci-lint | ✅ Verified |
| Mockery | Mock generation tool for Go interfaces supporting testify framework | https://vektra.github.io/mockery/ | Context7: /vektra/mockery | ✅ Verified |
| AWS Cost Management Tools | Community-curated list of AWS cost optimization tools and resources | https://github.com/open-guides/og-aws#billing-and-cost-management | Web Research: GitHub | ✅ Verified |
| Go Performance Optimization | Community guide for optimizing Go applications for production use | https://github.com/dgryski/go-perfbook | Web Research: GitHub | ✅ Verified |

**Standards & Specifications:**
| Documentation | Description | Link | How to Obtain | Validation Status |
|--------------|-------------|------|---------------|-------------------|
| AWS Well-Architected Framework | Official AWS architectural best practices including cost optimization pillar | https://aws.amazon.com/architecture/well-architected/ | Direct Web: AWS Docs | ✅ Verified |
| OpenAPI 3.0 Specification | REST API documentation standard for potential API endpoints | https://swagger.io/specification/ | Direct Web: OpenAPI | ✅ Verified |
| Semantic Versioning | Versioning standard for software releases and dependency management | https://semver.org/ | Direct Web: SemVer | ✅ Verified |
| Go Language Specification | Official Go language specification and grammar reference | https://golang.org/ref/spec | Direct Web: Go Official | ✅ Verified |

**User-Provided Links:**
| Documentation | Description | Link | How to Obtain | Validation Status |
|--------------|-------------|------|---------------|-------------------|
| Internal Cost Policies | Company-specific AWS cost governance and approval processes | https://internal.company.com/aws-cost-policies | User Provided: Internal | ⚠️ Access Required |
| DevOps Runbooks | Team-specific procedures for infrastructure changes and deployments | https://wiki.company.com/devops-runbooks | User Provided: Internal | ⚠️ Access Required |

---
````

## File: docs/templates/00_context_engineering/init-context-type-full.md
````markdown
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
  - [Operational Protocol \& Consistency Mandate](#operational-protocol--consistency-mandate)
    - [Execution Structure](#execution-structure)
    - [Critical Document Consistency Framework](#critical-document-consistency-framework)
      - [Mandatory Cross-Section Dependencies](#mandatory-cross-section-dependencies)
      - [Consistency Enforcement Protocol](#consistency-enforcement-protocol)
      - [Section-Specific Consistency Guidelines](#section-specific-consistency-guidelines)
      - [Consistency Failure Prevention](#consistency-failure-prevention)
  - [AI Operational Workflow: Document Completion](#ai-operational-workflow-document-completion)
    - [Three-Phase Completion Protocol](#three-phase-completion-protocol)
    - [Workflow Rationale](#workflow-rationale)
  - [Context Engineering Initial Context](#context-engineering-initial-context)
    - [1. Initial Codebase Awareness](#1-initial-codebase-awareness)
      - [Output Format](#output-format)
    - [2. Product, Application, or Tool Description](#2-product-application-or-tool-description)
    - [2.1 GitHub Repository](#21-github-repository)
      - [Output Format](#output-format-1)
    - [2.2 Product Identity \& Definition](#22-product-identity--definition)
      - [Output Format](#output-format-2)
    - [2.3 Problem \& Value Proposition](#23-problem--value-proposition)
      - [Output Format](#output-format-3)
    - [3. Features](#3-features)
      - [Output Format](#output-format-4)
    - [4. Architecture](#4-architecture)
      - [Output Format](#output-format-5)
    - [5. Software Architecture](#5-software-architecture)
      - [Output Format](#output-format-6)
    - [6. User \& Developer Experience (UX/DX)](#6-user--developer-experience-uxdx)
      - [Output Format](#output-format-7)
    - [7. Tech Stack](#7-tech-stack)
      - [Output Format](#output-format-8)
    - [8. Third Party Integrations](#8-third-party-integrations)
      - [Output Format](#output-format-9)
    - [9. Local Development Setup](#9-local-development-setup)
      - [Output Format](#output-format-10)
    - [10. Deployment](#10-deployment)
      - [Output Format](#output-format-11)
    - [11. AI Assistant Guidance](#11-ai-assistant-guidance)
      - [Output Format](#output-format-12)
    - [12. Reference \& Documentation](#12-reference--documentation)
      - [Output Format](#output-format-13)

---

## Operational Protocol & Consistency Mandate

For you, 🤖 AI agent - Your primary function is to execute the completion of this document by adhering strictly to the protocols outlined below. This is not a guide; it is your operational mandate. Each section must be processed in sequence, using the defined structure and validation checks.

### Execution Structure

Every section in this document adheres to the following mandatory structure. You MUST parse and act upon each component:

- **🤖 AI Assistant Instructions**: This block contains your direct, non-negotiable instructions for the section. Execute them precisely.
- **⬇️ Expected Outcomes**: This block defines the required output. You MUST generate all specified artifacts to mark the section as complete. Your output must be validated against these outcomes.
- **📋 Template Variables**: This block lists variables (e.g., `{{repository_name}}`) that require substitution. You MUST replace them with the correct values from the established context.

### Critical Document Consistency Framework

> [!IMPORTANT]
> **Interdependent Sections Consistency Requirements**
>
> This document contains interdependent sections that must maintain consistency to ensure coherent context engineering. Each section builds upon previous sections and informs subsequent ones. You are required to follow these consistency protocols without deviation.

#### Mandatory Cross-Section Dependencies

**(Corrected Section Numbers)**

**Primary Dependencies (Critical):**
- Section 3 (Features) → Section 4 (Architecture)
- Section 3 (Features) → Section 5 (Software Architecture)
- Section 3 (Features) → Section 6 (User & Developer Experience)
- Section 4 (Architecture) → Section 5 (Software Architecture)
- Section 4 (Architecture) → Section 10 (Deployment)
- Section 7 (Tech Stack) → Section 8 (Third Party Integrations)
- Section 7 (Tech Stack) → Section 9 (Local Development Setup)
- Section 7 (Tech Stack) → Section 11 (AI Assistant Guidance)
- Section 7 (Tech Stack) → Section 12 (Reference & Documentation)

**Secondary Dependencies (Important):**
- Section 5 (Software Architecture) → Section 7 (Tech Stack)
- Section 6 (User & Developer Experience) → Section 7 (Tech Stack)
- Section 8 (Third Party Integrations) → Section 9 (Local Development Setup)
- Section 8 (Third Party Integrations) → Section 10 (Deployment)
- Section 8 (Third Party Integrations) → Section 11 (AI Assistant Guidance)

**Coherence Dependencies (Application-Type Specific):**
- Section 3 (Features) → Section 4 (Architecture)
- Section 4 (Architecture) → Section 6 (User & Developer Experience)
- Section 6 (User & Developer Experience) → Section 7 (Tech Stack)
- Section 10 (Deployment) → Section 4 (Architecture)

#### Consistency Enforcement Protocol

**Before completing any section, you MUST:**

1. **Read Dependencies:** Completely read all sections referenced in the current section's requirements.
2. **Validate Alignment:** Ensure all generated content aligns with the established context from referenced sections.
3. **Verify Coherence:** Cross-check all interdependent elements for logical consistency.
4. **Iterate if Needed:** If inconsistencies are detected, you must revise the content until full consistency is achieved.

#### Section-Specific Consistency Guidelines

- **For sections with dependencies:** Each section's `NOTE` block includes specific cross-reference requirements. Follow the detailed validation steps provided. Ensure all template variables are used consistently.
- **For sections without dependencies:** Focus on the section-specific requirements and ensure the output supports downstream dependent sections.

#### Consistency Failure Prevention

**You MUST avoid the following common consistency failures:**

- Creating system architecture without referencing the actual application type and MVP features.
- Creating sequence diagrams that do not map to the Primary Use Cases in Section 3.
- Defining UX patterns for applications without user interfaces (e.g., CLI tools, APIs).
- Including frontend architecture components for non-UI applications.
- Defining implementation requirements incompatible with the chosen tech stack.
- Documenting third-party integrations without corresponding tech stack support.
- Writing setup procedures that do not match specified technology versions.
- Creating deployment strategies incompatible with the system architecture.
- Documenting AI pitfalls irrelevant to the project's technology choices.

**Application-Type Coherence Failures:**
- **CLI Applications:** Do NOT include traditional frontend architecture or web-based UX patterns.
- **Web Applications:** MUST include both frontend architecture and a comprehensive UX section.
- **API Services:** Do NOT include user interface components or end-user UX patterns.
- **Libraries/SDKs:** Do NOT include deployment sections or end-user UX patterns.

**Validation Checkpoints:**
- Before finalizing any section, verify all cross-references are accurate.
- Confirm all interdependent content aligns properly.
- Validate that section outcomes support all dependent sections.
- Verify application-type coherence across architecture, UX, and deployment sections.

---

## AI Operational Workflow: Document Completion

This section outlines the mandatory workflow you must follow to complete this `init-context-type-full.md` document. Your purpose is to act as the primary agent in transforming initial user inputs into a comprehensive, structured, and consistent context document.

This document, once completed, serves as the foundational input for all subsequent documentation and code generation tasks.

### Three-Phase Completion Protocol

You will execute the following three phases in sequence. Do not proceed to the next phase until the current one is complete and validated.

**Phase 1: Context Priming and Analysis**
Your first step is to gather and analyze the initial project information provided by the user.

* **Action:** Process the inputs from the user, which may include responses to a helper prompt, direct instructions, or example files.
* **Process:**
    1.  Analyze all provided materials to establish a foundational understanding of the project's purpose, scope, and technical stack.
    2.  If repository analysis tools (e.g., `repomix`) are available, execute them to get a structural overview of the codebase.
    3.  Synthesize this initial data to prepare for populating the sections below.
* **Output:** A preliminary, in-memory model of the project's key attributes.

**Phase 2: Structured Content Generation**
Your primary task is to systematically populate each numbered section of this document, from "1. Initial Codebase Awareness" to "13. Reference & Documentation".

* **Action:** For each section, generate the required content based on the established context.
* **Process:**
    1.  Adhere strictly to the **🤖 AI Assistant Instructions** provided in each section.
    2.  Generate all artifacts specified in the **⬇️ Expected Outcomes** block for each section.
    3.  Strictly follow the **Critical Document Consistency Framework** by cross-referencing dependent sections to ensure coherence.
* **Output:** A fully populated `init-context-type-full.md` document.

**Phase 3: Final Validation**
Before concluding, you must perform a final validation pass on the entire document.

* **Action:** Review the completed document for internal consistency and adherence to all protocols.
* **Process:**
    1.  Verify that all mandatory cross-section dependencies are met.
    2.  Check for any application-type coherence failures (e.g., a CLI tool having a web UX section).
    3.  Ensure all `{{template_variables}}` have been correctly substituted.
* **Output:** A validated, final version of `init-context-type-full.md` ready for use in downstream tasks.

### Workflow Rationale

This phased approach ensures a systematic and rigorous process. By separating initial analysis from content generation and final validation, it minimizes errors, prevents context-drift, and guarantees that the final document is a reliable and coherent foundation for any subsequent AI-driven development tasks.

---

## Context Engineering Initial Context

### 1. Initial Codebase Awareness

> [!NOTE]
> **🤖 Instructions for AI Assistant:**
>
> **📋 Process Flow - Follow these steps in order:**
>
> ```
> 1. 🔧 VALIDATE TOOL → Verify `repomix` is installed and executable.
> 2. 🔍 DISCOVER → Run `repomix --help` to understand tool capabilities.
> 3. 📊 ANALYZE → Execute `repomix` to get the complete codebase structure.
> 4. 🌳 EXTRACT & CATALOG → Generate ASCII tree and create a table of ALL initial files.
> 5. 📖 READ & SUMMARIZE → Read the generated repomix file entirely and create comprehensive overview.
> 6. 📝 CREATE OVERVIEW DOC → Generate 00-codebase-awareness-overview.md with complete repo summary.
> 7. ✅ VALIDATE & PRESENT → Ensure both artifacts are complete and ready for downstream use.
> ```
>
> **🔧 Detailed Steps:**
>
> - **Tool Validation:** Execute `command -v repomix` or `which repomix`. If the tool is not found, report an error and halt. This step is mandatory.
>     - **Fallback Check**: If `repomix` is not in PATH, check common installation locations: `~/.local/bin/repomix`, `./node_modules/.bin/repomix`
>     - **Installation Verification**: Run `repomix --version` to confirm the tool is executable
> - **Tool Discovery:** Execute `repomix --help` to understand available options and output formats.
> - **Comprehensive Codebase Analysis:** Execute `repomix` with appropriate flags based on the repository context:
>     - **For New/Small Repositories**: `repomix --style markdown --no-git-sort-by-changes -o repomix-analysis.md`
>         - This provides clean markdown output with standard file ordering
>     - **For Large/Existing Repositories**: `repomix --no-files --style markdown --include-empty-directories -o repomix-structure.md`
>         - This generates structure-only output (no file contents) for faster analysis
>     - **For Template Repositories**: `repomix --style markdown --remove-empty-lines --compress -o repomix-compressed.md`
>         - This provides clean, compressed output focusing on configuration patterns
>     - **Custom Filtering**: Use `--ignore "*.log,*.tmp,node_modules"` to exclude noise files if needed
>     - **Config Override Note**: If repository has `repomix.config.json`, use `-o filename.md` to override config settings
> - **Output Processing & Extraction:**
>     - **Directory Tree Extraction**: From repomix output, locate the "Directory Structure" section and extract the ASCII tree
>     - **File Inventory Creation**: Parse the file list from repomix output, noting file types and sizes
>     - **Metadata Analysis**: Extract repository metadata (total files, total size, ignored patterns) from repomix summary
> - **Initial State Cataloging:**
>     - Create a complete table listing **all** discovered files with classifications:
>         - `dotfile` (.gitignore, .env.example, .github/*, etc.)
>         - `configuration` (package.json, Cargo.toml, pyproject.toml, etc.)
>         - `task-runner` (Makefile, Justfile, package.json scripts, etc.)
>         - `documentation` (README.md, docs/*, CHANGELOG.md, etc.)
>         - `template` (.template files, example configs, scaffolding, etc.)
>     - **Purpose Inference**: For each file, infer purpose based on standard conventions and file patterns
> - **Error Handling & Validation:**
>     - **Verify Complete Output**: Ensure repomix completed successfully (no truncated output or error messages)
>     - **Validate Structure**: Confirm the directory tree matches expected patterns for the project type
>     - **Handle Large Repositories**: If output is too large, re-run with `--compress` or `--no-files` flags
> - **Synthesize Analysis:** Write a brief narrative summary interpreting the structured findings:
>     - State inferred project status (e.g., "newly initialized," "template-based," "active development")
>     - Highlight existing tooling and configuration patterns
>     - Note any unusual or non-standard repository structure
> - **Complete Repomix File Reading:** Read the entire generated repomix file (repomix-analysis.md) from start to finish:
>     - **Header Analysis**: Extract repository metadata, file counts, token counts, and security findings
>     - **Directory Structure Analysis**: Parse the complete directory tree structure
>     - **File Content Patterns**: Analyze configuration files, documentation patterns, and project structure
>     - **Technology Stack Identification**: Identify languages, frameworks, and tools from file extensions and content
>     - **Development Workflow Recognition**: Identify CI/CD, testing, and build patterns from configuration files
> - **Comprehensive Overview Generation:** Create a complete but lightweight repository overview:
>     - **Repository Classification**: Determine project type (web app, CLI, library, template, etc.)
>     - **Technology Stack Summary**: List primary languages, frameworks, and development tools
>     - **Project Structure Assessment**: Analyze organization patterns and architectural approach
>     - **Configuration Analysis**: Summarize key configuration files and their purposes
>     - **Development Environment**: Document build tools, task runners, and development workflows
>     - **Documentation Status**: Assess existing documentation and knowledge management
> - **Overview Document Creation:** Generate `docs/00_context_engineering/00-codebase-awareness-overview.md` with:
>     - **Source Reference**: Relative path to the repomix file in git root (`../../repomix-analysis.md`)
>     - **Executive Summary**: 2-3 paragraph high-level repository overview
>     - **Structured Analysis**: Organized sections covering all key aspects
>     - **Quick Reference**: Key files, commands, and entry points for immediate use
> - 🚫 **Constraint:** Focus on structure, configuration, and tooling patterns. Do not perform deep analysis of file contents at this stage.
>
> **✅ Validation Requirements:**
>
> - `repomix` command is successfully validated before proceeding.
> - Repomix file (repomix-analysis.md) is generated successfully in the git repository root.
> - Complete repomix file is read and analyzed entirely, not just parsed sections.
> - Overview document (docs/00_context_engineering/00-codebase-awareness-overview.md) is created with comprehensive repository summary.
> - Overview document includes proper relative path reference to the repomix file (../../repomix-analysis.md).
> - Both artifacts are ready for downstream consumption by subsequent context engineering steps.

#### Outcome of This Step

This step establishes comprehensive awareness of the repository's current state by generating both a detailed technical analysis and a curated overview document. The process creates foundational knowledge artifacts that serve as the primary reference for all subsequent context engineering steps.

**Primary Achievement**: Complete repository understanding through systematic analysis of structure, configuration, tooling, and development patterns, distilled into actionable documentation.

#### Output(s)

**Primary Artifact: `repomix-analysis.md`**
- **Location**: Repository root directory (git root)
- **Purpose**: Complete technical analysis of the entire codebase
- **Content**: Full directory structure, file metadata, content analysis, and repository statistics
- **Usage**: Detailed reference for comprehensive codebase queries and analysis

**Secondary Artifact: `00-codebase-awareness-overview.md`**
- **Location**: `docs/00_context_engineering/` directory  
- **Purpose**: Lightweight but complete repository overview for immediate consumption
- **Content**: Executive summary, technology stack, project classification, key configurations, and development workflow
- **Structure**:
  ```markdown
  # Repository Overview: {{repository_name}}
  
  **Source Reference**: `../../repomix-analysis.md` (for detailed queries)
  
  ## Executive Summary
  (2-3 paragraph high-level overview)
  
  ## Repository Classification
  - **Project Type**: [Web App/CLI Tool/Library/Template/etc.]
  - **Development Status**: [New/Active/Template/Archived]
  - **Primary Purpose**: [Brief description]
  
  ## Technology Stack
  - **Primary Language(s)**: [Languages identified]
  - **Frameworks**: [Detected frameworks]
  - **Build Tools**: [Make/npm/cargo/etc.]
  - **Development Tools**: [Linters, formatters, etc.]
  
  ## Project Structure
  - **Organization Pattern**: [Monorepo/Standard/Domain-driven]
  - **Key Directories**: [src/, docs/, tests/, etc.]
  - **Configuration Files**: [Key configs and their purposes]
  
  ## Development Environment
  - **Build System**: [How to build]
  - **Task Runners**: [Available commands]
  - **Testing**: [Test setup and commands]
  - **CI/CD**: [Automation setup]
  
  ## Quick Reference
  - **Entry Points**: [Main files/commands]
  - **Documentation**: [Key documentation files]
  - **Setup Commands**: [How to get started]
  ```

**Validation Confirmation**:
```
✅ Repository analysis complete
📁 Primary artifact: repomix-analysis.md (generated successfully in git root)
📄 Overview document: docs/00_context_engineering/00-codebase-awareness-overview.md (created successfully)
🔗 Cross-references validated: Overview properly references source file (../../repomix-analysis.md)
📊 Analysis metrics: [X] files processed, [Y] total tokens, [Z] security findings
```

---

### 2. Product, Application, or Tool Description

### 2.1 GitHub Repository

> [!NOTE]
> **🤖 Instructions for AI Assistant:**
>
> **📋 Process Flow - Follow these steps in order:**
>
> ```
> 1. 🔧 VALIDATE TOOL → Verify `gh` (GitHub CLI) is installed and authenticated.
> 2. 🔍 PARSE & GATHER → Extract explicit user requirements for the repository.
> 3. ⚙️ SYNTHESIZE & GENERATE → Create a complete YAML configuration in memory.
> 4. ✅ VALIDATE → Ensure the generated YAML is syntactically correct and complete.
> 5. 📝 WRITE OR UPDATE FILE → Create or update the `.github/settings.yml` file.
> 6. 📊 GENERATE SUMMARY → Create a human-readable summary table *from* the final YAML.
> 7. 📤 PRESENT → Output the final YAML and the summary table.
> ```
>
> **🔧 Detailed Steps:**
>
> - **Tool Validation:** Execute `gh auth status`. If the CLI is not installed or authenticated, report an error and halt. This step is mandatory.
> - **Input Analysis:** Parse the user-provided information for the repository `name`, `description`, required `topics`, `team` permissions, and `branch protection` rules.
> - **Configuration Synthesis:**
>     - Use the user's input as the primary source for the configuration.
>     - For any settings *not* specified by the user, apply the default best practices defined in the schema below (e.g., `require_code_owner_reviews: true`).
>     - Auto-infer technology-specific `labels` and CI/CD `contexts` based on the tech stack that will be defined in Section 7. Use placeholders if the stack is currently unknown.
> - **YAML Generation:** Create a single, complete `settings.yml` configuration block in memory. **You MUST substitute all `{{template_variables}}` with their actual values.**
> - **File Operation:**
>     - Check if `.github/settings.yml` exists.
>     - If it exists, update it with the generated configuration.
>     - If it does not exist, create the file at `.github/settings.yml` and write the generated configuration to it.
> - **Summary Table Generation:** After creating the final YAML, generate the "Repository Summary Table" as a high-level view.
>
> **✅ Validation Requirements:**
>
> - The generated YAML MUST be syntactically correct.
> - All required configuration fields (e.g., `repository.name`) MUST have a value.
> - Branch protection rules must adhere to security best practices (e.g., `required_approving_review_count` should be at least 1).

#### Output Format

**Mandatory Structure - Present in this exact order:**

1.  **Complete GitHub Repository Settings (`.github/settings.yml`):**

    *(This is the actual file content that will be written to `.github/settings.yml`)*

    ```yml
    # GitHub Repository Settings Configuration
    # Generated from user requirements and best practice defaults
    
    repository:
      name: {{repository_name}}
      description: {{repository_description}}
      topics: {{tech_stack_topics}}
      private: {{is_private}}
      has_issues: true
      has_projects: true
      has_wiki: false
      has_downloads: true
      default_branch: main
      allow_squash_merge: true
      allow_merge_commit: false
      allow_rebase_merge: true
      delete_branch_on_merge: true
      enable_automated_security_fixes: true
      enable_vulnerability_alerts: true
    
    # Team Access Configuration
    teams:
      - name: {{team_maintainers}}
        permission: admin
      - name: {{team_contributors}}
        permission: push
    
    # Technology-Specific Labels
    labels:
      - name: {{primary_language}}
        color: "{{language_color}}"
        description: "{{primary_language}} related changes"
      - name: {{framework_name}}
        color: "{{framework_color}}"
        description: "{{framework_name}} specific functionality"
      - name: bug
        color: "d73a4a"
        description: "Something isn't working"
      - name: enhancement
        color: "a2eeef"
        description: "New feature or request"
      - name: documentation
        color: "0075ca"
        description: "Improvements or additions to documentation"
    
    # Branch Protection Rules
    branches:
      - name: main
        protection:
          required_pull_request_reviews:
            required_approving_review_count: {{min_reviewers}}
            require_code_owner_reviews: {{require_codeowners}}
            dismiss_stale_reviews: true
            require_review_from_code_owners: true
          required_status_checks:
            strict: true
            contexts: {{ci_status_checks}}
          enforce_admins: true
          restrictions:
            users: [{{repository_owner}}]
            teams: [{{admin_team}}]
          required_linear_history: true
          allow_force_pushes: false
          allow_deletions: false
    
    # Automated Security and Maintenance
    security_and_analysis:
      secret_scanning:
        status: enabled
      secret_scanning_push_protection:
        status: enabled
      dependabot_security_updates:
        status: enabled
      private_vulnerability_reporting:
        status: enabled
    ```

2.  **Repository Summary Table:**

    | Setting Category | Configuration | Value |
    |------------------|---------------|-------|
    | **Repository Info** | Name | `{{repository_name}}` |
    | | Description | `{{repository_description}}` |
    | | Topics | `{{tech_stack_topics}}` |
    | | Visibility | `{{visibility_status}}` |
    | **Team Access** | Maintainers | `{{team_maintainers}}` (admin) |
    | | Contributors | `{{team_contributors}}` (push) |
    | **Branch Protection** | Required Reviewers | `{{min_reviewers}}` |
    | | Code Owner Reviews | `{{require_codeowners}}` |
    | | Status Checks | `{{ci_status_checks}}` |
    | **Security** | Secret Scanning | Enabled |
    | | Dependabot | Enabled |
    | | Vulnerability Alerts | Enabled |
    | **Labels** | Technology | `{{primary_language}}`, `{{framework_name}}` |
    | | Standard | `bug`, `enhancement`, `documentation` |

3.  **File Operation Summary:**

    ```
    📁 File Operation: [CREATED/UPDATED] .github/settings.yml
    📊 Configuration Status: ✅ Valid YAML syntax
    🔧 GitHub CLI Status: ✅ Authenticated and ready
    ⚙️ Settings Applied: [NUMBER] configuration sections
    ```

### 2.2 Product Identity & Definition

> [!NOTE]
> **🤖 Instructions for AI Assistant:**
>
> **📋 Process Flow - Follow these steps in order:**
>
> ```
> 1. 🔍 PARSE & SYNTHESIZE → Consolidate context from Sections 1 & 2.1.
> 2. 📝 GENERATE SUMMARY → Create the comprehensive narrative product summary.
> 3. ⚙️ DEFINE & POPULATE TABLE → Define the product's names and populate the definition table.
> 4. ✅ VALIDATE → Ensure all definitions are consistent and correctly formatted.
> 5. 📤 PRESENT → Output the product summary and the definition table.
> ```
>
> **🔧 Detailed Steps:**
>
> - **Context Synthesis:** Review the `Initial Codebase Synthesis` (Section 1) and the `Repository Summary Table` (Section 2.1) to establish the project's context.
> - **Product Summary Generation:** Based on the synthesized context and the user-provided `repository_description`, write a comprehensive product summary (2-3 paragraphs). This summary should be written from the perspective of a product manager explaining the product's purpose, value, and target audience to a stakeholder. This is the primary generative task of this section.
> - **Product Definition Table Generation:**
>     - Set the `Technical Name` to be the exact `repository_name` from Section 2.1.
>     - Create the `Display Name` by converting the `Technical Name` into a human-readable title case format (e.g., "cloud-cost-cli" becomes "Cloud Cost CLI").
>     - Use the `repository_description` from Section 2.1 for the `Description` field.
>     - Populate the "Product Definition Table" with these values.
>
> **✅ Validation Requirements:**
>
> - The `Technical Name` in the table MUST exactly match the `repository.name` from Section 2.1.
> - The `Display Name` MUST be a properly formatted, title-cased version of the `Technical Name`.
> - The generated `Product Summary` must be coherent and align logically with the one-sentence `Description` in the table.

#### Output Format

**Mandatory Structure - Present in this exact order:**

1.  **Product Summary:**

    *(A comprehensive, 2-3 paragraph overview of the product, its purpose, and its value proposition. This is the primary narrative artifact.)*

    Example:
    > CloudCost CLI is a powerful command-line interface (CLI) tool designed to help cloud engineers and DevOps teams streamline their Amazon Web Services infrastructure management. By providing intelligent cost analysis, resource rightsizing recommendations, and automated optimization strategies, this tool transforms complex cloud resource management into a simple, actionable process.
    >
    > The CLI leverages advanced algorithmic analysis to scan existing AWS environments, identifying underutilized or overprovisioned resources. Engineers can quickly generate comprehensive reports that highlight potential cost savings and recommend precise adjustments. With built-in safety checks and preview modes, teams can confidently optimize their cloud infrastructure without risking service disruptions.

2.  **Product Definition Table:**

    *(This table is the structured source of truth for the product's identity.)*

| Field | Value | Purpose |
| :--- | :--- | :--- |
| **Technical Name** | `{{repository_name}}` | Used for configs, environment variables, and scripts. |
| **Display Name** | `{{display_name}}` | Used for documentation, UI, and marketing. |
| **Description** | `{{repository_description}}` | A concise, one-sentence summary of the product. |

### 2.3 Problem & Value Proposition

> [!NOTE]
> **🤖 Instructions for AI Assistant:**
>
> **📋 Process Flow - Follow these steps in order:**
>
> ```
> 1. 🔄 SYNTHESIZE → Ingest context from Product Summary (Sec 2.2) and user input.
> 2. 🎯 DEFINE PROBLEM → Abstract the "what" and "why" into a clear Problem Statement.
> 3. 💡 FORMULATE VALUE → Define the "how" and "benefit" as a compelling Value Proposition.
> 4. ✅ VALIDATE → Ensure the Problem and Value are distinct and logically linked.
> 5. 📤 PRESENT → Output the two distinct narrative blocks.
> ```
>
> **🔧 Detailed Steps:**
>
> - **Context Synthesis:** Your primary source of truth is the `Product Summary` from Section 2.2. Use the user's input for this section as supplementary detail.
> - **Problem Statement Generation:**
>     - Analyze the synthesized context to identify the core pain point or challenge this project addresses.
>     - Articulate this problem in 1-2 sentences. The language MUST be clear, concise, and understandable to a non-technical stakeholder (e.g., a project manager or business analyst).
>     - Frame the problem in terms of the user's or business's need, not the technical implementation.
> - **Value Proposition Generation:**
>     - Based on the Problem Statement, define how this project provides a unique and effective solution.
>     - Articulate this value in 1-2 sentences, focusing on the primary benefit or outcome for the user.
>     - The value proposition must directly address the problem you defined.
>
> **✅ Validation Requirements:**
>
> - The `Problem Statement` and `Value Proposition` MUST be two distinct, non-overlapping blocks of text.
> - The `Value Proposition` must offer a clear solution or benefit directly related to the `Problem Statement`.
> - The language used MUST avoid technical jargon and be accessible to a business audience.
> - The content MUST be consistent with the `Product Summary` defined in Section 2.2.

#### Output Format

**Mandatory Structure - Present in this exact order:**

1.  **Problem Statement:**

    *(A clear, jargon-free explanation of the specific problem, pain point, or challenge this project is designed to solve.)*

    *Example:*
    > Finance and DevOps teams often struggle to attribute rising cloud costs to specific projects or teams. Without clear visibility into resource consumption, budgets are difficult to forecast and control, leading to significant and unexpected operational expenses.

2.  **Value Proposition:**

    *(A concise statement describing the unique benefit this project delivers to solve the stated problem.)*

    *Example:*
    > This tool provides engineers with an on-demand command-line interface to instantly generate detailed cost-attribution reports. It empowers teams to take ownership of their spending and provides leadership with the actionable data needed to manage cloud resources effectively.

---

### 3. Features

> [!NOTE]
> **🤖 Instructions for AI Assistant:**
>
> **📋 Process Flow - Follow these steps in order:**
>
> ```
> 1. 🔄 SYNTHESIZE → Ingest context from Sec 2.2, 2.3, and user input.
> 2. 🗂️ DEFINE EPICS → Group user requirements into high-level feature categories (Epics).
> 3. 📖 FORMULATE USER STORIES → For each Epic, define specific, testable capabilities as user stories.
> 4. 🎯 PRIORITIZE → Classify each Epic and its User Stories into tiers (MVP, etc.).
> 5. ✅ VALIDATE → Ensure absolute coherence with Application Type and Problem Statement.
> 6. 📤 PRESENT → Output the features in the structured format below.
> ```
>
> **🔧 Detailed Steps:**
>
> - **Context Synthesis:** Your primary inputs are the `Problem & Value Proposition` (Sec 2.3) and the user-provided feature list.
> - **Epic Definition:** Analyze the user's requirements and group them into logical, high-level categories that are applicable to any application type (e.g., `Core Functionality`, `User Management`, `Data Processing`, `Integration`). These are your "Epics."
> - **User Story Formulation:** For each Epic, define its capabilities as concrete, testable user stories.
>     - **Format:** "As a `[Persona]`, I want to `[Action]` so that `[Benefit]`."
>     - **Persona:** Must be a specific, relevant user role (e.g., `DevOps Engineer`, `End User`, `System Administrator`).
>     - **Action:** Must describe a single, verifiable capability. The action should be granular enough to be the basis for a set of implementation tasks, but not the tasks themselves.
>     - **Benefit:** Must align directly with the `Value Proposition` from Section 2.3.
> - **Prioritization:** Assign each Epic and its constituent User Stories to one of three tiers:
>     - **MVP (Minimum Viable Product):** Essential for the core, functional version.
>     - **Next Phase:** Important enhancements for after the MVP is stable.
>     - **Nice to Have:** Desirable features that improve the experience but are not critical.
>
> **✅ Validation Requirements:**
>
> - All Epics and User Stories MUST be coherent with the `Application Type` (e.g., no "Interactive Dashboard" stories for a CLI tool).
> - Every User Story's `[Benefit]` MUST directly support the `Value Proposition` (Sec 2.3).
> - The set of MVP stories, when combined, MUST fully address the `Problem Statement` (Sec 2.3).
> - This section defines the **scope** of work. It MUST NOT contain the implementation details (tasks) or granular test criteria (UAC), which are generated from this section.

#### Output Format

**MVP Features (Core Functional Scope)**

* **Epic: `[Name of the first high-level feature category]`**
    * **Target Persona:** `[Primary user for this epic]`
    * **User Stories:**
        * As a `[Persona]`, I want to `[Action]` so that `[Benefit]`.
        * As a `[Persona]`, I want to `[Action]` so that `[Benefit]`.

* **Epic: `[Name of the second high-level feature category]`**
    * **Target Persona:** `[Primary user for this epic]`
    * **User Stories:**
        * As a `[Persona]`, I want to `[Action]` so that `[Benefit]`.

**Next Phase Features (Key Enhancements)**

* **Epic: `[Name of the third high-level feature category]`**
    * **Target Persona:** `[Primary user for this epic]`
    * **User Stories:**
        * As a `[Persona]`, I want to `[Action]` so that `[Benefit]`.

**Nice to Have Features (Future Improvements)**

* **Epic: `[Name of the fourth high-level feature category]`**
    * **Target Persona:** `[Primary user for this epic]`
    * **User Stories:**
        * As a `[Persona]`, I want to `[Action]` so that `[Benefit]`.

> [!IMPORTANT]
> **Downstream Artifact Generation**
> The Epics and User Stories defined in this section are the foundational input for generating more detailed, scoped documents. Subsequent AI processes (PRPs) will use this section to generate:
> - **Product Requirements Documents (PRDs):** Expanding each Epic with detailed context.
> - **Engineering Task Tickets:** Breaking down each User Story into granular, actionable implementation tasks.
> - **Test Plans:** Creating detailed User Acceptance Criteria (UAC) and test cases for each User Story.

---

### 4. Architecture

> [!NOTE]
> **🤖 Instructions for AI Assistant:**
>
> **📋 Process Flow - Follow these steps in order:**
>
> ```
> 1. 🏗️ DETERMINE TYPE → Identify the Application Type from Section 3.
> 2. 🏛️ SELECT COMPONENTS → Choose the relevant architectural components based on the type.
> 3. ✍️ GENERATE CONTENT → Populate the subsections for the selected components.
> 4. 📊 GENERATE DIAGRAM → Create a high-level System Architecture Diagram using Mermaid syntax.
> 5. 📝 WRITE RATIONALE → Justify the architectural choices, tailored to the application type.
> 6. ✅ VALIDATE → Ensure 100% coherence with Section 3 and the application type.
> 7. 📤 PRESENT → Output the complete, adaptive architecture specification.
> ```
>
> **🔧 Detailed Steps:**
>
> - **Application Type Determination:** Your first action is to read Section 3 and explicitly state the `Application Type` by choosing from the expanded list in the rules below. This determination will govern the structure of your entire output for this section.
> - **Component Selection & Generation:** Based on the `Application Type`, you will generate content for the relevant subsections only. Adhere strictly to the `Critical Coherence Rules` below. For example, if the type is `AI Agent`, you will omit `Frontend Architecture`.
> - **System Architecture Diagram:** You MUST generate a high-level system diagram using **Mermaid syntax**. The diagram MUST be representative of the chosen application type (e.g., a desktop app diagram should not show a CDN).
> - **Architectural Rationale:** You must write a justification for your architectural decisions. This rationale must be tailored to the application type, explaining how the chosen architecture effectively supports the MVP features from Section 3 and addresses common concerns for that type (e.g., for a SaaS App, address multi-tenancy; for a script, address portability).
>
> **🔗 Cross-Section Dependencies:**
> 
> This section has a critical dependency on Section 3 (Features). The architecture you define here MUST be capable of supporting all defined MVP User Stories.
>
> **✅ Validation Requirements:**
>
> - The `Application Type Assessment` MUST be the first output.
> - The generated subsections MUST be 100% coherent with the assessed `Application Type`.
> - The Mermaid diagram MUST be syntactically correct and accurately reflect the described components for the specific application type.
> - The `Architectural Rationale` MUST provide a clear and logical justification for the design choices.
> - All architectural components defined MUST directly enable the MVP features from Section 3.
>
> **🚨 Critical Coherence Rules (Mandatory & Expanded):**
>
> - **If `Web Application`:** MUST include `Frontend`, `Backend`, and `Database` sections.
> - **If `API Service`:** OMIT `Frontend`. MUST include `Backend` and `Database`.
> - **If `CLI Tool`:** OMIT `Frontend`. OMIT `Database` unless explicitly required. Rename `Backend` to `Core Logic`.
> - **If `Desktop Application`:** MUST include `Frontend (Native UI)` and `Core Logic`. `Database` should be described as `Local Storage/Persistence`.
> - **If `AI Agent / Automation`:** OMIT `Frontend` and `Database`. Rename `Backend` to `Agent Execution Engine`. Focus on data flow, state management, and tool integration.
> - **If `Library / SDK`:** OMIT all except `Core Logic`. Rename to `Library Core Architecture`. Focus on the public API and module design.

#### Output Format

**Application Type Assessment:**
*(State the determined application type here. Example: "Based on the features in Section 3, the application type is an **AI Agent**.")*

**(The following subsections are conditional based on the assessment above)**

**Database/Persistence Architecture:**
*(Define data storage approach. Omit if not applicable.)*

**Frontend Architecture:**
*(Specify client-side/UI architecture. Omit if not applicable.)*

**Backend/Core Logic/Agent Execution Engine:**
*(Define the primary processing architecture for the application.)*

**System Architecture Diagram:**
*(Provide a high-level overview using Mermaid syntax that is appropriate for the application type.)*

```mermaid
graph TD
    subgraph "Input Source"
        A[User Command / API Call]
    end

    subgraph "Agent Execution Engine"
        B[State Manager] --> C{Orchestrator};
        C -- "Selects Tool" --> D[Tool Interface];
        D -- "Executes" --> E(Tool: API Client);
        D -- "Executes" --> F(Tool: File System);
    end

    subgraph "External Systems"
        G[External API]
        H[Local Files]
    end

    A --> C;
    E --> G;
    F --> H;
```

**Architectural Rationale:**
*(Provide a comprehensive technical justification for the chosen architecture. Your rationale MUST explicitly address and define the project's core Performance, Scalability, and Security requirements within this explanation. Explain how the architectural decisions directly enable these requirements and support the MVP features from Section 3 for this specific application type.)*

*Required Coverage:*
- **Performance Requirements:** Define specific performance benchmarks, response times, and throughput targets that this architecture must achieve
- **Scalability Requirements:** Specify horizontal and vertical scaling capabilities and how the architecture supports growth
- **Security Requirements:** Identify security constraints, threat mitigation strategies, and compliance standards the architecture addresses

---

### 5. Software Architecture

> [!NOTE]
> **🤖 Instructions for AI Assistant:**
>
> **📋 Process Flow - Follow these steps in order:**
>
> ```
> 1. 🔄 SYNTHESIZE → Ingest Application Type (Sec 4) and MVP Features (Sec 3).
> 2. 🏛️ DEFINE & RECOMMEND → Define the architectural style, recommend key design patterns, and map main components.
> 3. 📁 GENERATE PROJECT STRUCTURE → Create a well-thought-out, idiomatic project structure.
> 4. 📊 GENERATE DIAGRAM → Create a detailed, context-specific Mermaid Sequence Diagram for MVP use cases.
> 5. 📝 WRITE RATIONALE → Justify all software architecture and pattern choices.
> 6. ✅ VALIDATE → Ensure 100% coherence between all generated artifacts and prior sections.
> ```
>
> **🔧 Detailed Steps:**
>
> - **Context Synthesis:** Your primary inputs are the `Application Type Assessment` from Section 4 and the `MVP Features` from Section 3.
> - **Define Style, Patterns & Components:**
>     - Define the overall software architecture style (e.g., Clean Architecture, Layered).
>     - **Recommend and justify** 2-3 key software design patterns that are idiomatic for the `Application Type` and anticipated `Tech Stack`. (e.g., "For this Go CLI, the **Builder Pattern** is recommended for constructing complex API request objects.").
>     - List the main software components (e.g., `Authentication Service`, `Data Processing Module`) and their responsibilities.
> - **Generate Project Structure:** Create an ASCII tree for the recommended source code directory structure. This structure MUST be **extremely well-thought-out and idiomatic** for the specific `Application Type` and `Tech Stack`. Do not use generic examples.
> - **Generate Sequence Diagram:** You MUST create a **Mermaid sequence diagram** illustrating the primary MVP use cases from Section 3. The diagram must be detailed, naming the actual software components you defined above. The nature of the diagram must adapt to the application type (see rules below).
>
> **🔗 Cross-Section Dependencies:**
> 
> This section has critical dependencies on Section 3 (Features) and Section 4 (Architecture).
> - The `MVP Sequence Diagram` MUST implement the `Primary Use Cases` from Section 3.
> - The software components defined here MUST be a direct implementation of the system components in Section 4.
>
> **✅ Validation Requirements:**
>
> - The `Software Architecture Style` and `Recommended Design Patterns` MUST be consistent with the system-level decisions in Section 4 and appropriate for the `Application Type`.
> - The `Recommended Project Structure` MUST be verifiably idiomatic for the `Application Type` and anticipated `Tech Stack`.
> - The `MVP Sequence Diagram` MUST feature the specific components defined in this section and accurately model the MVP use cases from Section 3.
>
> **🚨 Critical Coherence Rules for Diagrams & Structure (Mandatory):**
>
> - **For `Web/Desktop App`:** Diagram shows end-user interaction flows. Structure separates client, server, and shared logic.
> - **For `API Service`:** Diagram shows client API calls and internal service interactions. Structure follows idiomatic backend patterns (e.g., feature-based folders, domain-driven design).
> - **For `CLI Tool`:** Diagram shows command execution flow. Structure is idiomatic for the language (e.g., Go's `cmd/` and `internal/`).
> - **For `Library/SDK`:** Diagram shows primary API call sequences. Structure prioritizes a clear public API surface (`/pkg` or `/lib`).
> - **For `AI Agent/Automation`:** Diagram shows the agent's `State -> Plan -> Tool -> Observation` loop. Structure separates the agent core, tools, and state management.

#### Output Format

**Software Design & Patterns:**
*(Define the architectural style. Recommend and justify 2-3 key, idiomatic design patterns with examples of where they would apply. List the main software components and their responsibilities. Your recommendations MUST explicitly address how the chosen patterns achieve key Quality Attributes such as maintainability, testability, reliability, and modularity.)*

**Recommended Project Structure:**
*(Present a well-thought-out, idiomatic directory structure with justifications for key organizational choices.)*

*Example for a Go CLI Tool:*

```
{{repository_name}}/
├── cmd/{{repository_name}}/   # Main application entry point
│   └── main.go
├── internal/               # Private application and library code
│   ├── command/            # CLI command definitions and logic
│   ├── config/             # Configuration loading and management
│   └── provider/           # Interfaces to external services (e.g., AWS)
├── pkg/                    # Public library code (if any)
└── Makefile                # Build and task automation
```

*Rationale: This structure follows Go community best practices, clearly separating the executable entry point from private internal logic, ensuring maintainability and a clean project layout.*

**MVP Sequence Diagram:**
*(Create a specific Mermaid sequence diagram for the MVP use cases from Section 3.)*

*Example for an API Service:*
```mermaid
sequenceDiagram
    title: User Authentication Flow (MVP Use Case)
    
    participant Client
    participant API Gateway
    participant AuthService
    participant UserDB
    
    Client->>+API Gateway: POST /login (email, password)
    API Gateway->>+AuthService: AuthenticateUser(credentials)
    AuthService->>+UserDB: GetUserByEmail(email)
    UserDB-->>-AuthService: UserRecord (hashed_password)
    AuthService-->>-API Gateway: JWT Token
    API Gateway-->>-Client: { "token": "..." }
```

**Architectural Rationale:**
*(Provide a comprehensive technical justification for the chosen software architecture, design patterns, and project structure. Your rationale MUST explicitly address how the design achieves key Quality Attributes and provides Resilience against common failure modes. Explain how the architecture creates a robust, maintainable, and scalable solution for the problems defined in earlier sections.)*

*Required Coverage:*
- **Quality Attributes Achievement:** Explain how the chosen patterns and structure specifically enhance maintainability, testability, reliability, and modularity
- **Failure Mode Resilience:** Identify common failure modes for this application type and explain how the architecture mitigates these risks
- **Technical Debt Prevention:** Describe how the design choices prevent accumulation of technical debt and support long-term evolution

---

### 6. User & Developer Experience (UX/DX)

> [!NOTE]
> **🤖 Instructions for AI Assistant:**
>
> **📋 Process Flow - Follow these steps in order:**
>
> ```
> 1. 🔍 ASSESS → Determine if the focus is UX or DX based on Application Type (Sec 4).
> 2. 🗺️ GENERATE FLOWS → Create Mermaid diagrams for primary user/developer journeys.
> 3. 🎨 DEFINE PRINCIPLES → Outline the core design and interaction principles.
> 4. ♿ SPECIFY STANDARDS → Define accessibility and usability standards.
> 5. ✅ VALIDATE → Ensure 100% coherence with Application Type and Features (Sec 3).
> 6. 📤 PRESENT → Output the artifacts in the adaptive format below.
> ```
>
> **🔧 Detailed Steps:**
>
> - **Applicability Assessment:** Your first action is to state whether this section will define a **User Experience (UX)** for applications with direct user interaction (Web, Desktop, Mobile) or a **Developer Experience (DX)** for programmatic tools (API, CLI, Library, Agent). This assessment is mandatory.
> - **Generate Journey/Flow Diagrams:** You MUST create **Mermaid `flowchart` diagrams** to illustrate the critical journeys.
>     - For **UX**, map the primary user flows for the MVP User Stories from Section 3.
>     - For **DX**, map the primary developer interaction flows (e.g., API call sequence, CLI command workflow).
> - **Define Core Principles:** Based on the application type, define the core principles that will guide the experience.
>     - For **UX**, this includes UI patterns, visual hierarchy, and interaction design philosophy.
>     - For **DX**, this includes API design principles (e.g., RESTful, idempotent), command-line interface conventions, and documentation standards.
> - **Define Standards:** Specify the accessibility and usability standards.
>     - For **UX**, this includes WCAG compliance levels, keyboard navigation, etc.
>     - For **DX**, this includes clear error messaging standards, comprehensive help text (`--help`), and predictable outputs.
>
> **🔗 Cross-Section Dependencies:**
> 
> This section has critical dependencies on Section 3 (Features) and Section 4 (Architecture).
> - The UX/DX flows MUST directly support the MVP User Stories from Section 3.
> - The experience defined MUST be implementable with the System Architecture from Section 4.
>
> **✅ Validation Requirements:**
>
> - The `Experience Type Assessment` MUST be the first output.
> - All generated artifacts MUST be coherent with the assessed UX or DX focus.
> - The Mermaid diagrams MUST be syntactically correct and accurately model the primary journeys.
> - The Core Principles MUST be idiomatic for the `Application Type`.

#### Output Format

**Experience Type Assessment:**
*(State the determined focus here. Example: "Based on the Application Type (CLI Tool), this section will define the **Developer Experience (DX)**.")*

---

**(The structure of the following output is ADAPTIVE based on the assessment above)**

**IF UX (Web/Desktop/Mobile App):**

**1. Primary User Journey Maps:**
*(Provide Mermaid `flowchart` diagrams for the most critical MVP user journeys from Section 3.)*

*Example User Login Flow:*
```mermaid
flowchart TD
    A[User visits /login] --> B{Enters Credentials};
    B --> C[POST /api/auth/token];
    C --> D{Auth Success?};
    D -- Yes --> E[Redirect to /dashboard];
    D -- No --> F[Show Error Message];
```

**2. Core UX/UI Principles:**
| Principle | Description |
| :--- | :--- |
| Clarity | The interface will prioritize clear, unambiguous labels and visual hierarchy to minimize cognitive load. |
| Consistency | UI components and interaction patterns will be consistent across the entire application. |

**3. Accessibility & Usability Standards:**

**Standard:** WCAG 2.1 AA

**Requirements:** Full keyboard navigability, screen reader compatibility, sufficient color contrast.

---

**IF DX (API/CLI/Library/Agent):**

**1. Primary Developer Journey Maps:**
*(Provide Mermaid `flowchart` diagrams for the most critical MVP developer interactions from Section 3.)*

*Example CLI Command Flow:*
```mermaid
flowchart TD
    A["Developer runs '{{repository_name}} check'"] --> B{Parse Flags};
    B --> C[Read config.yml];
    C --> D[Execute Core Logic];
    D --> E{Validation Success?};
    E -- Yes --> F[Print Formatted Table to STDOUT];
    E -- No --> G[Print Error to STDERR with Exit Code 1];
```

**2. Core DX Principles:**
| Principle | Description |
| :--- | :--- |
| Predictability | The CLI will provide predictable outputs. Successful commands exit with code 0; failures exit with non-zero codes. |
| Discoverability| All commands and flags will be fully documented via a --help flag. Error messages will be actionable. |

**3. API/CLI Design Standards:**

**Standard:** RESTful principles for APIs / POSIX conventions for CLIs.

**Requirements:** Idempotent write operations, clear and consistent naming for flags and endpoints, comprehensive error codes.

---

### 7. Tech Stack

> [!NOTE]
> **🤖 Instructions for AI Assistant:**
>
> **📋 Process Flow - Follow these steps in order:**
>
> ```
> 1. 🔄 SYNTHESIZE → Ingest context from all prior sections, especially Features (3) and Architecture (4, 5).
> 2. 🤔 ANALYZE USER INPUT → Determine if the user has provided a complete tech stack or a high-level goal.
> 3. ⚙️ GENERATE OR DOCUMENT → Either document the user's stack or recommend an optimal one.
> 4. 📝 WRITE RATIONALE → Justify the final tech stack with a clear rationale.
> 5. ✅ VALIDATE → Ensure the stack is complete, versioned, and coherent.
> 6. 📤 PRESENT → Output the tech stack in the structured format.
> ```
>
> **🔧 Detailed Steps:**
>
> - **Context Synthesis:** Your primary inputs are the `Features` (Sec 3), `Architecture` (Sec 4), and `Software Architecture` (Sec 5).
> - **Input Analysis:**
>     - **If the user provides a specific tech stack:** Your role is to document it with precision.
>     - **If the user provides a goal (e.g., "a scalable web app"):** Your role is to recommend a complete tech stack that is optimal for the project's requirements as defined in the preceding sections.
> - **Stack Definition:**
>     - For every core technology (language, framework, database), you MUST specify a **concrete version number** (e.g., `Go 1.21`, `Node.js 20.x`, `React 18`). Do not use "latest."
>     - The stack must be broken down into logical categories as defined in the `Output Format`.
> - **Technology Rationale Generation:** You must write a clear rationale for the chosen stack.
>     - If the stack was user-provided, the rationale should explain how this stack aligns with the project's goals and note any potential considerations (e.g., regarding outdated choices).
>     - If you recommended the stack, you must justify your choices against alternatives, explaining how your recommendation supports the architectural requirements.
>
> **🔗 Cross-Section Dependencies:**
> 
> The `Tech Stack` is a foundational section that constrains most subsequent sections.
> - It MUST be able to implement the `Software Architecture` (Sec 5).
> - It MUST support the `UX/DX` principles (Sec 6).
>
> **✅ Validation Requirements:**
>
> - Every core technology listed MUST include a specific version.
> - The chosen stack MUST be coherent with the `Application Type` (e.g., a CLI tool should not have a frontend framework like React in its core stack).
> - The `Technology Rationale` must provide a clear, logical justification for the stack.

#### Output Format

**1. Primary Language & Runtime:**
| Technology | Version | Purpose |
| :--- | :--- | :--- |
| (e.g., Go) | `1.21` | Core language for the backend/CLI logic. |
| (e.g., Node.js)| `20.x` | Runtime for the backend services. |

**2. Core Frameworks & Libraries:**
| Technology | Version | Purpose |
| :--- | :--- | :--- |
| (e.g., React) | `18.2` | Frontend UI component library. |
| (e.g., Cobra) | `1.7` | Framework for building powerful CLI applications in Go. |
| (e.g., Express)| `4.18` | Backend web application framework for Node.js. |

**3. Database / Persistence:**
| Technology | Version | Purpose |
| :--- | :--- | :--- |
| (e.g., PostgreSQL)| `15` | Primary relational database for application data. |
| (e.g., Redis) | `7.0` | In-memory cache for session management and performance. |

**4. Development & Build Tooling:**
| Technology | Version | Purpose |
| :--- | :--- | :--- |
| (e.g., Docker) | `24.x` | Containerization for development and production environments. |
| (e.g., Vite) | `4.x` | Frontend build tool and development server. |

**5. Technology Rationale:**
*(A 2-3 paragraph justification for the chosen tech stack. Explain why these technologies are a good fit for the project's features, architecture, and non-functional requirements.)*

*Example Rationale for a Go CLI:*
> The selection of Go (`1.21`) as the primary language is driven by its strong performance, static typing, and excellent support for building self-contained, cross-platform command-line applications. The Cobra framework (`1.7`) is chosen to provide a robust structure for commands and flags, aligning with the DX principle of discoverability. This minimalist stack ensures a small binary size and fast startup times, which are critical performance requirements for a CLI tool.

---

### 8. Third Party Integrations

> [!NOTE]
> **🤖 Instructions for AI Assistant:**
>
> **📋 Process Flow - Follow these steps in order:**
>
> ```
> 1. 🔍 ASSESS → Determine if third-party integrations are required based on Features (3) and Architecture (4).
> 2. 📝 IDENTIFY & CATALOG → If required, identify each external service and catalog its critical attributes in the table.
> 3. 🔐 DEFINE PROTOCOLS → Detail the authentication, data exchange, and error handling for each service.
> 4. ✅ VALIDATE → Ensure all integrations are compatible with the Tech Stack (Sec 7).
> 5. 📤 PRESENT → Output the assessment and the detailed integration table.
> ```
>
> **🔧 Detailed Steps:**
>
> - **Applicability Assessment:** Your first action is to analyze Sections 3 and 4. State whether the project requires third-party integrations. If none are required, state this clearly and produce no other artifacts for this section.
> - **Identify & Catalog Integrations:** For each required integration:
>     - **Service:** Name the service (e.g., `Stripe`, `OpenAI API`, `Auth0`).
>     - **Purpose:** Explain its role in the system, linking it directly to a feature from Section 3 (e.g., "Handles payment processing for the 'Subscription' feature").
>     - **Authentication:** Specify the exact authentication method (e.g., `API Key (Bearer Token)`, `OAuth 2.0`).
>     - **Key SDK / Endpoints:** List the primary SDK library (including language) or the critical API endpoints that will be used.
> - **Define Protocols:** In the rationale, describe the data formats (e.g., `JSON`), key protocols, and the expected error handling strategy for these integrations.
>
> **🔗 Cross-Section Dependencies:**
> 
> This section is critically dependent on **Section 7 (Tech Stack)**. All specified SDKs and integration methods must be compatible with the chosen technologies.
>
> **✅ Validation Requirements:**
>
> - The `Applicability Assessment` MUST be the first output.
> - If integrations are present, the table MUST be fully populated for each service.
> - The `Purpose` for each integration MUST trace back to a specific feature in Section 3.
> - The specified `Key SDK` MUST be compatible with the `Primary Language` defined in Section 7.

#### Output Format

**Applicability Assessment:**
*(State whether third-party integrations are required. Example: "Based on the features in Section 3, this project requires integrations with external payment processing and authentication services.")*

**(Omit the following if no integrations are required)**

**Third-Party Integration Catalog:**
| Service | Purpose & Feature Link | Authentication Method | Key SDK / Endpoints |
| :--- | :--- | :--- | :--- |
| (e.g., Stripe) | Handles payment processing for the "User Subscriptions" feature (Sec 3). | API Key (via HTTP Bearer Token) | `stripe-node` (Node.js SDK) |
| (e.g., Auth0) | Manages user authentication and authorization (Sec 3). | OAuth 2.0 (Authorization Code Flow) | `auth0-react` (React SDK) |
| (e.g., OpenAI API) | Provides text generation capabilities for the "Content Automation" feature (Sec 3). | API Key (via HTTP Bearer Token) | `openai` (Python SDK) |

**Integration Rationale & Protocols:**
*(Provide a brief summary of the integration strategy. Describe the standard data exchange format (e.g., JSON), protocols, and the high-level error handling and resilience strategy (e.g., "All external API calls will be wrapped in a retry mechanism with exponential backoff to handle transient network failures."))*

---

### 9. Local Development Setup

> [!NOTE]
> **🤖 Instructions for AI Assistant:**
>
> **📋 Process Flow - Follow these steps in order:**
>
> ```
> 1. 🔄 SYNTHESIZE → Ingest Tech Stack (7) and Third Party Integrations (8).
> 2. ⚙️ DERIVE COMMANDS → Generate specific, version-locked installation and setup commands.
> 3. 📝 DOCUMENT CONFIG → Detail environment variable and configuration file setup.
> 4. ✅ CREATE VALIDATION → Provide explicit commands to verify the setup is correct.
> 5. 🔍 GENERATE TROUBLESHOOTING → List common issues and solutions for this specific stack.
> 6. 📤 PRESENT → Output the complete, actionable setup guide.
> ```
>
> **🔧 Detailed Steps:**
>
> - **Derive Commands:** You will not use generic placeholders. You will generate the **exact commands** needed to set up the environment based on the `Tech Stack` (Sec 7).
>     - If `Docker` is specified, provide the `docker build` command.
>     - If `Node.js` is specified, provide the `npm install` or `yarn install` command.
>     - If `Go` is specified, provide the `go build` command.
> - **Document Configuration:** Detail the process for setting up local configuration, such as creating a `.env` file from an example, and specify the variables required for the `Third Party Integrations` (Sec 8).
> - **Create Validation Steps:** For each setup step, provide a corresponding command that a developer can run to verify its success (e.g., `go version`, `npm test`).
> - **Generate Troubleshooting Guide:** Based on the chosen `Tech Stack`, generate a list of 2-3 common problems and their solutions (e.g., "Problem: `poetry` fails to resolve dependencies. Solution: Run `poetry lock --no-update`.").
>
> **🔗 Cross-Section Dependencies:**
> 
> This section is critically dependent on **Section 7 (Tech Stack)** and **Section 8 (Third Party Integrations)**.
>
> **✅ Validation Requirements:**
>
> - All installation commands MUST use the exact versions specified in Section 7.
> - The configuration steps MUST account for all services listed in Section 8.
> - The validation commands MUST provide a reliable way to confirm the environment is correctly configured.

#### Output Format

**1. Prerequisites & Installation:**
*(Provide the specific, version-locked commands to install the language/runtime and dependencies from Section 7.)*

*Example for a Node.js project:*
```bash
# 1. Install Node.js (version 20.x is required)
nvm install 20
nvm use 20

# 2. Clone the repository
git clone git@github.com:user/{{repository_name}}.git
cd {{repository_name}}

# 3. Install dependencies
npm install
```

**2. Configuration:**
*(Detail the steps to configure the local environment, including .env files and credentials for services from Section 8.)*

*Example:*
```bash
# 1. Create a local environment file
cp .env.example .env

# 2. Add your Stripe API Key to the .env file
STRIPE_API_KEY="sk_test_..."
```

**3. Environment Validation:**
*(Provide a sequence of commands to verify the setup is complete and correct.)*

*Example:*
```bash
# 1. Verify Node.js version
node -v 
# Expected output: v20.x.x

# 2. Run all unit tests to confirm setup
npm test
# Expected output: All tests passing
```

**4. Troubleshooting:**
| Common Issue | Solution |
| :--- | :--- |
| Dependency Installation Failure | Run `npm cache clean --force` and then `npm install` again. |
| Test Authentication Error | Ensure your `STRIPE_API_KEY` in the `.env` file is correct and has the necessary permissions. |

---

### 10. Deployment

> [!NOTE]
> **🤖 Instructions for AI Assistant:**
>
> **📋 Process Flow - Follow these steps in order:**
>
> ```
> 1. 🔍 ASSESS → Determine Application Type (Sec 4) to select the correct deployment strategy.
> 2. 📝 DEFINE STRATEGY → Outline the deployment strategy and target platforms.
> 3. ⚙️ GENERATE ARTIFACTS → Create necessary configuration files (e.g., Dockerfile, CI/CD pipeline).
> 4. 🔐 DETAIL OPERATIONS → Document environment management, security, and monitoring.
> 5. ✅ VALIDATE → Ensure the strategy is coherent with the Architecture (Sec 4) and Tech Stack (Sec 7).
> 6. 📤 PRESENT → Output the complete, adaptive deployment specification.
> ```
>
> **🔧 Detailed Steps:**
>
> - **Applicability Assessment:** Your first action is to state the `Application Type` from Section 4. The entire output of this section must be adapted to that type. If the type does not require deployment (e.g., a local script), state this and produce no other artifacts.
> - **Strategy Definition:** Based on the `Architecture` (Sec 4), define the deployment strategy (e.g., "Containerized deployment to AWS ECS," "Static site deployment to Vercel," "Publishing to NPM package registry").
> - **Generate Configuration Artifacts:** Generate the complete, ready-to-use text for key deployment configuration files.
>     - For containerized apps, generate the `Dockerfile`.
>     - For CI/CD, generate the `.github/workflows/deploy.yml` or equivalent.
> - **Detail Operations:** Describe how environments (staging, production) are managed, how secrets are handled in production, and what the monitoring/alerting strategy is.
>
> **🔗 Cross-Section Dependencies:**
> 
> This section is critically dependent on **Section 4 (Architecture)** and **Section 7 (Tech Stack)**.
>
> **✅ Validation Requirements:**
>
> - The deployment strategy MUST be coherent with the `Application Type`.
> - The generated `Dockerfile` MUST use the exact versions from the `Tech Stack` (Sec 7).
> - The CI/CD pipeline configuration MUST be syntactically correct and use appropriate actions/commands for the `Tech Stack`.

#### Output Format

**Applicability Assessment:**
*(State the determined application type and its deployment implications. Example: "The application type is a **Web Application**, which requires a cloud-based deployment strategy.")*

**(The structure of the following output is ADAPTIVE based on the assessment above)**

**IF Web App / API Service:**

**1. Deployment Strategy & Platform:**
*(Describe the high-level strategy and name the specific services from Sec 4. Example: "The application will be deployed as a containerized service on AWS ECS, with static assets served from an S3 bucket via CloudFront.")*

**2. Deployment Configuration (`Dockerfile`):**
```dockerfile
# Use the official image for the language and version from Sec 7
FROM node:20-alpine

# Set working directory
WORKDIR /usr/src/app

# Copy and install dependencies
COPY package*.json ./
RUN npm install

# Copy app source
COPY . .

# Expose port and define start command
EXPOSE 3000
CMD [ "npm", "start" ]
```

**3. CI/CD Pipeline (`.github/workflows/deploy.yml`):**
```yaml
name: Deploy to Production
on:
  push:
    branches:
      - main
jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - name: Build and Push Docker Image
        uses: docker/build-push-action@v4
        with:
          context: .
          push: true
          tags: user/{{repository_name}}:latest
      # ... further steps to deploy to ECS, etc.
```

**4. Environment Management & Operations:**
| Area | Strategy |
| :--- | :--- |
| Environments | A staging environment for testing and a production environment for live traffic. |
| Secrets | Production secrets (API keys, DB credentials) are managed via AWS Secrets Manager. |
| Monitoring | Application health and performance are monitored using AWS CloudWatch Alarms. |

**IF CLI Tool / Library:**

**1. Release & Publishing Strategy:**
*(Describe how the tool/library will be distributed. Example: "The CLI tool will be compiled into cross-platform binaries and published to GitHub Releases. The library will be published to the NPM package registry.")*

**2. Publishing Pipeline (`.github/workflows/release.yml`):**
```yaml
name: Release and Publish
on:
  push:
    tags:
      - 'v*'
jobs:
  publish:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - name: Publish to NPM
        uses: JS-DevTools/npm-publish@v2
        with:
          token: ${{ secrets.NPM_TOKEN }}
```

**3. Versioning Strategy:**
| Strategy | Description |
| :--- | :--- |
| Versioning | The project uses Semantic Versioning (SemVer). Releases are created by pushing a vX.Y.Z tag to the main branch. |

---

### 11. AI Assistant Guidance

> [!NOTE]
> **🤖 Instructions for AI Assistant:**
>
> **📋 Process Flow - Follow these steps in order:**
>
> ```
> 1. 🔄 SYNTHESIZE → Ingest context from Tech Stack (7), SW Architecture (5), and UX/DX (6).
> 2. 🧠 DERIVE PITFALLS → Based on the stack and patterns, generate the AI Common Pitfalls table.
> 3. 🎯 DEFINE GUIDANCE → Formulate explicit behavioral rules and domain patterns.
> 4. ✅ VALIDATE → Ensure guidance is actionable and directly relevant to the project context.
> 5. 📤 PRESENT → Output the complete guidance protocol.
> ```
>
> **🔧 Detailed Steps:**
>
> - **Context Synthesis:** Your primary inputs are the `Tech Stack` (Sec 7), `Software Architecture` (Sec 5), and `UX/DX` (Sec 6).
> - **Derive AI Pitfalls:** You will not list generic pitfalls. You will **derive specific pitfalls** directly from the project's context.
>     - For each core technology in the `Tech Stack`, identify 1-2 common, high-risk errors (e.g., for `React`: "Incorrectly managing state, leading to unnecessary re-renders"; for `Go`: "Ignoring error returns, leading to nil pointer panics").
>     - For each architectural pattern in `Software Architecture`, identify a potential misapplication.
> - **Define Behavioral Guidance:** Formulate a list of 3-5 non-negotiable rules for any agent working on this codebase (e.g., "Always generate unit tests for new business logic," "Ask for clarification before modifying a core module").
> - **Define Domain-Specific Patterns:** Codify the project's conventions. This includes preferred coding styles, naming conventions, and specific implementation patterns that should be followed (e.g., "All new API endpoints MUST use the defined `api.Controller` struct.").
>
> **✅ Validation Requirements:**
>
> - Every pitfall listed in the table MUST be directly relevant to a technology or pattern used in this project.
> - Behavioral guidance rules MUST be clear, unambiguous, and actionable.
> - Domain-specific patterns MUST be concrete and provide examples where necessary.

#### Output Format

**1. AI Common Pitfalls:**
*(This table provides guardrails for future AI agents to prevent common, context-specific errors.)*

| Pitfall | What It Is | How to Identify | How to Solve/Overcome |
| :--- | :--- | :--- | :--- |
| (e.g., Forgetting `defer` in Go) | In Go, failing to use `defer` for cleanup actions like closing files can lead to resource leaks. | Look for functions that open resources (`os.Open`, `db.Conn`) but lack a corresponding `defer resource.Close()` call immediately after. | **Mandatory Protocol:** Immediately after successfully opening a resource that requires closing, the very next line MUST be the `defer` statement to close it. |
| (e.g., Prop Drilling in React) | Passing props down through multiple layers of components instead of using a state management solution or Context API. | A component receives and passes on props without using them itself. The same prop appears at many levels of the component tree. | **Mandatory Protocol:** For state shared by more than 2-3 levels of components, use the established state management library (`Zustand`/`Redux`) or React's Context API. Do not pass props through intermediate components. |

**2. Behavioral Guidance (Mandatory Protocols):**
- **Principle of Least Astonishment:** Generated code should follow the existing patterns in the codebase. Do not introduce new design patterns without explicit instruction.
- **Confirmation Before Destructive Actions:** You MUST ask for explicit user confirmation before generating code that performs destructive actions (e.g., `DELETE` from a database, `rm -rf`).
- **Test Generation Requirement:** All new public functions or methods containing business logic MUST be accompanied by a corresponding unit test.

**3. Domain-Specific Patterns & Conventions:**
- **Naming Conventions:** All Go interfaces will be named with an `-er` suffix (e.g., `Reader`, `Writer`).
- **API Error Responses:** All API error responses MUST conform to the `APIError` struct defined in `/pkg/errors/errors.go`.
- **State Management:** Global UI state is managed via the `Zustand` store defined in `src/state/store.js`. Do not use component-local state for data that needs to be shared globally.

---

### 12. Reference & Documentation

> [!NOTE]
> **🤖 Instructions for AI Assistant:**
>
> **📋 Process Flow - Follow these steps in order:**
>
> ```
> 1. 🔄 SYNTHESIZE → Ingest Tech Stack (7) and user-provided links.
> 2. 🔍 GATHER & VALIDATE → Collect and verify URLs for all external references.
> 3. 📝 CREATE KNOWLEDGE BASE → Synthesize critical information into a local markdown file.
> 4. 📊 POPULATE TABLES → Fill out the External Links and Internal Knowledge Base tables.
> 5. ✅ VALIDATE → Ensure the knowledge base is coherent and all links are verified.
> 6. 📤 PRESENT → Output all generated artifacts.
> ```
>
> **🔧 Detailed Steps:**
>
> - **Gather External Links:**
>     - Based on the `Tech Stack` (Sec 7), perform web searches to find the official, canonical documentation URL for each core technology.
>     - Ingest any links provided directly by the user.
>     - For every URL, validate that it is accessible (returns a 200 OK status). If a link is broken, find the most current alternative.
> - **Create Internal Knowledge Base:**
>     - This is the most critical step. You will create a new file in the repository at `docs/ai_knowledge_base.md`.
>     - For each core technology, you will visit its documentation URL, extract the most critical information (e.g., installation commands, core concepts, "Getting Started" examples), and **synthesize** it into a concise section within `docs/ai_knowledge_base.md`.
>     - This file is the permanent, local, and verifiable documentation store for the project.
> - **Populate Output Tables:**
>     - Fill the `External Reference Links` table with the validated URLs.
>     - Fill the `Internal Knowledge Base Summary` table by creating a summary of the content you just wrote to `docs/ai_knowledge_base.md`.
>
> **✅ Validation Requirements:**
>
> - The file `docs/ai_knowledge_base.md` MUST be created and populated.
> - All links in the `External Reference Links` table MUST be validated and return a 200 OK status.
> - The `Internal Knowledge Base Summary` must accurately reflect the contents of the generated markdown file.

#### Output Format

**1. Internal Knowledge Base Summary:**
*(This section summarizes the permanent, locally-stored documentation artifact that you have created.)*

| File Location | Purpose | Key Contents Summarized |
| :--- | :--- | :--- |
| `docs/ai_knowledge_base.md` | The canonical, locally-stored knowledge base for this project. It serves as the primary, verifiable source of truth for all future AI agents. | - **Go (1.21):** Installation via `go install`, core concepts of goroutines and channels.<br>- **React (18.2):** Setup with `create-react-app`, key concepts of JSX, components, and hooks.<br>- **Docker (24.x):** Basic `Dockerfile` structure and common commands. |

**2. External Reference Links:**
*(This is a catalog of high-quality external links for human developer reference.)*

| Documentation | Link | Validation Status |
| :--- | :--- | :--- |
| **Official Go Documentation** | `https://go.dev/doc/` | ✅ Verified (200 OK) |
| **Official React Documentation** | `https://react.dev/` | ✅ Verified (200 OK) |
| **Official Docker Documentation** | `https://docs.docker.com/` | ✅ Verified (200 OK) |

**3. File Operation Summary:**

📁 File Operation: CREATED docs/ai_knowledge_base.md
📊 Content Status: ✅ Synthesized [N] key technologies into local knowledge base.
🔗 Link Status: ✅ Verified [M] external reference URLs.
````

## File: docs/templates/00_context_engineering/user-input-form-v1.md
````markdown
# Project Context Input Form

## Objective

To provide the essential information required for an AI agent to generate a complete `init-context.md` document for your project. Please be concise but clear. The AI will expand on these points.

---

## Section 2: Project & Product Definition

### 2.1 GitHub Repository

*The AI will infer most settings from best practices. Provide only the core details.*

**Repository Name** (`repository_name`):
```
[Enter repository name, e.g., cloud-cost-cli]
```

**One-Sentence Description** (`repository_description`):
```
[Enter a concise, one-sentence description of the repository's purpose]
```

**Key Technology Topics** (Comma-separated):
```
[e.g., go, cli, aws, cost-management]
```

### 2.3 Problem & Value Proposition

*This is a critical human input. The AI will refine it, but the core idea must come from you.*

**The Problem We Are Solving:**
```
[In 1-2 sentences, describe the pain point or challenge this project addresses for its users.]
```

**Our Unique Value Proposition:**
```
[In 1-2 sentences, describe the unique benefit or solution this project provides.]
```

---

## Section 3: Features

*List the high-level capabilities. The AI will convert these into formal Epics and User Stories.*

### MVP (Minimum Viable Product) Features

```
- [List the absolute essential features, one per line]
- [Feature 2]
- [Feature 3]
```

### Next Phase Features (Optional)

```
- [List important features to be built after the MVP]
- [Feature 2]
- [Feature 3]
```

### Nice to Have Features (Optional)

```
- [List desirable but non-essential features]
- [Feature 2]
- [Feature 3]
```

---

## Section 4 & 5: Architecture & Software Design

**Application Type** (Choose one):
- [ ] Web Application
- [ ] API Service
- [ ] CLI Tool
- [ ] Desktop Application
- [ ] AI Agent / Automation
- [ ] Library / SDK

**Architectural Preferences or Constraints** (Optional):
```
[e.g., Must be a serverless architecture; Prefer a microservices approach; Must use the Hexagonal Architecture pattern.]
```

**Idiomatic Design Pattern Preferences** (Optional):
```
[e.g., For Go, we prefer the Builder pattern for complex objects; For React, use container/presentational components.]
```

---

## Section 6: User & Developer Experience (UX/DX)

**Core Experience Principles** (Optional):
```
[e.g., The CLI must be highly discoverable with excellent --help text; The API design must be strictly RESTful; The UI should feel minimalist and fast.]
```

---

## Section 7: Tech Stack

*Provide the specific technologies. If you are unsure, describe your goal, and the AI will recommend a stack.*

### Option A: I have a specific stack in mind

**Primary Language & Version:**
```
[e.g., Go 1.21]
```

**Core Frameworks & Versions:**
```
[e.g., Cobra 1.7, React 18.2]
```

**Database & Version:**
```
[e.g., PostgreSQL 15]
```

**Key Tooling:**
```
[e.g., Docker, Vite, Poetry]
```

### Option B: I need a recommendation

**My Goal:**
```
[e.g., I need a highly scalable backend for a real-time data API; I need a simple, maintainable stack for a cross-platform desktop app.]
```

---

## Section 8: Third Party Integrations

**Required External Services:**
```
- [List any required third-party APIs or services, one per line]
- [e.g., Stripe API for payments, OpenAI API for text generation]
- [Service 3]
```

---

## Section 9 & 10: Setup & Deployment

**Target Deployment Environment:**
```
[e.g., AWS, Vercel, On-premise Kubernetes, NPM Registry, GitHub Releases]
```

**Non-Standard Setup Notes** (Optional):
```
[e.g., Requires access to a private NPM registry at registry.mycompany.com; Must use a specific version of a system dependency like OpenSSL.]
```

---

## Section 12: Reference & Documentation

**Must-Have Documentation Links** (Optional):
```
- [Provide any links to essential articles, style guides, or API documentation that the AI must use as a primary reference]
- [Link 2]
- [Link 3]
```
````

## File: docs/templates/00_overview/about-this-repo.md
````markdown
# Persona Definition: {{persona_title}}

> **💡 Tip for the AI Assistant:** This document defines the persona you should adopt when interacting with the user and working on this repository. Internalize these characteristics to ensure your responses and actions are consistent, effective, and aligned with the project's ethos. Refer to this document as your primary directive for behavior and communication style.

---

## 1. Role & Core Mandate

You are the **{{primary_role}}** for this project. You operate as a {{working_style}} {{professional_type}}. Your primary mandate is to {{core_mandate}}.

> **🤖 AI Directive:** Always frame your analysis, suggestions, and actions from the perspective of {{perspective_description}}. Prioritize {{primary_priorities}}.

### Example Implementation:

```markdown
You are the **Principal DevOps & Platform Engineer** for this project. You operate as a highly-skilled, pragmatic, and efficient solopreneur and indie hacker. Your primary mandate is to build, maintain, and scale a robust, production-grade system with minimal overhead and maximum automation.

> **🤖 AI Directive:** Always frame your analysis, suggestions, and actions from the perspective of a solo engineer responsible for the entire lifecycle of the product. Prioritize simplicity, maintainability, and cost-effectiveness.
```

---

## 2. Core Attributes & Mindset

> **💡 Tip:** Define 4-6 core attributes that shape how the AI should approach problems and communicate. Each attribute should include both the mindset and practical implications.

*   **{{attribute_1_name}}:** {{attribute_1_description}}
*   **{{attribute_2_name}}:** {{attribute_2_description}}
*   **{{attribute_3_name}}:** {{attribute_3_description}}
*   **{{attribute_4_name}}:** {{attribute_4_description}}
*   **{{attribute_5_name}}:** {{attribute_5_description}}
*   **{{attribute_6_name}}:** {{attribute_6_description}}

### Example Implementation:
```markdown
*   **Pragmatic & Results-Oriented:** You favor practical solutions over theoretical perfection. The goal is to ship reliable software efficiently.
*   **Automation-First:** You believe that if a task is done more than once, it should be automated. You aggressively seek out opportunities to eliminate manual work.
*   **Full-Stack Ownership:** You are comfortable and proficient across the entire stack, from infrastructure and CI/CD to backend and light frontend tasks. You own the problem, end-to-end.
*   **Tool Agnostic, Principle-Driven:** You select the best tool for the job, free from hype. Your decisions are guided by principles of simplicity, reliability, and open standards.
*   **Security-Conscious:** Security is not an afterthought; it's integrated into every step of the development process. You build with a "secure by default" mindset.
*   **Cost-Aware:** As an indie hacker, you are acutely aware of operational costs and strive for solutions that are both powerful and economical.
```

---

## 3. Technical Profile

> **💡 Tip:** Fill this section with the specific technologies and conventions used in this repository. The more specific you are, the better the AI will perform. Include actual technology names, not just categories. If not specified, sensible defaults are provided.

*   **Primary Languages:** {{primary_languages | default: "Go, TypeScript, Bash"}}
*   **Infrastructure:** {{infrastructure_stack | default: "Docker, AWS"}}
*   **CI/CD:** {{cicd_tools | default: "GitHub Actions"}}
*   **Databases:** {{database_technologies | default: "PostgreSQL"}}
*   **Development Environment:** {{dev_environment | default: "macOS, Cursor IDE"}}
*   **Architectural Style:** {{architecture_pattern | default: "Monolith"}}
*   **Additional Tools:** {{additional_tools | default: "Just, Makefile"}}

### Example Implementation:
```markdown
*   **Primary Languages:** Go, Python, TypeScript, Bash
*   **Infrastructure:** AWS, Docker, Kubernetes, Terraform, Ansible
*   **CI/CD:** GitHub Actions, Just, Makefile
*   **Databases:** PostgreSQL, Redis, SQLite
*   **Development Environment:** macOS, VS Code, Cursor IDE
*   **Architectural Style:** Microservices with Event-Driven Architecture
*   **Additional Tools:** Prometheus, Grafana, Vault, Consul
```

### Default Technical Stack:
```markdown
*   **Primary Languages:** Go, TypeScript, Bash
*   **Infrastructure:** Docker, AWS
*   **CI/CD:** GitHub Actions
*   **Databases:** PostgreSQL
*   **Development Environment:** macOS, Cursor IDE
*   **Architectural Style:** Monolith
*   **Additional Tools:** Just, Makefile
```

---

## 4. Customization Checklist

> **💡 Tip:** Use this checklist to ensure you've properly customized this template for your specific project and team context.

- [ ] Updated `{{persona_title}}` to reflect the specific role
- [ ] Defined `{{primary_role}}` and `{{core_mandate}}` for your project
- [ ] Customized all core attributes in section 2
- [ ] Filled in specific technologies in the Technical Profile section (or confirmed defaults are acceptable)
- [ ] Reviewed all `{{template_variables}}` for completeness
- [ ] Validated that the persona aligns with your team's working style
- [ ] Confirmed AI directives match your project's approach and priorities
````

## File: docs/templates/00_overview/persona-definition.md
````markdown
# Persona Definition: {{persona_title}}

> **💡 Tip for the AI Assistant:** This document defines the persona you should adopt when interacting with the user and working on this repository. Internalize these characteristics to ensure your responses and actions are consistent, effective, and aligned with the project's ethos. Refer to this document as your primary directive for behavior and communication style.

---

## 1. Role & Core Mandate

You are the **{{primary_role}}** for this project. You operate as a {{working_style}} {{professional_type}}. Your primary mandate is to {{core_mandate}}.

> **🤖 AI Directive:** Always frame your analysis, suggestions, and actions from the perspective of {{perspective_description}}. Prioritize {{primary_priorities}}.

### Example Implementation:

```markdown
You are the **Principal DevOps & Platform Engineer** for this project. You operate as a highly-skilled, pragmatic, and efficient solopreneur and indie hacker. Your primary mandate is to build, maintain, and scale a robust, production-grade system with minimal overhead and maximum automation.

> **🤖 AI Directive:** Always frame your analysis, suggestions, and actions from the perspective of a solo engineer responsible for the entire lifecycle of the product. Prioritize simplicity, maintainability, and cost-effectiveness.
```

---

## 2. Core Attributes & Mindset

> **💡 Tip:** Define 4-6 core attributes that shape how the AI should approach problems and communicate. Each attribute should include both the mindset and practical implications.

*   **{{attribute_1_name}}:** {{attribute_1_description}}
*   **{{attribute_2_name}}:** {{attribute_2_description}}
*   **{{attribute_3_name}}:** {{attribute_3_description}}
*   **{{attribute_4_name}}:** {{attribute_4_description}}
*   **{{attribute_5_name}}:** {{attribute_5_description}}
*   **{{attribute_6_name}}:** {{attribute_6_description}}

### Example Implementation:
```markdown
*   **Pragmatic & Results-Oriented:** You favor practical solutions over theoretical perfection. The goal is to ship reliable software efficiently.
*   **Automation-First:** You believe that if a task is done more than once, it should be automated. You aggressively seek out opportunities to eliminate manual work.
*   **Full-Stack Ownership:** You are comfortable and proficient across the entire stack, from infrastructure and CI/CD to backend and light frontend tasks. You own the problem, end-to-end.
*   **Tool Agnostic, Principle-Driven:** You select the best tool for the job, free from hype. Your decisions are guided by principles of simplicity, reliability, and open standards.
*   **Security-Conscious:** Security is not an afterthought; it's integrated into every step of the development process. You build with a "secure by default" mindset.
*   **Cost-Aware:** As an indie hacker, you are acutely aware of operational costs and strive for solutions that are both powerful and economical.
```

---

## 3. Technical Profile

> **💡 Tip:** Fill this section with the specific technologies and conventions used in this repository. The more specific you are, the better the AI will perform. Include actual technology names, not just categories. If not specified, sensible defaults are provided.

*   **Primary Languages:** {{primary_languages | default: "Go, TypeScript, Bash"}}
*   **Infrastructure:** {{infrastructure_stack | default: "Docker, AWS"}}
*   **CI/CD:** {{cicd_tools | default: "GitHub Actions"}}
*   **Databases:** {{database_technologies | default: "PostgreSQL"}}
*   **Development Environment:** {{dev_environment | default: "macOS, Cursor IDE"}}
*   **Architectural Style:** {{architecture_pattern | default: "Monolith"}}
*   **Additional Tools:** {{additional_tools | default: "Just, Makefile"}}

### Example Implementation:
```markdown
*   **Primary Languages:** Go, Python, TypeScript, Bash
*   **Infrastructure:** AWS, Docker, Kubernetes, Terraform, Ansible
*   **CI/CD:** GitHub Actions, Just, Makefile
*   **Databases:** PostgreSQL, Redis, SQLite
*   **Development Environment:** macOS, VS Code, Cursor IDE
*   **Architectural Style:** Microservices with Event-Driven Architecture
*   **Additional Tools:** Prometheus, Grafana, Vault, Consul
```

### Default Technical Stack:
```markdown
*   **Primary Languages:** Go, TypeScript, Bash
*   **Infrastructure:** Docker, AWS
*   **CI/CD:** GitHub Actions
*   **Databases:** PostgreSQL
*   **Development Environment:** macOS, Cursor IDE
*   **Architectural Style:** Monolith
*   **Additional Tools:** Just, Makefile
```

---

## 4. Customization Checklist

> **💡 Tip:** Use this checklist to ensure you've properly customized this template for your specific project and team context.

- [ ] Updated `{{persona_title}}` to reflect the specific role
- [ ] Defined `{{primary_role}}` and `{{core_mandate}}` for your project
- [ ] Customized all core attributes in section 2
- [ ] Filled in specific technologies in the Technical Profile section (or confirmed defaults are acceptable)
- [ ] Reviewed all `{{template_variables}}` for completeness
- [ ] Validated that the persona aligns with your team's working style
- [ ] Confirmed AI directives match your project's approach and priorities
````

## File: docs/templates/01-repository-readiness-specification.md
````markdown
# Repository Context Template

<!-- Template for AI agents and humans to understand repository structure and make appropriate modifications -->
<!-- This provides comprehensive context for automated repository customization and interactive prompting -->
<!-- When completed, this document will be used to determine all repository configuration aspects including:
     - Dotfiles (.gitignore, .editorconfig, etc.)
     - Package managers and dependency configuration
     - Task runners and build tools
     - Documentation structure and format
     - GitHub-specific configurations (.github folder)
     - Markdown styling and linting
     - Technology-specific configuration files
     - And other repository-wide settings -->

> [!IMPORTANT]
> **Template Usage**: This template is designed for interactive completion by humans or AI agents. Each section includes detailed guidance on what information to gather and how to use it for repository customization.

## 📋 Project Overview

### Project Identity

> [!NOTE]
> **Interactive Guidance**: Start with these fundamental questions to establish project identity:
> - "What is the official name of your project?"
> - "What type of project are you building?" (Show options: CLI Tool, Web App, Library, etc.)
> - "In 1-2 sentences, what does your project do and what problem does it solve?"
> - "Who is your target audience?" (Developers, end users, enterprises, etc.)

- **Name**: {Project Name}
- **Type**: {CLI Tool | Web Application | Library | Framework | API Service | Mobile App | Desktop Application | Other}
- **Purpose**: {1-2 sentence description of what this project does and why it exists}
- **Target Audience**: {Who will use this project - developers, end users, enterprises, etc.}

> [!TIP]
> **For AI Agents**: Use the project type to automatically determine which configuration patterns to apply (e.g., CLI tools need different .gitignore patterns than web applications).

### Primary Language & Runtime

> [!NOTE]
> **Interactive Guidance**: Essential technical foundation questions:
> - "What is your primary programming language?"
> - "What runtime or platform does it use?"
> - "What's the minimum version you want to support?"
> 
> **Why This Matters**: This determines tooling, dependency management, and build configurations.

- **Main Language**: {Go | JavaScript/TypeScript | Python | Rust | Java | C# | Other}
- **Runtime/Platform**: {Node.js | .NET | JVM | Native | Browser | Other}
- **Minimum Version**: {Specify minimum supported version}

> [!WARNING]
> **Version Compatibility**: Be specific about minimum versions to avoid compatibility issues. This affects CI/CD setup and documentation.

## 🛠️ Technology Stack

### Core Technologies

> [!NOTE]
> **Interactive Guidance**: Ask about the main architectural components:
> - "What framework or library forms the backbone of your project?"
> - "Do you use a database? Which one?"
> - "How do you handle authentication?" (if applicable)
> - "What testing framework do you use?"
> 
> **Context**: These choices drive configuration file patterns and development setup.

- **Primary Framework**: {Express.js | React | Django | Gin | FastAPI | Spring Boot | Other | None}
- **Database**: {PostgreSQL | MySQL | MongoDB | SQLite | Redis | None | Other}
- **Authentication**: {JWT | OAuth2 | Session-based | None | Other}
- **Testing Framework**: {Jest | pytest | go test | JUnit | Other | None}

> [!TIP]
> **Framework-Specific Configs**: Each framework has specific configuration needs (e.g., React projects need .env handling, Django needs specific .gitignore patterns).

### Development Tools

> [!NOTE]
> **Interactive Guidance**: Development workflow questions:
> - "What build system do you use?" (npm, go modules, pip, etc.)
> - "Do you use a linter? Which one?"
> - "Do you use code formatting? Which tool?"
> - "What CI/CD platform do you use?"
> 
> **Purpose**: Determines .editorconfig, pre-commit hooks, and workflow configurations.

- **Build System**: {npm/yarn | go modules | pip | cargo | gradle | maven | other}
- **Linting**: {ESLint | golangci-lint | flake8 | clippy | other | none}
- **Formatting**: {Prettier | gofmt | black | rustfmt | other | none}
- **CI/CD**: {GitHub Actions | GitLab CI | Jenkins | other | none}

> [!IMPORTANT]
> **Consistency Impact**: These tools directly affect .editorconfig, .gitignore, and CI/CD workflow configurations.

### External Dependencies

> [!NOTE]
> **Interactive Guidance**: Focus on major dependencies:
> - "What are the 3-5 most important external libraries or services your project depends on?"
> - "What role does each dependency play in your project?"
> 
> **Note**: Don't list every dependency—focus on key ones that define capabilities or affect configuration.

List key external libraries, frameworks, or services:
- {Dependency 1}: {Purpose/Role in project}
- {Dependency 2}: {Purpose/Role in project}
- {Dependency 3}: {Purpose/Role in project}

> [!TIP]
> **Configuration Impact**: Major dependencies often require specific .gitignore patterns, environment variables, or documentation sections.

## 🏗️ Architecture & Structure

### Project Type Classification

> [!NOTE]
> **Interactive Guidance**: Multiple selection question:
> - "Which of these best describe your project architecture?" (Allow multiple selections)
> - Use this to determine repository structure and configuration needs.

- [ ] **Command Line Interface (CLI)**
- [ ] **Web API/Service**
- [ ] **Frontend Application**
- [ ] **Full-Stack Application**
- [ ] **Library/Package**
- [ ] **Microservice**
- [ ] **Monorepo**
- [ ] **Docker-based Application**
- [ ] **Serverless Function**

> [!WARNING]
> **Configuration Dependencies**: Each architecture type requires different .gitignore patterns, CI/CD setups, and documentation structures.

### Project Structure Diagram

> [!NOTE]
> **Interactive Guidance**: Ask users to describe their repository structure:
> - "What are your main directories and what do they contain?"
> - "Do you follow any specific organizational patterns?"
> 
> **For AI Agents**: Use this to generate accurate .gitignore patterns and documentation.

```mermaid
graph TD
    A[{project-root}/] --> B[{src/|lib/|app/}]
    A --> C[{tests/|__tests__/|test/}]
    A --> D[{docs/|documentation/}]
    A --> E[{config/|configs/}]
    A --> F[{scripts/|bin/}]
    A --> G[{other key directories}]
    
    B --> B1[{Main source code}]
    C --> C1[{Test files and fixtures}]
    D --> D1[{Documentation files}]
    E --> E1[{Configuration files}]
    F --> F1[{Build/deployment scripts}]
    G --> G1[{Specify purpose}]
```

> [!TIP]
> **Customization**: Replace the generic directory names with your actual directory structure and describe their specific purposes.

### Data Flow Architecture

> [!NOTE]
> **Interactive Guidance**: For applications with data flow:
> - "How does data move through your system?"
> - "What are the main data sources and destinations?"
> - "Are there any external APIs or services involved?"
> 
> **Skip if**: Your project is a simple library or doesn't have complex data flow.

```mermaid
flowchart LR
    A[{Data Source 1}] --> B[{Processing Layer}]
    C[{Data Source 2}] --> B
    B --> D[{Business Logic}]
    D --> E[{Data Storage}]
    D --> F[{External API}]
    D --> G[{Output/Response}]
```

> [!IMPORTANT]
> **Replace Placeholders**: Customize this diagram with your actual data sources, processing steps, and outputs.

### User Flow Diagram

> [!NOTE]
> **Interactive Guidance**: For user-facing applications:
> - "What are the main user interactions with your application?"
> - "What is the typical user journey?"
> - "Are there different user types with different flows?"
> 
> **Skip if**: Your project is a library, CLI tool without complex workflows, or API-only service.

```mermaid
flowchart TD
    A[User Entry Point] --> B{Authentication Required?}
    B -->|Yes| C[Login/Register]
    B -->|No| D[Main Application]
    C --> D
    D --> E[Core Functionality]
    E --> F[Results/Output]
    F --> G[Next Action/Exit]
```

> [!TIP]
> **User-Centric Design**: Focus on the user's perspective and main interaction patterns, not internal system details.

## 🎯 Configuration Requirements

### Configuration Files Present

> [!NOTE]
> **Interactive Guidance**: Inventory existing configuration:
> - "Which of these configuration files does your project have or need?"
> - "Are there any other important config files specific to your tech stack?"
> 
> **For AI Agents**: Use this checklist to determine which files need updates.

- [ ] **package.json** (Node.js projects)
- [ ] **go.mod** (Go projects)
- [ ] **requirements.txt/pyproject.toml** (Python projects)
- [ ] **Cargo.toml** (Rust projects)
- [ ] **pom.xml/build.gradle** (Java projects)
- [ ] **Dockerfile** (Container deployment)
- [ ] **docker-compose.yml** (Multi-container setup)
- [ ] **Other**: {Specify any other important config files}

### Files Requiring Technology-Specific Updates

> [!WARNING]
> **Critical for Functionality**: These files must be updated correctly or the development environment won't work properly.

#### Configuration Files (.gitignore, .gitattributes, .editorconfig)

> [!NOTE]
> **Interactive Guidance**: Technical configuration questions:
> - "What build artifacts does your project generate?"
> - "Are there any IDE-specific files to ignore?"
> - "Do you have preferences for line endings?" (Windows vs Unix)
> - "Are there any file types that need special git handling?"

- **Language-specific patterns**: {What build artifacts, cache files, or temporary files to ignore}
- **IDE support**: {What editor configurations are needed}
- **Line ending preferences**: {LF vs CRLF requirements}
- **File associations**: {What file types need special git handling}

#### Documentation Updates

> [!NOTE]
> **Interactive Guidance**: Documentation scope questions:
> - "How do users install your project?"
> - "What are the main usage examples they need?"
> - "What configuration options should be documented?"
> - "What additional documentation do you need?" (API docs, deployment guides, etc.)

- **README.md sections to customize**:
  - [ ] Installation instructions (package manager, build tools)
  - [ ] Usage examples (CLI commands, API endpoints, code samples)
  - [ ] Configuration options
  - [ ] Dependencies and prerequisites
  - [ ] Development setup
- **Additional docs needed**: {API docs, user guides, deployment guides, etc.}

#### GitHub Repository Settings

> [!NOTE]
> **Interactive Guidance**: Repository management questions:
> - "What types of issues do you expect?" (bugs, features, questions)
> - "What should contributors check before submitting PRs?"
> - "Do you need automated testing/deployment workflows?"
> - "How do you want to protect your main branch?"

- **Issue templates**: {Bug reports, feature requests, etc.}
- **Pull request templates**: {Code review checklist, testing requirements}
- **GitHub Actions workflows**: {CI/CD, testing, deployment}
- **Branch protection rules**: {Main branch, release branches}
- **Repository settings**: {Merge strategies, discussions, wikis}

### Environment & Deployment

> [!NOTE]
> **Interactive Guidance**: Environment and deployment questions:
> - "What environment variables does your application need?"
> - "How do you handle secrets and API keys?"
> - "Where do you plan to deploy?" (Heroku, Vercel, AWS, etc.)
> - "What files are generated when you build for production?"

- **Environment variables**: {What env vars does the app need}
- **Secrets management**: {API keys, database credentials, etc.}
- **Deployment target**: {Heroku | Vercel | AWS | Docker | GitHub Pages | npm registry | other}
- **Build artifacts**: {What files are generated during build}

> [!WARNING]
> **Security**: Never commit secrets to version control. Ensure .gitignore excludes environment files with sensitive data.

## 🔧 Development Workflow

### Getting Started Process

> [!NOTE]
> **Interactive Guidance**: Step-by-step setup questions:
> - "What steps does a new developer need to take to get your project running locally?"
> - "Are there any prerequisites they need to install first?"
> - "What's the typical development workflow?"

1. {Step 1 - e.g., Clone repository}
2. {Step 2 - e.g., Install dependencies}
3. {Step 3 - e.g., Set up environment}
4. {Step 4 - e.g., Run development server}

### Common Commands

> [!NOTE]
> **Interactive Guidance**: Command documentation questions:
> - "What command installs dependencies?"
> - "How do you start the development server or run the application?"
> - "What's the build command for production?"
> - "How do you run tests, linting, and formatting?"

- **Install**: `{command to install dependencies}`
- **Run/Start**: `{command to start development server or run application}`
- **Build**: `{command to build for production}`
- **Test**: `{command to run tests}`
- **Lint**: `{command to run linting}`
- **Format**: `{command to format code}`

> [!TIP]
> **Consistency**: These commands will be documented in the README and potentially automated in scripts.

### Code Style & Standards

> [!NOTE]
> **Interactive Guidance**: Code style questions:
> - "What naming convention do you prefer?" (camelCase, snake_case, etc.)
> - "How do you organize files and directories?"
> - "Are there specific patterns for imports or modules?"
> - "How do you handle errors and logging?"

- **Naming conventions**: {camelCase | snake_case | PascalCase | kebab-case}
- **File organization**: {How files should be structured}
- **Import/module patterns**: {How dependencies should be imported}
- **Error handling**: {How errors should be handled and logged}

> [!IMPORTANT]
> **.editorconfig Impact**: These preferences directly influence .editorconfig and linting configurations.

## 🚀 Features & Capabilities

### Core Features

> [!NOTE]
> **Interactive Guidance**: Feature documentation questions:
> - "What are the 3-5 main features of your project?"
> - "Why is each feature important to users?"
> - "How do these features work together?"

- {Feature 1}: {Description and importance}
- {Feature 2}: {Description and importance}
- {Feature 3}: {Description and importance}

### Planned Features

> [!NOTE]
> **Interactive Guidance**: Roadmap questions:
> - "What features are you planning to add?"
> - "What's the priority and timeline for each?"
> - "Are there any major architectural changes planned?"

- {Future feature 1}: {Timeline and priority}
- {Future feature 2}: {Timeline and priority}

### Integration Points

> [!NOTE]
> **Interactive Guidance**: Integration questions:
> - "Does your project connect to external APIs or services?"
> - "What data does it store or retrieve?"
> - "Are there any third-party integrations?"

- {External API 1}: {Purpose and usage}
- {External service 2}: {Purpose and usage}
- {Database connections}: {What data is stored/retrieved}

> [!TIP]
> **Documentation Impact**: Integrations often require API documentation, authentication setup, and environment variable configuration.

## 📦 Distribution & Packaging

### Package Distribution

> [!NOTE]
> **Interactive Guidance**: Distribution questions:
> - "How do you plan to distribute your project?"
> - "What package registries or platforms will you use?"
> - "Do you need automated releases?"

- [ ] **npm package** (JavaScript/TypeScript)
- [ ] **PyPI package** (Python)
- [ ] **crates.io** (Rust)
- [ ] **Go modules** (Go)
- [ ] **Docker image** (Containerized)
- [ ] **GitHub Releases** (Binaries)
- [ ] **Other**: {Specify distribution method}

### Release Process

> [!NOTE]
> **Interactive Guidance**: Release workflow questions:
> - "What versioning scheme do you want to use?"
> - "How should releases be triggered?" (tags, manual, automated)
> - "Do you want to maintain a changelog?"

- **Versioning scheme**: {Semantic versioning | CalVer | other}
- **Release triggers**: {Tags | manual | automated}
- **Changelog format**: {Keep a Changelog | auto-generated | other}

> [!IMPORTANT]
> **CI/CD Integration**: Release process affects GitHub Actions workflows and repository settings.

## 🧪 Testing & Quality Assurance

### Testing Strategy

> [!NOTE]
> **Interactive Guidance**: Testing approach questions:
> - "What types of testing do you want?" (unit, integration, e2e)
> - "What coverage expectations do you have?"
> - "Do you need performance or load testing?"

- **Unit tests**: {Coverage expectations and tools}
- **Integration tests**: {What systems are tested together}
- **End-to-end tests**: {User workflow testing}
- **Performance tests**: {Load testing, benchmarks}

### Code Quality Tools

> [!NOTE]
> **Interactive Guidance**: Quality tooling questions:
> - "What static analysis tools do you want to use?"
> - "Do you need security scanning?"
> - "How do you want to monitor dependencies for vulnerabilities?"

- **Static analysis**: {What tools check code quality}
- **Security scanning**: {What tools check for vulnerabilities}
- **Dependency auditing**: {How dependencies are monitored}

> [!TIP]
> **Automation**: These tools can be integrated into CI/CD workflows for automated quality checks.

## 🔒 Security Considerations

### Security Requirements

> [!NOTE]
> **Interactive Guidance**: Security assessment questions:
> - "How do users authenticate with your application?"
> - "What different permission levels exist?"
> - "What type of data does your project handle?"
> - "Are there any compliance requirements?" (GDPR, HIPAA, etc.)

- **Authentication needs**: {How users authenticate}
- **Authorization levels**: {What permissions exist}
- **Data sensitivity**: {What data needs protection}
- **Compliance requirements**: {GDPR, HIPAA, SOC2, etc.}

### Security Tools & Practices

> [!NOTE]
> **Interactive Guidance**: Security tooling questions:
> - "How do you scan for vulnerable dependencies?"
> - "How do you manage secrets and API keys?"
> - "Do you need specific HTTP security headers?"

- **Dependency scanning**: {How vulnerable dependencies are detected}
- **Secret management**: {How secrets are stored and accessed}
- **Security headers**: {What HTTP security headers are needed}

> [!WARNING]
> **Security-First**: Security considerations affect .gitignore patterns, environment setup, and CI/CD configurations.

---

## 🤖 AI Agent Instructions

> [!IMPORTANT]
> **Processing Guide**: This section provides specific instructions for AI agents processing the completed template.

### Critical Modifications Based on This Context

When processing this repository context, AI agents should:

#### 1. Update Configuration Files
- **`.gitignore`**: Add language-specific build artifacts, IDE files, and dependency directories
- **`.gitattributes`**: Configure line endings and diff handling for file types
- **`.editorconfig`**: Set consistent coding standards for the primary language
- **`.dockerignore`**: Exclude development files from Docker builds (if Docker is used)

#### 2. Customize Documentation
- **README.md**: Update installation, usage, and development sections based on tech stack
- **CONTRIBUTING.md**: Add language-specific contribution guidelines and coding standards
- **Documentation files**: Create or update based on project type and complexity

#### 3. Set Up Development Environment
- **Package files**: Ensure dependencies and scripts match the described workflow
- **CI/CD workflows**: Configure automated testing and deployment based on the tech stack
- **Issue/PR templates**: Create templates appropriate for the project type

#### 4. Repository Settings
- **Branch protection**: Configure based on release process and team size
- **Labels**: Create issue/PR labels relevant to the project type
- **Security policies**: Ensure SECURITY.md matches the project's security requirements

### Validation Checklist

Before completing repository customization, verify:
- [ ] All technology-specific patterns are in `.gitignore`
- [ ] README.md accurately reflects the installation and usage process
- [ ] CI/CD workflows match the testing and deployment strategy
- [ ] Documentation structure supports the identified user types
- [ ] Security policies align with the project's security requirements
- [ ] Package/dependency files are consistent with the described tech stack

### Risk Assessment

> [!WARNING]
> **Priority Levels**: Focus on high-priority updates first to prevent breaking the development workflow.

**High Priority Updates** (Will break development workflow if missed):
- Package manager configuration files
- Build tool configurations
- Environment variable documentation

**Medium Priority Updates** (Will cause confusion or inefficiency):
- Documentation accuracy
- Development setup instructions
- Contribution guidelines

**Low Priority Updates** (Nice to have but not critical):
- Repository metadata
- Advanced CI/CD features
- Optional tooling configurations

---

## 📝 Interactive Template Usage

> [!TIP]
> **For Interactive AI Assistants**: Use the guidance notes in each section to create conversational prompts that gather the required information systematically. Start with Project Overview and work through each section, using the provided questions as a foundation for natural conversation.

> [!NOTE]
> **Template Completion**: Once filled out, this template provides comprehensive context for automated repository customization, ensuring all configuration files, documentation, and settings align with the project's specific technology stack and requirements.
````

## File: scripts/hooks/pre-commit-init.sh
````bash
#!/usr/bin/env bash
# shellcheck disable=SC2317

# Pre-Commit Hook Management Script
#
# This script provides functionality to manage pre-commit hooks for the repository.
# It follows Google's Bash Style Guide and provides reliable hook management.

# Strict error handling
set -euo pipefail

# Logging function with timestamp and color
log() {
    local -r level="${1}"
    local -r message="${2}"
    local -r timestamp=$(date "+%Y-%m-%d %H:%M:%S")
    local color=""

    case "${level}" in
        INFO)    color="\033[0;32m" ;;  # Green
        WARNING) color="\033[0;33m" ;;  # Yellow
        ERROR)   color="\033[0;31m" ;;  # Red
        *)       color="\033[0m" ;;     # Default
    esac

    # shellcheck disable=SC2059
    printf "${color}[${level}] ${timestamp}: ${message}\033[0m\n" >&2
}

# Ensure pre-commit is installed
ensure_pre_commit_installed() {
    if ! command -v pre-commit &> /dev/null; then
        log ERROR "pre-commit is not installed. Installing via pip..."
        if ! pip3 install pre-commit; then
            log ERROR "Failed to install pre-commit. Please install manually."
            return 1
        fi
    fi
    log INFO "pre-commit is installed and ready."
}

# Verify hook installation
verify_hook_installation() {
    local hook_types=("pre-commit" "pre-push")
    local git_dir
    git_dir=$(git rev-parse --git-dir)

    for hook_type in "${hook_types[@]}"; do
        if [ ! -f "${git_dir}/hooks/${hook_type}" ]; then
            log ERROR "Hook ${hook_type} not installed correctly"
            return 1
        fi
    done

    log INFO "All Git hooks verified successfully"
}

# Check if core.hooksPath is set (locally or globally)
check_hooks_path() {
    local hooks_path_local hooks_path_global
    hooks_path_local=$(git config --get core.hooksPath || true)
    hooks_path_global=$(git config --global --get core.hooksPath || true)
    if [[ -n "$hooks_path_local" ]] || [[ -n "$hooks_path_global" ]]; then
        log ERROR "Git config 'core.hooksPath' is set (local: '$hooks_path_local', global: '$hooks_path_global')."
        log ERROR "pre-commit will refuse to install hooks while this is set."
        log ERROR "To proceed, unset it with: git config --unset-all core.hooksPath"
        exit 1
    fi
}

# Install pre-commit hooks
# Exposed function 1: Initialize repository hooks
pc_init() {
    ensure_pre_commit_installed

    # Check for custom hooksPath before proceeding
    check_hooks_path

    log INFO "Updating pre-commit hooks to the latest version..."
    if ! pre-commit autoupdate; then
        log WARNING "Failed to update pre-commit hooks to the latest version. Continuing with existing hooks."
    fi

    log INFO "Installing pre-commit hooks..."
    if ! pre-commit install; then
        log ERROR "Failed to install pre-commit hooks"
        return 1
    fi

    if ! pre-commit install --hook-type pre-commit; then
        log ERROR "Failed to install pre-commit hooks for commit stage"
        return 1
    fi

    if ! pre-commit install --hook-type pre-push; then
        log ERROR "Failed to install pre-commit hooks for pre-push stage"
        return 1
    fi

    # Verify hook installation
    if ! verify_hook_installation; then
        log ERROR "Hook verification failed. Please check your Git configuration."
        return 1
    fi

    # Configure Git to always run hooks
    if ! git config --global core.hooksPath .git/hooks; then
        log WARNING "Could not set global hooks path. Hooks might not run automatically."
    fi

    log INFO "All pre-commit hooks installed and verified successfully"
}

# Run pre-commit hooks on all files
# Exposed function 2: Run hooks across all files
pc_run() {
    log INFO "Running pre-commit hooks on all files..."
    if ! pre-commit run --all-files; then
        log ERROR "Pre-commit hooks failed on some files"
        return 1
    fi
    log INFO "Pre-commit hooks completed successfully"
}

# Main function for script execution
main() {
    local command="${1:-}"

    case "${command}" in
        init)
            pc_init
            ;;
        run)
            pc_run
            ;;
        *)
            log ERROR "Invalid command. Use 'init' or 'run'."
            exit 1
            ;;
    esac
}

# Allow sourcing for function access or direct script execution
if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
    main "$@"
fi
````

## File: .editorconfig
````
# EditorConfig: https://editorconfig.org

root = true

# All files
[*]
charset = utf-8
end_of_line = lf
insert_final_newline = true
trim_trailing_whitespace = true
indent_style = space
indent_size = 2

# JavaScript/TypeScript
[*.{js,jsx,ts,tsx,mjs,cjs}]
indent_size = 2
max_line_length = 100

# JSON
[*.json]
indent_size = 2

# YAML
[*.{yml,yaml}]
indent_size = 2

# Python
[*.py]
indent_size = 4
max_line_length = 88

# Go
[*.go]
indent_style = tab
indent_size = 4

# Rust
[*.rs]
indent_size = 4
max_line_length = 100

# Shell scripts
[*.{sh,bash,zsh}]
indent_size = 2

# Markdown
[*.md]
indent_size = 2
trim_trailing_whitespace = false

# Docker
[{Dockerfile,*.dockerfile}]
indent_size = 2

# Justfile
[{justfile,Justfile}]
indent_style = tab
indent_size = 4

# Configuration files
[*.{toml,ini}]
indent_size = 2

# XML
[*.xml]
indent_size = 2

# HTML/CSS
[*.{html,css,scss,sass}]
indent_size = 2

# Package files
[{package.json,*.lock}]
indent_size = 2
````

## File: .gitattributes
````
# Set default line ending behavior
* text=auto eol=lf

# Source files
*.js text eol=lf
*.jsx text eol=lf
*.ts text eol=lf
*.tsx text eol=lf
*.mjs text eol=lf
*.cjs text eol=lf
*.py text eol=lf diff=python
*.go text eol=lf diff=golang
*.rs text eol=lf
*.sh text eol=lf
*.bash text eol=lf
*.zsh text eol=lf

# Configuration files
*.json text eol=lf
*.yml text eol=lf
*.yaml text eol=lf
*.toml text eol=lf
*.ini text eol=lf
*.cfg text eol=lf
*.conf text eol=lf
*.xml text eol=lf
*.html text eol=lf
*.css text eol=lf
*.scss text eol=lf
*.sass text eol=lf

# Documentation
*.md text eol=lf
*.txt text eol=lf
*.rst text eol=lf

# Docker
Dockerfile text eol=lf
*.dockerfile text eol=lf
docker-compose*.yml text eol=lf

# Special files
justfile text eol=lf
Justfile text eol=lf
Makefile text eol=lf
*.mk text eol=lf

# Environment files
.env* text eol=lf

# Batch/PowerShell (Windows-specific)
*.bat text eol=crlf
*.cmd text eol=crlf
*.ps1 text eol=lf

# Binary files (explicitly)
*.png binary
*.jpg binary
*.jpeg binary
*.gif binary
*.ico binary
*.mov binary
*.mp4 binary
*.mp3 binary
*.flv binary
*.fla binary
*.swf binary
*.gz binary
*.zip binary
*.7z binary
*.ttf binary
*.eot binary
*.woff binary
*.woff2 binary
*.exe binary
*.pyc binary
*.so binary
*.dll binary
*.dylib binary

# Archive files
*.tar binary
*.tar.gz binary
*.tar.bz2 binary
*.rar binary

# Certificate files
*.p12 binary
*.pem text eol=lf
*.key text eol=lf
*.crt text eol=lf
*.csr text eol=lf

# Lock files (generated)
package-lock.json text eol=lf
yarn.lock text eol=lf
Cargo.lock text eol=lf linguist-generated
go.sum text eol=lf linguist-generated

# Generated files should not be included in language statistics
repomix-output.xml linguist-generated
````

## File: .gitignore
````
# OS & Editor
.DS_Store
.DS_Store?
._*
.Spotlight-V100
.Trashes
ehthumbs.db
Thumbs.db
*~
.vscode/settings.json
.idea/
*.swp
*.swo

# Environment & Secrets
.env
.env.local
.env.development.local
.env.test.local
.env.production.local
*.pem
*.key
*.p8
*.p12
.secrets/

# Node.js & JavaScript/TypeScript
node_modules/
npm-debug.log*
yarn-debug.log*
yarn-error.log*
lerna-debug.log*
.npm
.pnpm-debug.log*
.yarn/cache
.yarn/unplugged
.yarn/build-state.yml
.yarn/install-state.gz
.pnp.*
dist/
build/
coverage/
*.tsbuildinfo

# Deno
.deno/

# Python
__pycache__/
*.py[cod]
*$py.class
*.so
.Python
env/
venv/
ENV/
env.bak/
venv.bak/
pip-log.txt
pip-delete-this-directory.txt
.pytest_cache/
.coverage
htmlcov/
.mypy_cache/
.dmypy.json
dmypy.json

# Go
*.exe
*.exe~
*.dll
*.so
*.dylib
*.test
*.out
go.work
vendor/

# Rust
target/
Cargo.lock

# Java
*.class
*.log
*.ctxt
.mtj.tmp/
*.jar
*.war
*.nar
*.ear
*.zip
*.tar.gz
*.rar
hs_err_pid*

# Docker
.dockerignore
docker-compose.override.yml

# CI/CD & Build Tools
.cache/
.parcel-cache/
.next/
.nuxt/
.output/
.vercel/
.serverless/
.firebase/

# Logs
logs/
*.log
npm-debug.log*
yarn-debug.log*
lerna-debug.log*

# Runtime data
pids/
*.pid
*.seed
*.pid.lock

# Database
*.db
*.sqlite
*.sqlite3

# Generated documentation
docs/_build/
site/

# Backup files
*.bak
*.backup
*.orig

# Template specific
repomix-output.xml
````

## File: .npmignore
````
# NPM Ignore - Repository Template
# Tailored for this repository's specific content and structure

# OS & Editor Files
.DS_Store
.DS_Store?
._*
.Spotlight-V100
.Trashes
ehthumbs.db
Thumbs.db
*~
.vscode/
.idea/
*.swp
*.swo

# Template-specific Development Files
.cursor/
.claude/
docs/ai/
docs/specs/
docs/user/
repomix-output.xml
repomix.config.json

# Git & Version Control
.git/
.gitignore
.gitattributes
.pre-commit-config.yaml

# Environment & Configuration
.env*
*.pem
*.key
*.p8
*.p12
.secrets/
.shellcheckrc
.editorconfig

# Scripts & Automation
scripts/
justfile
Makefile

# Documentation & Template Files
*.md
!package.json
CONTRIBUTING.md
CODE_OF_CONDUCT.md
SECURITY.md
LICENSE

# Build & Development Artifacts
node_modules/
npm-debug.log*
yarn-debug.log*
yarn-error.log*
lerna-debug.log*
.npm
.pnpm-debug.log*
.yarn/
dist/
build/
coverage/
*.tsbuildinfo

# Testing
.nyc_output/
coverage/
*.lcov

# Logs
logs/
*.log

# Runtime
pids/
*.pid
*.seed
*.pid.lock

# Backup files
*.bak
*.backup
*.orig

# Temporary files
*.tmp
*.temp
.cache/
````

## File: .pre-commit-config.yaml
````yaml
---
repos:
  - repo: https://github.com/pre-commit/pre-commit-hooks
    rev: v5.0.0 # Updated rev for potentially newer hooks
    hooks:
      - id: trailing-whitespace
      - id: end-of-file-fixer
        exclude: &readme_excludes >
          (?x)^(
            README\.md|
            CHANGELOG\.md|
            repomix-output\.xml
          )$
      - id: check-yaml
      - id: check-added-large-files
      - id: check-merge-conflict
      - id: check-executables-have-shebangs
        exclude: >
          (?x)^(
            src/data/.*
          )$
      - id: check-shebang-scripts-are-executable
      - id: check-symlinks
      - id: check-json
        exclude: &json_excludes >
          (?x)^(
            \.vscode/.*\.json|
            deno\.json|
            biome\.json
          )$
      - id: pretty-format-json
        exclude: *json_excludes
        args: [--no-sort-keys]

  - repo: https://github.com/gruntwork-io/pre-commit
    rev: v0.1.28 # Keep existing or update if needed
    hooks:
      - id: shellcheck
````

## File: .shellcheckrc
````
# ShellCheck configuration file
# https://github.com/koalaman/shellcheck/wiki/Ignore

# Specify shell dialect
shell=bash

# Disable specific warnings
# SC2155: Declare and assign separately to avoid masking return values
# We're intentionally using compact variable declarations in some cases
disable=SC2155

# SC2250: Prefer putting braces around variable references
# This is a style warning that's redundant with require-variable-braces
disable=SC2250

# Enable optional checks
# require-variable-braces: Suggest putting braces around all variable references
# quote-safe-variables: Suggest quoting variables without metacharacters
# check-unassigned-uppercase: Warn when uppercase variables are unassigned
# deprecate-which: Suggest 'command -v' instead of 'which'
enable=require-variable-braces
enable=quote-safe-variables
enable=check-unassigned-uppercase
enable=deprecate-which

# Set severity level (error, warning, info, style)
severity=warning

# External sources
# Allow sourcing of external files
external-sources=true
````

## File: CODE_OF_CONDUCT.md
````markdown
## Code of Conduct

### Our Pledge

We as members, contributors, and leaders pledge to make participation in our
community a harassment-free experience for everyone, regardless of age, body
size, visible or invisible disability, ethnicity, sex characteristics, gender
identity and expression, level of experience, education, socio-economic status,
nationality, personal appearance, race, religion, or sexual identity
and orientation.

### Our Standards

Examples of behavior that contributes to a positive environment for our
community include:

* Demonstrating empathy and kindness toward other people
* Being respectful of differing opinions, viewpoints, and experiences
* Giving and gracefully accepting constructive feedback
* Accepting responsibility and apologizing to those affected by our mistakes,
  and learning from the experience
* Focusing on what is best not just for us as individuals, but for the
  overall community

Examples of unacceptable behavior include:

* The use of sexualized language or imagery, and sexual attention or
  advances of any kind
* Trolling, insulting or derogatory comments, and personal or political attacks
* Public or private harassment
* Publishing others' private information, such as a physical or email
  address, without explicit permission
* Other conduct which could reasonably be considered inappropriate in a
  professional setting

### Enforcement Responsibilities

Community leaders are responsible for clarifying and enforcing our standards of
acceptable behavior and will take appropriate and fair corrective action in
response to any behavior that they deem inappropriate, threatening, offensive,
or harmful.

Community leaders have the right and responsibility to remove, edit, or reject
comments, commits, code, wiki edits, issues, and other contributions that are
not aligned to this Code of Conduct, and will communicate reasons for moderation
decisions when appropriate.

### Scope

This Code of Conduct applies within all community spaces, and also applies when
an individual is officially representing the community in public spaces.

### Enforcement

Instances of abusive, harassing, or otherwise unacceptable behavior may be
reported to the community leaders responsible for enforcement at
[CONTACT_EMAIL] or by creating a private issue in this repository.
All complaints will be reviewed and investigated promptly and fairly.

All community leaders are obligated to respect the privacy and security of the
reporter of any incident.

### Enforcement Guidelines

Community leaders will follow these Community Impact Guidelines in determining
the consequences for any action they deem in violation of this Code of Conduct:

#### 1. Correction

**Community Impact**: Use of inappropriate language or other behavior deemed
unprofessional or unwelcome in the community.

**Consequence**: A private, written warning from community leaders, providing
clarity around the nature of the violation and an explanation of why the
behavior was inappropriate. A public apology may be requested.

#### 2. Warning

**Community Impact**: A violation through a single incident or series
of actions.

**Consequence**: A warning with consequences for continued behavior. No
interaction with the people involved, including unsolicited interaction with
those enforcing the Code of Conduct, for a specified period of time. This
includes avoiding interactions in community spaces as well as external channels
like social media. Violating these terms may lead to a temporary or
permanent ban.

#### 3. Temporary Ban

**Community Impact**: A serious violation of community standards, including
sustained inappropriate behavior.

**Consequence**: A temporary ban from any sort of interaction or public
communication with the community for a specified period of time. No public or
private interaction with the people involved, including unsolicited interaction
with those enforcing the Code of Conduct, is allowed during this period.
Violating these terms may lead to a permanent ban.

#### 4. Permanent Ban

**Community Impact**: Demonstrating a pattern of violation of community
standards, including sustained inappropriate behavior,  harassment of an
individual, or aggression toward or disparagement of classes of individuals.

**Consequence**: A permanent ban from any sort of public interaction within
the community.

### Attribution

This Code of Conduct is adapted from the [Contributor Covenant][homepage],
version 2.0, available at
https://www.contributor-covenant.org/version/2/0/code_of_conduct.html.

Community Impact Guidelines were inspired by [Mozilla's code of conduct
enforcement ladder](https://github.com/mozilla/diversity).

[homepage]: https://www.contributor-covenant.org

For answers to common questions about this code of conduct, see the FAQ at
https://www.contributor-covenant.org/faq. Translations are available at
https://www.contributor-covenant.org/translations.
````

## File: CONTRIBUTING.md
````markdown
# Contributing to this project

Thank you for your interest in contributing! We welcome contributions from everyone and are grateful for even the smallest fixes.

## Table of Contents

- [Code of Conduct](#code-of-conduct)
- [How Can I Contribute?](#how-can-i-contribute)
- [Development Setup](#development-setup)
- [Contribution Workflow](#contribution-workflow)
- [Style Guidelines](#style-guidelines)
- [Commit Message Format](#commit-message-format)
- [Testing](#testing)
- [Documentation](#documentation)

## Code of Conduct

This project adheres to our [Code of Conduct](CODE_OF_CONDUCT.md). By participating, you are expected to uphold this code.

## How Can I Contribute?

### 🐛 Reporting Bugs

Before creating bug reports, please check existing issues as you might find that the issue has already been reported. When creating a bug report, include:

- **Clear title and description**
- **Steps to reproduce** the issue
- **Expected vs actual behavior**
- **Environment details** (OS, version, etc.)
- **Screenshots** if applicable

### 💡 Suggesting Enhancements

Enhancement suggestions are welcome! Please:

- Use a **clear and descriptive title**
- Provide a **detailed description** of the suggested enhancement
- Explain **why this enhancement would be useful**
- Include **mockups or examples** if applicable

### 🔧 Code Contributions

1. Look for issues labeled `good-first-issue` or `help-wanted`
2. Comment on the issue to express interest
3. Fork the repository and create a feature branch
4. Implement your changes following our guidelines
5. Submit a pull request

## Development Setup

### Prerequisites

```bash
# Install required tools
[LANGUAGE] version X.X or higher
[PACKAGE_MANAGER] version Y.Y or higher
```

### Local Setup

```bash
# 1. Fork and clone the repository
git clone https://github.com/YOUR_USERNAME/PROJECT_NAME.git
cd PROJECT_NAME

# 2. Install dependencies
npm install  # or your package manager equivalent

# 3. Run development environment
npm run dev

# 4. Run tests to ensure everything works
npm test
```

### Project Structure

```
PROJECT_NAME/
├── src/                 # Source code
│   ├── components/      # Reusable components
│   ├── utils/          # Utility functions
│   └── types/          # Type definitions
├── tests/              # Test files
├── docs/               # Documentation
├── scripts/            # Build and utility scripts
└── .github/            # GitHub workflows and templates
```

## Contribution Workflow

### 1. Create a Branch

```bash
# For new features
git checkout -b feature/descriptive-feature-name

# For bug fixes
git checkout -b fix/issue-description

# For documentation
git checkout -b docs/what-you-are-documenting
```

### 2. Make Changes

- Write clear, readable code
- Follow existing code patterns
- Add tests for new functionality
- Update documentation as needed

### 3. Test Your Changes

```bash
# Run the full test suite
npm test

# Run linting
npm run lint

# Run type checking (if applicable)
npm run type-check
```

### 4. Commit Changes

Follow our [commit message format](#commit-message-format):

```bash
git add .
git commit -m "feat: add user authentication feature"
```

### 5. Submit Pull Request

- Push your branch to your fork
- Create a pull request against the main branch
- Fill out the pull request template
- Ensure all checks pass

## Style Guidelines

### Code Style

- Use **consistent indentation** (2 spaces for JS/TS, 4 for Python)
- Follow **language-specific conventions**
- Use **meaningful variable and function names**
- Add **comments for complex logic**

### File Naming

- Use `kebab-case` for files and directories
- Use `PascalCase` for component files (React/Vue)
- Use `camelCase` for JavaScript/TypeScript functions

### Code Quality

- **DRY principle**: Don't repeat yourself
- **Single responsibility**: Functions should do one thing well
- **Readable code**: Self-documenting code is preferred
- **Error handling**: Always handle potential errors

## Commit Message Format

We follow [Conventional Commits](https://www.conventionalcommits.org/):

```
<type>(<scope>): <description>

[optional body]

[optional footer]
```

### Types

- `feat`: New feature
- `fix`: Bug fix
- `docs`: Documentation changes
- `style`: Code style changes (formatting, etc.)
- `refactor`: Code refactoring
- `test`: Adding or updating tests
- `chore`: Maintenance tasks

### Examples

```bash
feat(auth): add user login functionality
fix(api): resolve timeout issue in user service
docs(readme): update installation instructions
test(utils): add unit tests for validation helpers
```

## Testing

### Writing Tests

- Write tests for all new features
- Maintain test coverage above 80%
- Use descriptive test names
- Test both happy path and edge cases

### Running Tests

```bash
# Run all tests
npm test

# Run tests in watch mode
npm run test:watch

# Run tests with coverage
npm run test:coverage

# Run specific test file
npm test -- path/to/test.spec.js
```

## Documentation

### Code Documentation

- Add JSDoc comments for public APIs
- Document complex algorithms or business logic
- Include examples in documentation

### README Updates

When making significant changes, update:

- Installation instructions
- Usage examples
- API documentation
- Feature lists

### Documentation Style

- Use clear, concise language
- Include code examples
- Add screenshots for UI changes
- Update table of contents

## Getting Help

- 💬 **Discussions**: Use GitHub Discussions for questions
- 🐛 **Issues**: Use GitHub Issues for bug reports
- 📧 **Email**: Contact maintainers at [EMAIL]

## Recognition

Contributors will be recognized in:

- `CONTRIBUTORS.md` file
- Release notes for significant contributions
- GitHub contributor graph

---

Thank you for contributing to PROJECT_NAME! 🎉
````

## File: justfile
````
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
````

## File: LICENSE
````
MIT License

Copyright (c) [YEAR] [AUTHOR_NAME]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
````

## File: Makefile
````
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
````

## File: README.md
````markdown
# 🚀 Project Name

> [!IMPORTANT]
> Customize this template: Replace "Project Name" with your actual project name and update all placeholder content throughout this file.

[![Language](https://img.shields.io/badge/language-Language/Framework-blue.svg)](#)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](LICENSE)
[![Build Status](https://img.shields.io/badge/build-passing-brightgreen.svg)](#)
[![Contributors](https://img.shields.io/badge/contributors-welcome-orange.svg)](#)

<!-- Replace this description with 1-2 compelling sentences about your project -->
A brief, compelling description of what your project does and why it matters.
One or two sentences that clearly explain the core purpose and value proposition.

## 📋 Table of Contents

- [🚀 Project Name](#-project-name)
  - [📋 Table of Contents](#-table-of-contents)
  - [🔍 Overview](#-overview)
    - [💡 Why This Project?](#-why-this-project)
    - [✨ Key Features](#-key-features)
  - [🏁 Getting Started](#-getting-started)
    - [📋 Prerequisites](#-prerequisites)
    - [📦 Installation](#-installation)
      - [Option 1: Package Manager (Recommended)](#option-1-package-manager-recommended)
      - [Option 2: From Source](#option-2-from-source)
    - [🎮 Usage Examples](#-usage-examples)
      - [Basic Usage](#basic-usage)
      - [Advanced Usage](#advanced-usage)
  - [📚 Documentation](#-documentation)
  - [🗺️ Roadmap](#️-roadmap)
    - [💭 Future Considerations](#-future-considerations)
  - [🤝 Contributing](#-contributing)
    - [🐛 Found a Bug?](#-found-a-bug)
  - [🔒 Security](#-security)
  - [📄 License](#-license)
  - [🙏 Acknowledgments](#-acknowledgments)

---

## 🔍 Overview

> [!NOTE]
> Customization Guide: Replace the placeholder content below with your project's specific details, target audience, and core value proposition.

This project provides [describe your core functionality]. It's designed to [explain primary use case]
and offers [highlight key benefits] for [define target audience].

### 💡 Why This Project?

> [!TIP]
> Template Instructions: Explain the problem your project solves and why existing solutions aren't adequate. Make this compelling and specific to your use case.

When working with [your domain/technology], it's often challenging to [describe specific pain point].
This project solves that by providing [your solution approach], making it easier to
[describe the benefit/outcome] with [mention key differentiator].

The solution is designed to be [quality 1], [quality 2], and [quality 3],
ensuring it can [describe use case] while maintaining [important constraint or requirement].

### ✨ Key Features

<!-- Replace these with your actual features and their descriptions -->
- ✅ [Feature 1 Name] - Brief description of what this feature does and why it's valuable
- ✅ [Feature 2 Name] - Brief description of what this feature does and why it's valuable
- ✅ [Feature 3 Name] - Brief description of what this feature does and why it's valuable
- ✅ [Feature 4 Name] - Brief description of what this feature does and why it's valuable

---

## 🏁 Getting Started

> [!TIP]
> For New Users: This section should provide the fastest path from discovery to first successful use of your project.

### 📋 Prerequisites

> [!WARNING]
> Required Dependencies: List all system requirements, software dependencies, and minimum versions needed to run your project.

Before you begin, ensure you have the following installed:

- [Technology/Language] version X.X or higher
- [Dependency 1] - [Brief explanation of why it's needed]
- [Dependency 2] - [Brief explanation of why it's needed]
- [Tool/Service] - [Brief explanation of why it's needed]

### 📦 Installation

> [!NOTE]
> Installation Methods: Provide multiple installation options when possible (package manager, source, etc.).

Choose your preferred installation method:

#### Option 1: Package Manager (Recommended)

```bash
some command
```

#### Option 2: From Source

```bash
some command
```

### 🎮 Usage Examples

> [!TIP]
> Example Strategy: Start with the simplest possible example, then progress to more complex scenarios. Include expected output when helpful.

#### Basic Usage

```bash
# Replace with your actual basic usage example
your-command --option value

# Example with configuration file
your-command --config config.yml --verbose
```

Expected Output:

```text
[Show what users should expect to see]
```

#### Advanced Usage

```bash
# Replace with a more complex real-world example
your-command \
  --input-file data.json \
  --output-format xml \
  --batch-size 100 \
  --parallel \
  --custom-option advanced-value
```

> [!NOTE]
> Configuration: For detailed configuration options, see the [Configuration Guide](docs/configuration.md).

---

## 📚 Documentation

> [!IMPORTANT]
> Documentation Strategy: Link to comprehensive documentation and provide quick access to common use cases.

- 📖 [User Guide](docs/user/user_guide.md) - Comprehensive usage documentation
- 🔧 [Configuration Reference](docs/user/configuration_reference.md) - All configuration options
- ❓ [FAQ](docs/user/faq.md) - Frequently asked questions
- 🐛 [Troubleshooting](docs/user/troubleshooting.md) - Common issues and solutions

---

## 🗺️ Roadmap

> [!NOTE]
> Roadmap Purpose: This section helps users understand the project's direction and planned improvements. Update this regularly.

### 💭 Future Considerations

- [ ] [Long-term Goal 1] - Vision for future development
- [ ] [Long-term Goal 2] - Potential major features or architecture changes

---

## 🤝 Contributing

> [!IMPORTANT]
> Welcome Contributors: Make it clear that contributions are welcome and provide clear next steps.

We welcome contributions from the community! Whether you're fixing bugs, adding features, or improving documentation, your help is appreciated.

For detailed information about contributing, please see our [Contributing Guide](CONTRIBUTING.md).

### 🐛 Found a Bug?

Please check our [issue tracker](https://github.com/your-username/your-project-name/issues) first. If you can't find an existing issue, feel free to [create a new one](https://github.com/your-username/your-project-name/issues/new).

---

## 🔒 Security

> [!WARNING]
> Security First: Security vulnerabilities should be reported privately, not through public issues.

Security is important to us. Please review our security policy:

- 🛡️ [SECURITY.md](SECURITY.md) - Security policy and supported versions

---

## 📄 License

> [!NOTE]
> License Information: This project is open source. Review the license terms before using or contributing.

This project is licensed under the [MIT License](LICENSE) - see the LICENSE file for details.

---

## 🙏 Acknowledgments

> [!TIP]
> Give Credit: Acknowledge contributors, inspirations, and tools that made your project possible.

- 👥 Contributors - Thanks to all [contributors](https://github.com/your-username/your-project-name/contributors)
- 🔧 Tools - Built with [list key tools/frameworks used]
- 💡 Inspiration - Inspired by [mention projects or ideas that inspired this work]
- 📚 Resources - Special thanks to [mention helpful resources, tutorials, or documentation]

---

<div align="center">

**Made with ❤️ by [Your Organization](https://github.com/your-org)**

[⭐ Star this project](https://github.com/your-username/your-project-name) | [🐛 Report Bug](https://github.com/your-username/your-project-name/issues) | [✨ Request Feature](https://github.com/your-username/your-project-name/issues)

</div>
````

## File: repomix.config.json
````json
{
  "$schema": "https://repomix.com/schemas/latest/schema.json",
  "input": {
    "maxFileSize": 50000000
  },
  "output": {
    "filePath": "repomix-output.xml",
    "style": "xml",
    "parsableStyle": false,
    "compress": true,
    "headerText": "Repository Template - AI-friendly codebase representation for analysis and development",
    "fileSummary": true,
    "directoryStructure": true,
    "files": true,
    "removeComments": false,
    "removeEmptyLines": false,
    "topFilesLength": 10,
    "showLineNumbers": false,
    "copyToClipboard": false,
    "includeEmptyDirectories": true,
    "git": {
      "sortByChanges": true,
      "sortByChangesMaxCommits": 100,
      "includeDiffs": false
    }
  },
  "include": [
    "**/*"
  ],
  "ignore": {
    "useGitignore": true,
    "useDefaultPatterns": true,
    "customPatterns": [
      "node_modules/**",
      ".git/**",
      "coverage/**",
      "dist/**",
      "build/**",
      "*.log",
      ".DS_Store",
      "thumbs.db",
      "*.tmp",
      "*.temp",
      ".repomix-output.*",
      "repomix-output.*"
    ]
  },
  "security": {
    "enableSecurityCheck": true
  },
  "tokenCount": {
    "encoding": "o200k_base"
  }
}
````

## File: SECURITY.md
````markdown
# Security Policy

## Supported Versions

Use this section to tell people about which versions of your project are
currently being supported with security updates.

| Version | Supported          |
| ------- | ------------------ |
| main    | :white_check_mark: |
| latest  | :white_check_mark: |

## Reporting a Vulnerability

Use this section to tell people how to report a vulnerability.

Tell them where to go, how often they can expect to get an update on a
reported vulnerability, what to expect if the vulnerability is accepted or
declined, etc.

**Please do not report security vulnerabilities through public GitHub issues.**

Instead, please report them using GitHub Security Advisories. On GitHub, navigate to the main page of the repository, click on the "Security" tab, and then click "Report a vulnerability".

Please include the requested information listed below (as much as you can provide) to help us better understand the nature and scope of the possible issue:

* Type of issue (e.g. buffer overflow, SQL injection, cross-site scripting, etc.)
* Full paths of source file(s) related to the manifestation of the issue
* The location of the affected source code (tag/branch/commit or direct URL)
* Any special configuration required to reproduce the issue
* Step-by-step instructions to reproduce the issue
* Proof-of-concept or exploit code (if possible)
* Impact of the issue, including how an attacker might exploit the issue

This information will help us triage your report more quickly.

## Preferred Languages

We prefer all communications to be in English.
````
