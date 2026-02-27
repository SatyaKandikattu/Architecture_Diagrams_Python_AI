# Arch_Diagrams Usage

Quick instructions to generate and preview the Contoso architecture diagrams.

Prerequisites
- Python (3.10+ recommended) and a virtual environment
- Graphviz installed (dot on PATH). On Windows you can install with winget:

```powershell
winget install --id=Graphviz.Graphviz -e --silent
```

Generate diagrams (existing script)

```powershell
cd Arch_Diagrams
.\venv\Scripts\Activate.ps1   # if using the provided venv
python contoso_architecture.py
```

Render DOT manually (helper)

```powershell
cd Arch_Diagrams
.\render_dot.ps1
```

VS Code Tasks
- Open Command Palette → `Tasks: Run Task` → `Render DOT to PNG`
- `Open PNG` will open the generated PNG in the system viewer

Live preview in VS Code
- Install these extensions if you want in-editor preview:
  - Draw.io integration: hediet.vscode-drawio (already in this workspace)
  - Graphviz Preview: joaompinto.vscode-graphviz (optional)

Files
- `diagrams/contoso_architecture.dot` — graph source
- `diagrams/contoso_architecture.png` — rendered image
- `diagrams/contoso_architecture.drawio` — editable draw.io export

Troubleshooting
- If `dot` is not found, ensure Graphviz `bin` directory is on your PATH.
- If graphviz2drawio fails, install `pygraphviz` with Graphviz include/lib paths.
