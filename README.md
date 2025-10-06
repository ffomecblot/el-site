# Portfolio Quarto — Starter

## Prérequis
- Quarto (https://quarto.org/)
- R (recommandé) + packages utiles: renv, targets, tidyverse, quarto
- Compte GitHub (pour GitHub Pages) ou Netlify

## Lancer en local
```bash
quarto preview
```

## Déployer (GitHub Pages)
1. Créez un repo `portfolio` et poussez les fichiers.
2. Activez GitHub Pages (Branch `main`, dossier `/ (root)` ou `/docs` si configuré).
3. Mettez `site-url` dans `_quarto.yml` à l'URL publique.

## Structurer vos contenus
- `projects/` : une fiche `.qmd` par projet avec problème, approche, résultats (KPIs), code et liens.
- `shiny/` : index avec iframes vers vos applis (shinyapps.io ou Posit Connect).
- `posts/` : billets techniques (benchmarks, R tricks, retours d’expérience).
- `talks/` : slides PDF ou RevealJS.
- `cv/` : liens vers vos CV et sources LaTeX.

## Bonnes pratiques (R & IA)
- **Reproductibilité** : `renv::init()`, verrous de versions.
- **Pipelines** : `targets` pour l’orchestration.
- **Données** : anonymisation, sous-échantillons synthétiques (RGPD).
- **Métriques** : exposez MAE/RMSE/Precision/Recall, stabilisez la mesure.
- **Visuels** : GIF courts pour l’UX Shiny, captures png optimisées.
- **Licences** : indiquez licences code/données; masquez infos confidentielles.
---

## Pipelines `targets`
Exemples fournis dans `analysis/` :

```r
# Time series
setwd("analysis/time-series")
targets::tar_make()

# NLP
setwd("analysis/nlp")
targets::tar_make()
```

> Ajoute tes vraies fonctions dans `R/` et remplace les placeholders. Versionne avec `renv::init()`.
