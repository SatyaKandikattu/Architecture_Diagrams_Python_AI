# Diagram outputs

This folder contains generated diagram outputs for the Contoso architecture.

- `contoso_architecture.dot` — Graphviz DOT source
- `contoso_architecture.png` — PNG render
- `contoso_architecture.drawio` — Draw.io editable file

Quick commands:

PowerShell (render using helper):

```powershell
cd Arch_Diagrams
.\render_dot.ps1
```

VS Code Tasks (open Command Palette → Tasks: Run Task):

- `Render DOT to PNG` — runs `dot` to regenerate the PNG
- `Open PNG` — opens the PNG using the system default image viewer

If you prefer live preview inside VS Code, install the **Graphviz Preview** extension (joaompinto.vscode-graphviz) and then open the `.dot` file and select Preview.
