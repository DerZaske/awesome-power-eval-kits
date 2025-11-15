# Scripts

Automation scripts for the awesome-power-eval-kits repository.

## generate_kit_catalog.py

Generates markdown documentation from the YAML kit catalog.

### What it does

1. Reads `kits/kits_catalog.yml` (master data source)
2. Generates `kits/kits_catalog.md` - comprehensive table of all kits
3. Generates `kits/kit_catalog_section.md` - categorized sections for README

### Requirements

```bash
pip install pyyaml
```

Or install all requirements:

```bash
pip install -r requirements.txt
```

### Usage

From the repository root:

```bash
python scripts/generate_kit_catalog.py
```

Or use the PowerShell helper script:

```powershell
.\scripts\update_catalog.ps1
```

### Output

- **kits/kits_catalog.md**: Full table with all kit details
- **kits/kit_catalog_section.md**: Categorized sections (Easy/Medium/Advanced) formatted for README

### Workflow

1. Update `kits/kits_catalog.yml` with new kits or changes
2. Run `python scripts/generate_kit_catalog.py`
3. The README.md Kit Catalog section is automatically updated
4. Commit all changes together

### Kit Categories

Kits are automatically categorized based on difficulty level:

- **Easy (Entry-Level)**: `Low`, `Low-Medium` difficulty
- **Medium**: `Medium`, `Medium-High` difficulty
- **Advanced / High Power**: `High` difficulty
