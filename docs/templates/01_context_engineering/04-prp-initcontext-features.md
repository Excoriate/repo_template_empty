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

## Document Overview

This document is part of a comprehensive context engineering system. Each section builds upon previous sections and informs subsequent ones, creating a complete project understanding framework.

**Related Documents:**
- [Problem & Value Proposition](03-prp-initcontext-problem-value-proposition.md)
- [Architecture](05-prp-initcontext-architecture.md)
- [Software Architecture](06-prp-initcontext-software-architecture.md)
- [Complete Document Index](00-prp-initcontext-index.md)

---

## Features

This section defines the comprehensive feature set organized as Epics and User Stories. AI assistants use this structured approach to understand functional requirements and generate downstream artifacts like PRDs, engineering tasks, and test plans.

### AI Assistant Process Flow

When processing feature definition requests, AI assistants must follow these steps in order:

1. **Synthesize**: Ingest context from Product Identity, Problem & Value Proposition, and user input
2. **Define Epics**: Group user requirements into high-level feature categories (Epics)
3. **Formulate User Stories**: For each Epic, define specific, testable capabilities as user stories
4. **Prioritize**: Classify each Epic and its User Stories into tiers (MVP, etc.)
5. **Validate**: Ensure absolute coherence with Application Type and Problem Statement
6. **Present**: Output the features in the structured format below

### Detailed Implementation Steps

**Context Synthesis:**
Your primary inputs are the Problem & Value Proposition section and the user-provided feature list. These form the foundation for all feature prioritization and story creation decisions.

**Epic Definition:**
Analyze the user's requirements and group them into logical, high-level categories that are applicable to any application type (e.g., `Core Functionality`, `User Management`, `Data Processing`, `Integration`). These are your "Epics."

**User Story Formulation:**
For each Epic, define its capabilities as concrete, testable user stories:
- **Format**: "As a `[Persona]`, I want to `[Action]` so that `[Benefit]`."
- **Persona**: Must be a specific, relevant user role (e.g., `DevOps Engineer`, `End User`, `System Administrator`)
- **Action**: Must describe a single, verifiable capability. The action should be granular enough to be the basis for a set of implementation tasks, but not the tasks themselves
- **Benefit**: Must align directly with the Value Proposition from the Problem & Value Proposition section

**Prioritization:**
Assign each Epic and its constituent User Stories to one of three tiers:
- **MVP (Minimum Viable Product)**: Essential for the core, functional version
- **Next Phase**: Important enhancements for after the MVP is stable
- **Nice to Have**: Desirable features that improve the experience but are not critical

### Validation Requirements

The following requirements must be met for any generated features:

- All Epics and User Stories MUST be coherent with the Application Type (e.g., no "Interactive Dashboard" stories for a CLI tool)
- Every User Story's `[Benefit]` MUST directly support the Value Proposition
- The set of MVP stories, when combined, MUST fully address the Problem Statement
- This section defines the **scope** of work. It MUST NOT contain the implementation details (tasks) or granular test criteria (UAC), which are generated from this section

### Output Format

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

### Downstream Artifact Generation

The Epics and User Stories defined in this section are the foundational input for generating more detailed, scoped documents. Subsequent AI processes (PRPs) will use this section to generate:
- **Product Requirements Documents (PRDs)**: Expanding each Epic with detailed context
- **Engineering Task Tickets**: Breaking down each User Story into granular, actionable implementation tasks
- **Test Plans**: Creating detailed User Acceptance Criteria (UAC) and test cases for each User Story

---

## Cross-Section Dependencies

This section depends on information from:
- **Problem & Value Proposition**: For understanding user needs and solution benefits
- **Product Identity & Definition**: For product context and target users
- **Initial Codebase Awareness**: For technical constraints

This section provides information to:
- **Architecture**: Feature complexity influences architectural decisions
- **Software Architecture**: Features determine component design
- **Tech Stack**: Feature requirements guide technology selection
- **User & Developer Experience**: Features shape UX/DX priorities 
