# Hemanth's Resumes 📄

LaTeX source code and compiled single-page PDF resumes for **Nakka Hemanth Datta** (IIT Madras).

## 📑 Resume Profiles

| File | Target Role | Focus Areas |
| :--- | :--- | :--- |
| **`resume_hemanth_ml.tex`** | **AI / Machine Learning Engineer** | LLMs, Agentic Systems, Diffusion Models, Vision-Language Adaptation, ML Research & Patents |
| **`resume_hemanth.tex`** | **General / AI Systems / Full Stack** | End-to-End AI Applications, LangGraph Multi-Agent Orchestration, Distributed Systems, Cloud Architecture |
| **`resume_hemanth_sde.tex`** | **Software Development Engineer (SDE)** | High-Performance Distributed Systems, C++ Key-Value Store, Raft Consensus, Systems Architecture, Full-Stack Dev |

## 🛠️ Design & Features

- **Class File**: [`resume.cls`](resume.cls) custom two-column layout (`paracol`), tight geometry, and zero-overflow single-page design.
- **Palette**: Deep Violet/Indigo (`#1D007F`) for headers, dividing rules, and hyperlinks.
- **Icons & Badges**: FontAwesome 5 integration, IIT Madras emblem, and direct link to interactive AI Twin (`⌘`).

## 🔨 Building from Source

Ensure `texlive-full` or necessary LaTeX packages (`paracol`, `fontawesome5`, `menukeys`, `graphicx`, `enumitem`) are installed:

```bash
# Machine Learning Resume
pdflatex -interaction=nonstopmode resume_hemanth_ml.tex

# General / AI Systems Resume
pdflatex -interaction=nonstopmode resume_hemanth.tex

# SDE Resume
pdflatex -interaction=nonstopmode resume_hemanth_sde.tex
```
