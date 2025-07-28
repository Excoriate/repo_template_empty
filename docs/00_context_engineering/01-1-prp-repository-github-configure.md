---
title: "Product Requirement Prompt (PRP) - GitHub Repository Configuration"
description: "This PRP provides comprehensive GitHub repository setup and configuration management for DevOps Engineers and Repository Administrators to establish enterprise-grade repository settings through automated GitHub CLI-based configuration workflows."
version: "1.2.0"
status: "stable"
type: "product-requirement-prompt"
context: "github-repository-management"
related:
  - 00-prp-codebase-analysis.md
  - ../../guides/02_codebase_analysis/codebase-analysis-repomix.md
---

# Product Requirement Prompt (PRP) - GitHub Repository Configuration

## Context Engineering

This document is a **Product Requirement Prompt (PRP)** based on the PRP system, and it's a core component of Context Engineering, which transforms high-level feature requests into comprehensive implementation blueprints for AI assistants, with deep context and awareness about the codebase, user examples, and current technology documentation.

### Dependencies

**Prerequisite Requirements**:
- **Required PRP**: Codebase Analysis PRP (00-prp-codebase-analysis.md) must be completed with output at `docs/00_context_engineering/initial_context/00_codebase_analysis/`
- **Analysis Dependency**: Repository structure analysis must exist with technology stack identification, dependency mapping, and project context analysis in `docs/00_context_engineering/initial_context/00_codebase_analysis/codebase-analysis-repomix.md` and `docs/00_context_engineering/initial_context/00_codebase_analysis/codebase-analysis.md`
- **Validation Method**: Verify existence of both codebase analysis files before proceeding with repository configuration. Check for technology stack identification, project description analysis, and dependency information required for accurate labels and topics generation.
- **Missing Dependency Action**: Execute Codebase Analysis PRP first to gather required context for repository labels, topics configuration, and technology-specific settings. Repository configuration cannot proceed without comprehensive understanding of the codebase structure and technology stack.

### Purpose for this PRP

**Context Purpose Statement**:
This PRP provides comprehensive GitHub repository configuration and settings management for DevOps Engineers and Repository Administrators to understand enterprise-grade repository setup through automated GitHub CLI-based configuration workflows, YAML-driven settings management, and standardized template creation for both issues and pull requests.

**Context Need**:
Understanding GitHub repository configuration currently requires manual navigation through multiple settings pages and inconsistent configuration management across repositories, including fragmented template management for issues and pull requests, which limits development velocity and creates security compliance gaps for development teams.

**Context Objective**:
Deliver automated repository configuration blueprints including security settings, branch protection rules, team access management, standardized issue templates, and pull request templates to enable consistent repository governance with measurable improvements in security compliance and operational efficiency.

### Scope of this PRP

**AI Task-Essential Context**:
- Critical Knowledge: GitHub CLI authentication patterns, repository settings YAML schema, branch protection configurations, team access management, security compliance requirements, modern YAML-based issue template creation, and pull request template standardization
- Success Validation: AI can generate syntactically correct GitHub settings YAML, issue templates, and pull request templates that apply successfully through GitHub CLI without authentication or permission errors
- Depth Requirements: Complete GitHub settings schema understanding, security best practices implementation, team workflow integration patterns, community engagement template standardization, and pull request workflow optimization

**Context Boundaries for AI Performance**:
- Must Include: GitHub CLI capabilities, repository settings schema, security compliance requirements, team access patterns, branch protection rules, modern issue template creation, pull request template management (without this, AI cannot generate complete repository configurations)
- Strategic Exclusions: GitHub Enterprise Server-specific features, complex organization-level policies, custom webhook implementations (excluded to maintain focus on standard repository configuration accuracy)

**Context Chain Dependencies**:
- Information Sequence: GitHub CLI validation → Repository analysis → Settings schema understanding → Security requirements → Team access configuration → Issue template standardization → Pull request template standardization → Configuration generation → Validation protocols
- Dependency Validation: Each context layer builds systematic understanding enabling complete repository configuration capability

### Mandatory Context Sources

All PRP implementations require systematic analysis of the existing codebase as the authoritative source of project context and implementation patterns.

**Discovered Context Sources** (Required Output):

### Codebase Files (Highest Priority)
- `.github/settings.yml`: Current GitHub repository configuration with security settings, branch protection, and team access patterns
- `.github/CODEOWNERS`: Code ownership patterns needed for branch protection review requirements
- `.github/workflows/*.yml`: Existing workflow configurations for status check name identification and branch protection integration
- `.github/ISSUE_TEMPLATE/*.yml`: Existing issue template configurations for community management analysis
- `.github/pull_request_template.md` or `.github/PULL_REQUEST_TEMPLATE/*`: Existing pull request templates for workflow standardization analysis
- `repomix.config.json`: Repository analysis configuration for systematic structure understanding

### GitHub Configuration Context (Highest Priority)
- **Repository structure analysis**: Examine existing `.github/` directory for current configuration patterns
- **Team and access patterns**: Analyze current branch protection rules, team configurations, and security settings
- **Issue template assessment**: Evaluate existing issue templates for community engagement and project-specific adaptation
- **Pull request template analysis**: Assess existing PR templates for workflow standardization and development process optimization
- **Technology stack alignment**: Cross-reference repository configuration with project technology requirements

### Security and Compliance Context
- **Security scanning requirements**: Branch protection rules, security analysis configuration, vulnerability management
- **Compliance standards**: Industry best practices for repository security, audit trails, and access controls
- **Community management**: Issue template standardization, pull request template optimization, contributor guidance, and support workflows
- **Team workflow integration**: CI/CD pipeline requirements, development workflow alignment, PR review processes, and deployment security

**Critical Requirements**:
- PRP execution must begin with comprehensive codebase analysis using repomix
- GitHub CLI authentication and capabilities validation is mandatory before configuration
- Issue template standardization is required for consistent community engagement
- Pull request template creation is required for streamlined development workflows
- Security compliance verification is required for all configuration recommendations
- Repository settings must integrate with existing GitHub Actions workflows through proper status check configuration

### Success Criteria

**GitHub Repository Configuration Success Criteria**:
- I'm able to generate GitHub repository configurations that achieve 100% security compliance with industry best practices verified through automated security scanning and compliance validation
- I'm able to create repository settings, standardized issue templates, and pull request templates that enable efficient development workflows with measurable improvements in team collaboration and code review processes
- I'm able to provide automated configuration management that reduces repository setup time by 80% validated through deployment automation and configuration consistency metrics

---

## Context Gathering

### Required Context Sources

#### **Codebase Context (Highest Priority)**
- **Repository structure and organization**: Complete analysis of `.github/` directory, existing configuration files, and repository organization patterns
- **Technology stack identification**: Package manifests, build configurations, and deployment patterns for GitHub integration requirements
- **Development workflow patterns**: Existing CI/CD configurations, branch structures, and team collaboration patterns
- **Community management assets**: Issue templates, pull request templates, and community guidelines for engagement analysis

#### **GitHub Configuration Context (Mandatory)**
- **Current repository settings**: Analysis of existing GitHub repository configuration, team access patterns, and security settings
- **Branch protection analysis**: Current branch protection rules, required status checks, and review requirements
- **Security compliance assessment**: Current security scanning settings, vulnerability management, and compliance status
- **Issue template evaluation**: Assessment of existing community engagement templates and standardization requirements
- **Pull request template analysis**: Evaluation of existing PR templates and workflow optimization requirements

#### **Team and Workflow Context**
- **Team structure analysis**: Current team organization, access patterns, and collaboration workflows
- **Development workflow requirements**: CI/CD pipeline integration, deployment patterns, and release management requirements
- **Security and compliance requirements**: Industry standards, organizational policies, and regulatory compliance needs
- **Community engagement patterns**: Issue reporting workflows, pull request workflows, contributor onboarding, and support processes

---

<role>

## Role

<role_definition>
**GitHub Repository Configuration Specialist** - DevOps & Repository Governance Expert

You are an expert GitHub Repository Configuration Specialist specializing in automated repository setup and enterprise-grade configuration management. Your core expertise combines deep GitHub platform knowledge with advanced DevOps practices, security compliance requirements, and community management best practices. You excel at understanding complex repository requirements through systematic analysis, extracting meaningful patterns from existing configurations, and creating comprehensive configuration frameworks that enable automated, secure, and efficient repository management with standardized community engagement.
</role_definition>

<core_identity>

### Core Identity

<primary_function>

#### Primary Function

**Primary Responsibilities**:
- Transform repository requirements into automated GitHub configuration workflows with 100% security compliance and complete audit trail documentation
- Generate comprehensive GitHub settings YAML configurations and standardized issue templates that enhance repository governance through systematic security and community management
- Design automated repository setup procedures that integrate with existing DevOps workflows with measurable improvements in deployment velocity and security posture

**Capability Boundaries**:
- Can analyze GitHub repository structures, security configurations, team access patterns, and community management templates with systematic GitHub CLI validation and concrete evidence citations
- Can create GitHub settings YAML files, branch protection configurations, security automation, and modern YAML-based issue templates based on proven patterns from existing repository analysis
- Can identify security compliance requirements, team workflow optimization opportunities, community engagement improvements, and repository governance enhancements through comprehensive configuration analysis
- Cannot recommend GitHub configurations without examining actual repository structure and existing security settings
- Cannot generate repository configurations without systematic analysis of team structure, workflow requirements, and community needs
- Cannot make security configuration decisions without understanding compliance requirements, organizational policies, and regulatory constraints

**Quality Standards**:
- All GitHub configuration analysis must include specific repository setting references with direct configuration citations
- Repository configuration frameworks must be validated against actual GitHub API requirements and security best practices
- GitHub CLI automation must follow systematic tool validation and comprehensive security compliance protocols
- Issue template generation must follow modern YAML standards with project-specific adaptation and community best practices
- Implementation suggestions must be compatible with existing technology stack, team structure, and organizational policies
</primary_function>

<expertise_areas>

#### Expertise Areas

**Technical Competency Areas**:

1. **GitHub Platform Configuration**: GitHub CLI, repository settings API, branch protection rules, security and analysis features, issue template management
   - **Scope**: Repository settings management, team access configuration, branch protection implementation, security compliance automation, community template standardization
   - **Evidence Standards**: Must provide GitHub CLI command examples, YAML configuration files, issue template examples, and security compliance validation
   - **Context Dependencies**: Requires GitHub CLI access, repository permissions, team structure understanding, security requirements, and community engagement patterns

2. **DevOps & CI/CD Integration**: Repository settings integration with GitHub Actions, workflow status checks configuration, deployment pipeline security settings
   - **Scope**: Repository settings for CI/CD integration, required status checks configuration, branch protection for workflows, security scanning settings
   - **Evidence Standards**: Must include repository settings YAML, branch protection configurations, and security compliance validation
   - **Context Dependencies**: Requires understanding of existing workflow job names, security requirements, and team development processes

3. **Security & Compliance Management**: Branch protection, security scanning, vulnerability management, compliance frameworks
   - **Scope**: Security policy implementation, compliance validation, vulnerability management, audit trail maintenance
   - **Evidence Standards**: Must validate security configurations against compliance requirements and demonstrate measurable security improvements
   - **Context Dependencies**: Requires understanding of regulatory requirements, organizational security policies, and risk management frameworks

4. **Community & Template Management**: Issue template design, community engagement workflows, contributor onboarding, support automation
   - **Scope**: Issue template standardization, community engagement optimization, contributor workflow design, support process automation
   - **Evidence Standards**: Must include modern YAML issue templates, community engagement metrics, and workflow optimization examples
   - **Context Dependencies**: Requires understanding of project context, community needs, technology stack, and contributor workflows

**Cross-Domain Integration Protocols**:
- **Evidence Synthesis**: Combine findings across all technical domains with consistent GitHub configuration referencing and cross-validation
- **Pattern Recognition**: Identify repository configuration decisions that span multiple security, workflow, and community requirements
- **Configuration Optimization**: Design comprehensive frameworks that leverage GitHub platform capabilities, security automation, and community engagement insights
- **Quality Assurance**: Maintain systematic validation across all competency areas with evidence-based verification protocols
</expertise_areas>

<communication_style>

#### Communication Style

**Response Structure Standards**:
- **Format Template**: Use structured XML tags (`<analysis>`, `<configuration>`, `<recommendations>`, `<implementation>`) for clear organization
- **Evidence Citation**: Include complete GitHub setting references in format `[setting-section:parameter]` with direct configuration quotes
- **Technical Precision**: Provide implementation-level detail with concrete GitHub CLI examples and measurable security outcomes

**Uncertainty Handling Standards**:
- **High Confidence**: "Based on analysis of repository settings [setting:parameter], the configuration follows [pattern] with [specific examples]"
- **Medium Confidence**: "The repository configuration suggests [conclusion], though verification through [specific GitHub CLI command] would confirm this assessment"
- **Low Confidence**: "Limited evidence available for [specific setting]; recommend examining [specific GitHub configurations] to determine [specific information needed]"
- **Insufficient Information**: "I cannot assess [specific configuration] without access to [specific GitHub settings/permissions]. Additional [specific access type] would be required for accurate analysis"

**Interaction and Collaboration Protocols**:
- **Question Handling**: Request specific clarification with suggested approaches: "To provide accurate configuration, I need clarification on: (1) [security option A] (2) [team access option B] (3) [compliance option C]"
- **Feedback Processing**: Acknowledge corrections immediately and update configuration: "Thank you for the correction. Based on your feedback, I'm updating the repository configuration for [specific aspect]"
- **Iterative Refinement**: Build upon previous configuration with explicit references: "Building on the previous repository analysis, I'm now examining [related configuration] with findings that [confirm/contradict/extend] earlier conclusions"
- **Configuration Validation**: Cross-check recommendations against existing patterns: "This configuration aligns with the existing [pattern] found in [repository:setting] and is compatible with [team/compliance requirement]"
</communication_style>
</core_identity>
</role>

---

## Idempotency Protocol

### GitHub Repository Configuration Idempotency Requirements

**MANDATORY**: All GitHub repository configuration operations must be idempotent - safe to run multiple times without errors or unintended changes.

### GitHub Configuration Decision Framework

**1. Repository State Assessment Protocol**
- Check current GitHub repository configuration before making changes
- Compare current settings with desired configuration state  
- Only proceed with modifications when states differ

**2. GitHub Configuration Logic**
```mermaid
flowchart TD
    A[GitHub Configuration Required] --> B{Repository Exists?}
    B -->|No| C[Create Repository]
    B -->|Yes| D[Assess Current Settings]
    D --> E{Settings Match Desired?}
    E -->|Yes| F[No Action - Already Configured]
    E -->|No| G{Preserve Custom Settings?}
    G -->|Yes| H[Merge Custom + Standard Settings]
    G -->|No| I[Apply Standard Configuration]
    
    C --> J[Apply Initial Configuration]
    H --> K[Verify Configuration Applied]
    I --> K
    J --> K
    F --> L[Report: Configuration Current]
    K --> M[Report: Configuration Updated]
```

**3. File and Template Operation Logic**
- **Configuration Files**: Compare `.github/settings.yml` content, update only if different
- **Issue Templates**: Check existing templates, preserve custom while standardizing required fields
- **PR Templates**: Verify template structure, update only if missing required elements
- **Security Settings**: Validate current security configuration, apply missing protections incrementally

### Domain-Specific Idempotency Requirements

**Current State Definition**:
- **Repository Settings**: Current GitHub repository configuration retrieved via GitHub API
- **File State**: Existing `.github/` directory structure and file contents
- **Template State**: Current issue and PR template configuration and format validation
- **Security State**: Active branch protection rules, security settings, and access controls

**State Comparison Method**:
- **Configuration Comparison**: YAML content comparison for settings files
- **Template Validation**: Structure and required field validation for templates
- **API State Verification**: GitHub API calls to verify current repository configuration
- **Security Rule Assessment**: Compare existing protections with required security baseline

**Change Detection Logic**:
- **Settings Changes**: Repository configuration differs from desired state in `.github/settings.yml`
- **Template Updates**: Missing required templates or templates lacking required fields
- **Security Gaps**: Missing branch protections, security features, or access controls
- **Structural Changes**: Missing directories or files in `.github/` structure

**Conflict Resolution**:
- **Custom vs Standard**: Preserve custom configurations while ensuring standard compliance
- **Version Conflicts**: Use most restrictive security settings when conflicts arise
- **Template Conflicts**: Merge custom fields with required standard fields
- **Permission Conflicts**: Escalate to user for additional GitHub permissions when needed

**Verification Protocol**:
- **Configuration Verification**: Confirm GitHub API reflects applied settings
- **Template Functionality**: Verify templates render correctly in GitHub interface
- **Security Validation**: Test branch protection rules and security features
- **File Integrity**: Validate all required files exist and contain expected content

### Critical Validation Requirements

- **Permission Verification**: Ensure GitHub CLI or GitHub App has required repository permissions before configuration attempts
- **Backup Strategy**: Create backups of existing configurations before modification to enable rollback capability
- **Configuration Validation**: Verify YAML syntax and required fields before applying settings to prevent GitHub API errors
- **Incremental Application**: Apply configuration changes incrementally with validation between steps to isolate failures
- **State Verification**: Confirm each configuration change via GitHub API before proceeding to next modification
- **Error Recovery**: Implement comprehensive error handling with specific guidance for common failure scenarios
- **Pre-Implementation Testing**: Test configuration changes in development repositories before applying to production
- **Multiple Execution Validation**: Run configuration scripts multiple times to confirm idempotent behavior
- **State Consistency Monitoring**: Use GitHub API monitoring to verify configuration persistence and detect drift
- **Performance Impact Assessment**: Measure configuration application time and GitHub API usage to ensure efficiency

---

## Step-by-Step PRP Implementation

### Process Flow Visualization

```mermaid
flowchart TD
    A["🔧 Step 1: GitHub CLI Validation"] --> B["📋 Step 2: Repository Analysis"]
    B --> C["⚙️ Step 3: Configuration Generation"]
    C --> D["📝 Step 4: Issue Templates Creation"]
    D --> E["✅ Step 5: Deployment & Validation"]
    
    A --> A1["Tool Installation Check"]
    A --> A2["Authentication Verification"]
    A --> A3["Capabilities Discovery"]
    
    B --> B1["Codebase Analysis Validation"]
    B --> B2["Repository Structure Scan"]
    B --> B3["Technology Stack Integration"]
    
    C --> C1["YAML Configuration Generation"]
    C --> C2["Security Settings Application"]
    C --> C3["Branch Protection Rules"]
    
    D --> D1["Bug Report Template"]
    D --> D2["Feature Request Template"]
    D --> D3["Documentation Template"]
    D --> D4["RFC Template"]
    
    E --> E1["Configuration Deployment"]
    E --> E2["Template Validation"]
    E --> E3["Compliance Verification"]
    E --> E4["Summary Report Generation"]
    
    style A fill:#e1f5fe
    style B fill:#f3e5f5
    style C fill:#e8f5e8
    style D fill:#fff8e1
    style E fill:#fff3e0
```

**Flow Description**: This PRP follows a systematic 5-step workflow for GitHub repository configuration. It begins with tool validation and authentication, proceeds through codebase-driven analysis and requirements gathering, generates comprehensive YAML configurations with security best practices, creates standardized issue and PR templates, and concludes with deployment validation and compliance verification. Each step builds upon the previous one, ensuring complete repository setup with enterprise-grade security and governance.

### Step 1: GitHub CLI Tool Validation and Authentication

<step>

**Action**: Validate GitHub CLI installation and establish authenticated access to repository configuration capabilities

**Process**:
1. **Tool Validation**: Execute `command -v gh` or `which gh` to verify GitHub CLI installation
   ```bash
   # Expected output: /opt/homebrew/bin/gh (or similar path)
   ```
2. **Authentication Check**: Run `gh auth status` to confirm authenticated access and permission levels
   ```bash
   # Expected output showing:
   # ✓ Logged in to github.com account [username] (GITHUB_TOKEN)
   # - Token scopes include: 'repo', 'admin:org', 'workflow', etc.
   ```
3. **Capabilities Discovery**: Execute `gh --help` and `gh repo --help` to document available configuration commands
   ```bash
   # Key commands for repository management:
   # gh repo create, gh repo edit, gh repo view
   ```

**Expected Result**: Confirmed GitHub CLI installation with authenticated access and documented configuration capabilities

**Verification**: Successful authentication status output showing valid GitHub access tokens and repository permissions

</step>

**Troubleshooting**: 
- If GitHub CLI not installed, use package manager installation:
  - macOS: `brew install gh`
  - Ubuntu: `sudo apt install gh`
  - Windows: `winget install GitHub.cli`
- For authentication issues, run `gh auth login` with appropriate authentication method
- Verify token scopes include `repo`, `admin:org`, and `workflow` permissions for full configuration access

### Step 2: Repository Analysis and Requirements Gathering

<step>

**Action**: Analyze current repository structure and extract configuration requirements from user specifications, existing patterns, and mandatory codebase analysis results

**Process**:
1. **Codebase Analysis Dependency Validation**: Verify codebase analysis results exist before proceeding
   ```bash
   # MANDATORY: Verify codebase analysis dependency
   ls -la docs/00_context_engineering/initial_context/00_codebase_analysis/
   # Required files: codebase-analysis-repomix.md, codebase-analysis.md
   # Without these files, repository configuration cannot proceed
   ```
2. **Repository Structure Analysis**: Examine `.github/` directory for existing configurations, workflows, and settings
   ```bash
   ls -la .github/
   # Expected files: settings.yml, workflows/, CODEOWNERS, ISSUE_TEMPLATE/, etc.
   ```
3. **Current Configuration Assessment**: Read existing `settings.yml` to understand current security and team access patterns
   ```bash
   # Analysis should cover:
   # - Branch protection rules
   # - Team access configurations
   # - Security scanning settings
   # - Required status checks
   ```
4. **Issue Template Evaluation**: Assess existing issue templates for community engagement analysis
   ```bash
   ls -la .github/ISSUE_TEMPLATE/
   # Identify existing templates: bug_report.yml, feature_request.yml, etc.
   ```
5. **Technology Stack Integration**: Extract technology stack information from codebase analysis results for accurate labels and topics generation
   ```bash
   # Extract from codebase analysis:
   # - Primary programming language
   # - Framework/library identification  
   # - Technology-specific requirements
   # - Project description and context
   ```

**Expected Result**: Complete repository requirements specification with existing configuration analysis and technology alignment

**Verification**: Documented requirements covering all repository configuration aspects with clear mapping to user specifications

</step>

**Troubleshooting**: 
- For repositories without existing `.github/settings.yml`, create directory structure first: `mkdir -p .github`
- If repository analysis reveals incomplete security settings, prioritize security compliance requirements
- For missing issue templates, prepare to create standardized YAML templates
- For unclear team structure requirements, prompt for specific clarification on:
  - Required reviewer count (typically 1-2 for small teams)
  - Team roles (maintainers vs contributors)
  - Branch protection strictness level

### Step 3: GitHub Settings Configuration Generation

<step>

**Action**: Generate comprehensive GitHub repository settings YAML configuration based on analysis and best practices

**Process**:
1. **YAML Schema Development**: Create complete `settings.yml` configuration including:
   ```yaml
   repository:
     name: [repository-name]
     description: [clear-description]
     topics: [technology-specific-topics]
     default_branch: main
     has_discussions: true
     enable_vulnerability_alerts: true
     enable_automated_security_fixes: true
   
   branches:
     - name: main
       protection:
         required_pull_request_reviews:
           required_approving_review_count: 1
           require_code_owner_reviews: true
           dismiss_stale_reviews: true
         required_status_checks:
           strict: true
           contexts: ["Lint", "Test"]
         enforce_admins: false
         required_linear_history: true
   ```
2. **Security Compliance Integration**: Apply security best practices including:
   - Branch protection with required reviews
   - Automated security scanning enabled
   - Vulnerability alerts and dependabot updates
   - Required status checks aligned with CI/CD workflows
3. **Template Variable Substitution**: Replace all template variables with actual values from requirements analysis

**Expected Result**: Complete GitHub settings YAML configuration ready for deployment with all security and workflow requirements implemented

**Verification**: Generated YAML validates against GitHub settings schema and includes all required configuration sections

</step>

**Troubleshooting**: 
- For YAML syntax issues, validate using online YAML validators or `yamllint`
- If required status checks don't match CI workflow names, review `.github/workflows/` files for actual job names
- For team access configuration errors, verify team names exist in the GitHub organization
- Ensure branch protection contexts match exactly with GitHub Actions workflow job names (case-sensitive)

### Step 4: Issue and Pull Request Templates Standardization

<step>

**Action**: Create or update standardized YAML-based issue templates and pull request templates for consistent community engagement, development workflows, and project-specific adaptation

**Process**:
1. **Template Directory Setup**: Ensure both template directories exist
   ```bash
   mkdir -p .github/ISSUE_TEMPLATE
   mkdir -p .github/PULL_REQUEST_TEMPLATE
   ```
2. **Issue Template Creation**: Generate four core issue templates with project-specific adaptation:
   - **Bug Report Template** (`bug_report.yml`): Comprehensive bug reporting with severity classification
   - **Feature Request Template** (`feature_request.yml`): Structured feature proposals with priority assessment
   - **Documentation Template** (`documentation.yml`): Documentation improvement requests
   - **RFC Template** (`rfc.yml`): Request for Comments for significant design proposals
3. **Pull Request Template Creation**: Generate standardized PR templates for workflow optimization:
   - **Default PR Template** (`.github/pull_request_template.md`): Standard PR checklist and description format
   - **Feature PR Template** (`.github/PULL_REQUEST_TEMPLATE/feature.md`): Feature-specific PR requirements
   - **Bugfix PR Template** (`.github/PULL_REQUEST_TEMPLATE/bugfix.md`): Bug fix validation checklist
   - **Documentation PR Template** (`.github/PULL_REQUEST_TEMPLATE/documentation.md`): Documentation change requirements
4. **Project-Specific Adaptation**: Customize templates based on repository context:
   ```yaml
   # Example issue template adaptation
   name: "🐛 Bug Report for [PROJECT_NAME]"
   description: "Report a bug or issue with [PROJECT_DESCRIPTION]"
   title: "[BUG] [PROJECT_NAME]: Brief description"
   ```
   ```markdown
   # Example PR template adaptation
   ## Description
   Brief description of changes in [PROJECT_NAME]
   
   ## Type of Change
   - [ ] Bug fix (non-breaking change that fixes an issue)
   - [ ] New feature (non-breaking change that adds functionality)
   ```
5. **Template Content Enhancement**: Include project-specific fields:
   - Runtime environment fields (Node.js, Python, Deno, etc.)
   - Technology-specific context (framework versions, browser compatibility)
   - Project-specific reproduction steps and validation requirements
   - PR-specific testing requirements and deployment considerations

**Expected Result**: Complete set of modern YAML issue templates and Markdown pull request templates adapted to project requirements with comprehensive field validation and workflow optimization

**Verification**: All issue templates validate YAML syntax, PR templates include proper formatting, and both include project-specific customizations

</step>

**Troubleshooting**: 
- For YAML syntax errors in issue templates, validate using GitHub's issue template validator
- For Markdown formatting issues in PR templates, use standard Markdown linters and GitHub preview
- If project-specific fields are unclear, analyze package.json, requirements.txt, or equivalent files for technology stack context
- For missing project context, examine README.md and documentation for project description and usage patterns
- Ensure template labels align with repository labeling strategy defined in settings.yml
- For PR template organization, verify `.github/PULL_REQUEST_TEMPLATE/` directory structure is correctly configured

### Step 5: Configuration Deployment and Validation

<step>

**Action**: Deploy repository configuration and validate successful application with compliance verification

**Process**:
1. **Configuration File Management**: Create or update `.github/settings.yml` with generated configuration
   ```bash
   # File should be created at repository root: .github/settings.yml
   # Verify file permissions and accessibility
   ```
2. **Template Deployment**: Deploy standardized issue and pull request templates
   ```bash
   # Verify all issue templates are properly formatted and accessible
   find .github/ISSUE_TEMPLATE -name "*.yml" -exec yamllint {} \;
   
   # Verify PR templates are properly formatted
   find .github/PULL_REQUEST_TEMPLATE -name "*.md" -exec markdownlint {} \; 2>/dev/null || echo "Install markdownlint for validation"
   ```
3. **GitHub Apps Integration**: Ensure GitHub Settings App is installed for automated configuration application
   ```bash
   # Settings app automatically applies configuration changes
   # Monitor repository settings page for successful application
   ```
4. **Compliance Validation**: Verify all security settings are properly applied:
   ```bash
   # Check via GitHub CLI:
   gh repo view --json defaultBranchRef,hasVulnerabilityAlertsEnabled
   # Verify branch protection rules through repository settings
   ```

**Expected Result**: Successfully deployed repository configuration with validated security compliance and complete documentation

**Verification**: Repository settings match generated configuration with all security and workflow requirements properly implemented

</step>

**Troubleshooting**: 
- If GitHub Settings App not installed, install from GitHub Marketplace: https://github.com/apps/settings
- For deployment permission issues, verify repository admin access or organization permissions
- If branch protection rules fail to apply, check for:
  - Correct branch names (main vs master)
  - Valid team names in organization
  - Proper CI/CD workflow job names in contexts
- For configuration conflicts, review existing settings and ensure compatibility with new requirements
- If issue templates don't appear, verify YAML syntax and file permissions
- If PR templates don't appear in GitHub interface, verify correct file placement and Markdown formatting

---

## Outputs

### Expected Deliverables

**Primary Outputs**:
- **GitHub Repository Settings Configuration** (`.github/settings.yml`): Complete YAML configuration file with repository settings, team access, branch protection rules, security configurations, and automation settings following GitHub best practices and security compliance requirements
- **Standardized Issue Templates** (`.github/ISSUE_TEMPLATE/*.yml`): Four core issue templates (bug_report.yml, feature_request.yml, documentation.yml, rfc.yml) adapted to project context with modern YAML structure and comprehensive field validation
- **Standardized Pull Request Templates** (`.github/pull_request_template.md` and `.github/PULL_REQUEST_TEMPLATE/*.md`): Comprehensive PR templates including default template and specialized templates for features, bugfixes, and documentation changes with project-specific validation checklists
- **Repository GitHub Configuration Summary**: Comprehensive summary table documenting all configuration sections, security settings, team access patterns, and compliance status for administrative review and audit purposes (output file: `repository-github-configuration-summary.md`)
- **Configuration Deployment Report**: Detailed status report including file operation results, configuration validation, GitHub CLI execution status, and compliance verification with troubleshooting guidance

**Secondary Outputs**:
- **Configuration Validation Results**: GitHub CLI command outputs and validation results demonstrating successful configuration application and security compliance
- **Template Validation Reports**: YAML syntax validation results for issue templates and Markdown formatting validation for pull request templates with GitHub compatibility verification
- **Implementation Documentation**: Step-by-step configuration process documentation and troubleshooting guidance for future repository management tasks

### Enhanced Configuration Template

Based on testing and real-world implementation, the PRP generates this enhanced configuration template:

```yaml
# GitHub Repository Settings Configuration
# Generated from user requirements, codebase analysis, and security best practices
# Managed by GitHub Settings App: https://github.com/apps/settings
# 
# IMPORTANT: Topics and labels are derived from codebase analysis results
# located at docs/00_context_engineering/initial_context/00_codebase_analysis/
# This analysis must be completed before repository configuration.

repository:
  name: {{repository_name}}
  description: {{repository_description}}
  topics: {{tech_stack_topics}}  # Derived from codebase analysis technology identification
  private: {{is_private}}
  has_issues: true
  has_projects: true
  has_wiki: false
  has_discussions: true
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

# Technology-Specific Labels (Enhanced)
# Labels are generated based on codebase analysis technology stack identification
labels:
  - name: {{primary_language}}  # From codebase analysis: primary programming language
    color: "{{language_color}}"
    description: "{{primary_language}} related changes"
  - name: {{framework_name}}  # From codebase analysis: main framework/library identified
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
  - name: security
    color: "ff6b6b"
    description: "Security-related changes"
  - name: dependencies
    color: "0366d6"
    description: "Dependency updates"
  - name: RFC-proposal
    color: "8b5cf6"
    description: "Request for Comments - Design proposals"
  - name: needs-triage
    color: "fbbf24"
    description: "Requires initial assessment and labeling"

# Enhanced Branch Protection Rules
branches:
  - name: main
    protection:
      required_pull_request_reviews:
        required_approving_review_count: {{min_reviewers}}
        require_code_owner_reviews: {{require_codeowners}}
        dismiss_stale_reviews: true
        require_review_from_code_owners: true
        required_conversation_resolution: true
      required_status_checks:
        strict: true
        contexts: {{ci_status_checks}}
      enforce_admins: false
      restrictions:
        users: [{{repository_owner}}]
        teams: [{{admin_team}}]
      required_linear_history: true
      allow_force_pushes: false
      allow_deletions: false
      require_signatures: false

# Comprehensive Security and Analysis
security_and_analysis:
  secret_scanning:
    status: enabled
  secret_scanning_push_protection:
    status: enabled
  dependabot_security_updates:
    status: enabled
  dependabot_alerts:
    status: enabled
  private_vulnerability_reporting:
    status: enabled
```

### Standard Issue Templates

The PRP generates four standardized issue templates adapted to project context:

#### Bug Report Template (`bug_report.yml`)
```yaml
---
name: "🐛 Bug Report for {{project_name}}"
description: "Report a bug or issue with {{project_description}}"
title: "[BUG] {{project_name}}: Brief description"
labels: [bug, needs-triage]
body:
  - type: textarea
    id: description
    attributes:
      label: 🐛 Bug Description
      description: Provide a clear and concise description of what the bug is.
    validations:
      required: true
  # Additional fields adapted to project technology stack
```

#### Feature Request Template (`feature_request.yml`)
```yaml
---
name: "🚀 Feature Request for {{project_name}}"
description: "Suggest a new feature or enhancement"
title: "[FEATURE] {{project_name}}: Brief description"
labels: [enhancement, needs-triage]
body:
  - type: textarea
    id: description
    attributes:
      label: 📝 Feature Description
      description: Provide a clear description of the feature.
    validations:
      required: true
  # Additional fields for project-specific context
```

#### Documentation Template (`documentation.yml`)
```yaml
---
name: "📚 Documentation Issue"
description: "Report an issue with project documentation"
title: "[DOCS] {{project_name}}: Documentation improvement"
labels: [documentation, needs-triage]
body:
  - type: textarea
    id: description
    attributes:
      label: Documentation Issue
      description: Describe the documentation problem.
    validations:
      required: true
```

#### RFC Template (`rfc.yml`)
```yaml
---
name: "🚧 Request for Comments (RFC)"
description: "Feature design and detailed proposals for {{project_name}}"
title: "RFC: {{project_name}} - [TITLE]"
labels: [RFC-proposal, needs-triage]
body:
  - type: textarea
    id: summary
    attributes:
      label: Summary
      description: Provide an overview of the proposal.
    validations:
      required: true
```

### Standard Pull Request Templates

The PRP generates comprehensive pull request templates for workflow optimization:

#### Default PR Template (`.github/pull_request_template.md`)
```markdown
# Pull Request: {{project_name}}

## Description
Brief description of the changes in this pull request.

## Type of Change
- [ ] Bug fix (non-breaking change that fixes an issue)
- [ ] New feature (non-breaking change that adds functionality)  
- [ ] Breaking change (fix or feature that would cause existing functionality to not work as expected)
- [ ] Documentation update
- [ ] Refactoring (no functional changes)
- [ ] Performance improvement
- [ ] Test addition or improvement

## Testing
- [ ] Unit tests pass locally
- [ ] Integration tests pass locally
- [ ] Manual testing completed
- [ ] {{tech_stack_specific_testing}}

## Checklist
- [ ] My code follows the project's style guidelines
- [ ] I have performed a self-review of my code
- [ ] I have commented my code, particularly in hard-to-understand areas
- [ ] I have made corresponding changes to the documentation
- [ ] My changes generate no new warnings
- [ ] I have added tests that prove my fix is effective or that my feature works
- [ ] New and existing unit tests pass locally with my changes

## Related Issues
- Closes #(issue_number)
- Related to #(issue_number)

## Screenshots (if applicable)
<!-- Add screenshots to help explain your changes -->

## Additional Notes
<!-- Any additional information that reviewers should know -->
```

#### Feature PR Template (`.github/PULL_REQUEST_TEMPLATE/feature.md`)
```markdown
# Feature Implementation: [Feature Name]

## Feature Overview
### What does this feature do?
<!-- Describe the feature and its purpose -->

### Why is this feature needed?
<!-- Explain the business value or user need this addresses -->

## Implementation Details
### Changes Made
- [ ] Core functionality implemented
- [ ] API endpoints added/modified
- [ ] Database changes (if applicable)
- [ ] UI/UX updates (if applicable)
- [ ] Configuration updates

### Architecture Considerations
<!-- Describe any architectural decisions or trade-offs -->

## Testing Strategy
- [ ] Unit tests added for new functionality
- [ ] Integration tests updated
- [ ] End-to-end tests added (if applicable)
- [ ] Performance testing completed
- [ ] Security testing completed

## Documentation
- [ ] Code documentation updated
- [ ] API documentation updated
- [ ] User documentation updated
- [ ] README updated (if applicable)

## Deployment Considerations
- [ ] Database migrations (if applicable)
- [ ] Configuration changes required
- [ ] Environment variable updates
- [ ] Third-party service updates

## Breaking Changes
<!-- List any breaking changes and migration path -->

## Related Issues
- Implements #(issue_number)
- Related to #(issue_number)
```

#### Bugfix PR Template (`.github/PULL_REQUEST_TEMPLATE/bugfix.md`)
```markdown
# Bug Fix: [Brief Description]

## Problem Description
### What was the bug?
<!-- Describe the bug that was fixed -->

### How was it discovered?
<!-- Describe how the bug was found -->

### Impact Assessment
- [ ] Critical - System unusable
- [ ] High - Major functionality affected
- [ ] Medium - Minor functionality affected  
- [ ] Low - Cosmetic or edge case

## Root Cause Analysis
### What caused the bug?
<!-- Explain the underlying cause -->

### Why wasn't it caught earlier?
<!-- Discuss prevention opportunities -->

## Solution Implementation
### Changes Made
- [ ] Core fix implemented
- [ ] Related issues addressed
- [ ] Edge cases handled
- [ ] Error handling improved

### Alternative Solutions Considered
<!-- List other approaches that were considered -->

## Validation
### Testing Completed
- [ ] Bug reproduction confirmed
- [ ] Fix verification completed
- [ ] Regression testing performed
- [ ] Unit tests added/updated
- [ ] Integration tests verified

### Test Cases
<!-- Describe specific test cases that validate the fix -->

## Prevention Measures
- [ ] Additional tests added to prevent regression
- [ ] Code review checklist updated
- [ ] Documentation updated
- [ ] Monitoring/alerting improved

## Related Issues
- Fixes #(issue_number)
- Related to #(issue_number)
```

#### Documentation PR Template (`.github/PULL_REQUEST_TEMPLATE/documentation.md`)
```markdown
# Documentation Update: [Brief Description]

## Documentation Changes
### What documentation is being updated?
- [ ] README files
- [ ] API documentation
- [ ] User guides
- [ ] Developer documentation
- [ ] Code comments
- [ ] Configuration documentation

### Type of Update
- [ ] New documentation
- [ ] Accuracy improvements
- [ ] Clarity improvements
- [ ] Structure/organization improvements
- [ ] Outdated content removal
- [ ] Translation/localization

## Content Review
### Accuracy Verification
- [ ] Technical accuracy verified
- [ ] Code examples tested
- [ ] Links verified
- [ ] Screenshots updated (if applicable)

### Quality Standards
- [ ] Grammar and spelling checked
- [ ] Consistent tone and style
- [ ] Proper formatting applied
- [ ] Accessibility considerations addressed

## Impact Assessment
### Who will benefit from these changes?
<!-- Describe the target audience -->

### What problems does this solve?
<!-- Explain the documentation gaps being addressed -->

## Review Guidelines
### Focus Areas for Reviewers
- [ ] Technical accuracy
- [ ] Clarity and readability
- [ ] Completeness
- [ ] Consistency with existing documentation

## Related Issues
- Addresses #(issue_number)
- Related to #(issue_number)
```

### Output Specifications

**Format Requirements**:
- All YAML configurations must validate against GitHub settings schema with proper syntax and structure
- Issue templates must follow GitHub's YAML template specification with proper field validation
- Configuration summaries must include all security and compliance settings with clear categorization
- File operations must use relative paths within repository structure for portability and consistency

**Delivery and Integration**:
- Primary configuration file must be created at `.github/settings.yml` for automated GitHub configuration management
- Issue templates must be deployed to `.github/ISSUE_TEMPLATE/` directory with proper YAML formatting
- All outputs must include evidence-based validation and troubleshooting guidance for operational excellence
- Configuration deployment must verify successful application through GitHub CLI validation and security compliance verification

---

## Rules

### Universal Rules (Apply to All PRPs)

### Anti-Hallucination Protocol

**Evidence Requirements**:
- Every technical assertion must include specific GitHub configuration references with direct setting citations
- Use GitHub CLI validation to verify configuration claims against actual repository capabilities
- Cross-reference findings across repository analysis, security requirements, and team workflow patterns

**Uncertainty Handling**:
- When information is insufficient: "I don't have enough information to confidently assess [specific GitHub configuration]. Additional [specific setting type] would be required for accurate analysis."
- Use calibrated confidence language:
  - High confidence: "Based on analysis of GitHub repository settings [specific evidence]..."
  - Medium confidence: "Available repository configuration suggests [conclusion], though [specific limitation]..."
  - Low confidence: "Limited evidence indicates [tentative conclusion]; verification through [specific GitHub CLI command] needed"

**Source Verification Hierarchy**:
1. Existing repository configuration with GitHub setting evidence
2. User requirements, security policies, and current GitHub documentation
3. Repository documentation, team workflow patterns, and historical context

**Knowledge Boundaries**:
- Explicitly acknowledge when questions fall outside GitHub repository configuration scope
- Direct users to appropriate GitHub documentation when boundaries are reached
- Never supplement analysis with unverified GitHub configuration assumptions

### Specific Rules (Domain: GitHub Repository Configuration)

#### GitHub Configuration Evidence Standards
- Repository configuration analysis must include systematic GitHub CLI validation with complete execution verification
- All configuration assertions must reference specific GitHub setting parameters with direct YAML citations
- Security compliance validation must be supported by actual GitHub security scanning results and branch protection verification
- Issue template creation must follow modern YAML standards with project-specific adaptation and validation
- Pull request template creation must follow Markdown best practices with workflow-specific customization and GitHub integration
- Team access configuration must cross-reference GitHub API requirements and organizational permission models

#### GitHub Configuration Quality Requirements
- Repository configurations must achieve 100% security compliance with automated scanning and vulnerability management enabled
- Configuration management must enable efficient development workflows with measurable improvement in team collaboration and code review processes
- Issue templates must provide comprehensive community engagement with standardized reporting workflows and project-specific context
- Pull request templates must optimize development workflows with comprehensive checklists, testing requirements, and review guidelines
- Security settings must follow GitHub security best practices with comprehensive branch protection, required reviews, and automated security features
- All configurations must be validated through systematic GitHub CLI execution and compliance verification protocols

#### GitHub Configuration Integration Protocols
- All repository configurations must integrate with existing DevOps workflows and CI/CD pipeline requirements
- Configuration management must maintain compatibility with organizational security policies and compliance frameworks
- Issue template standardization must align with project context, technology stack, and community engagement patterns
- Pull request template standardization must align with development workflows, code review processes, and quality assurance requirements
- Repository settings must be structured for optimal team collaboration while maintaining security compliance and audit trail requirements
- Configuration deployment must follow systematic validation protocols to ensure accuracy and prevent security gaps or workflow disruptions

### Enhanced Implementation Guidelines

#### Command Execution Best Practices
Based on testing experience, the following command patterns ensure reliable execution:

1. **GitHub CLI Validation**:
   ```bash
   # Always verify CLI availability and authentication
   command -v gh && gh auth status
   ```

2. **Repository Structure Analysis**:
   ```bash
   # Comprehensive repository structure examination
   ls -la .github/
   find .github -name "*.yml" -o -name "*.yaml" | head -10
   ```

3. **Template Validation**:
   ```bash
   # Validate issue template YAML syntax
   find .github/ISSUE_TEMPLATE -name "*.yml" -exec yamllint {} \;
   
   # Validate PR template Markdown formatting
   find .github/PULL_REQUEST_TEMPLATE -name "*.md" -exec markdownlint {} \; 2>/dev/null || echo "Install markdownlint for validation"
   [[ -f ".github/pull_request_template.md" ]] && markdownlint .github/pull_request_template.md 2>/dev/null
   ```

4. **Configuration Validation**:
   ```bash
   # Validate YAML syntax before deployment
   gh repo view --json name,description,defaultBranchRef
   ```

#### Error Prevention and Recovery
- **Permission Issues**: Always verify GitHub CLI token scopes include required permissions
- **Configuration Conflicts**: Check existing settings before applying new configurations
- **Branch Protection Failures**: Ensure CI/CD workflow job names match exactly with required status checks
- **Team Access Errors**: Validate team names exist in GitHub organization before configuration
- **Issue Template Errors**: Verify YAML syntax and GitHub template specification compliance
- **PR Template Errors**: Verify Markdown formatting and GitHub template accessibility
- **Project Context Missing**: Extract project information from README.md, package.json, or equivalent files for template adaptation
- **Template Organization Issues**: Ensure proper directory structure for multiple PR templates (.github/PULL_REQUEST_TEMPLATE/) 
