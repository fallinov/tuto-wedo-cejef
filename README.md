# Tutoriel WEDO - CEJEF

Guide de démarrage pour les collaborateurs du CEJEF qui utilisent WEDO pour la première fois.

## Aperçu

Site web statique présentant les fonctionnalités essentielles de WEDO :
- Connexion et navigation
- Gestion des réunions et ordres du jour
- Gestion des tâches
- Suivi des actions

## Structure

```
tuto-wedo-gcn/
├── index.html          # Page principale (Tailwind CSS)
├── img/
│   ├── logo-cejef.png  # Logo officiel CEJEF
│   ├── favicon.svg     # Icône navigateur
│   └── *.png           # Captures d'écran (à ajouter)
├── README.md
└── CLAUDE.md
```

## Captures d'écran à faire

| Fichier | Description |
|---------|-------------|
| `01-connexion.png` | Page de connexion cejef.wedo.swiss |
| `02-mes-taches.png` | Vue "Mes tâches" |
| `03-navigation.png` | Navigation vers les réunions |
| `04-odj.png` | Structure ordre du jour |
| `05-ajouter-point.png` | Ajouter un point ODJ |
| `06-creer-tache.png` | Créer une tâche depuis une réunion |

## Lancer en local

```bash
# Option 1 : Ouvrir directement
open index.html

# Option 2 : Serveur local
npx serve .
```

## Déploiement

### GitHub Pages
```bash
git push origin main
# Settings → Pages → Source: main branch
```

### Serveur CEJEF
```bash
# Copier sur cejef.divtec.me
scp -r . user@server:/path/to/tutos/wedo-gcn/
```

## Technologies

- **HTML5** : Structure sémantique
- **Tailwind CSS** : Styling via CDN (avec `defer` pour performance)
- **Palette CEJEF** : Couleurs institutionnelles
- **Lazy loading** : Images chargées à la demande

## Optimisation des images

Après avoir ajouté de vraies captures d'écran :

```bash
# Installer ImageMagick si nécessaire
brew install imagemagick

# Lancer le script d'optimisation
./optimize-images.sh
```

Le script génère :
- Versions optimisées PNG (max 800px, qualité 85%)
- Versions WebP (meilleure compression)
- Favicons multi-formats

## Palette de couleurs

| Nom | Hex | Usage |
|-----|-----|-------|
| Bleu nuit | `#0F2A44` | Principal, headers, boutons |
| Rouge jurassien | `#C62828` | Alertes uniquement |
| Gris clair | `#F4F6F8` | Fond de page |
| Gris anthracite | `#1F2933` | Texte principal |
| Gris moyen | `#6B7280` | Texte secondaire |

## Liens

- **WEDO CEJEF** : https://cejef.wedo.swiss/
- **Centre d'aide WEDO** : https://help.wedo.com/fr
- **YouTube WEDO** : https://www.youtube.com/@WEDO-CH-FR

---

*CEJEF · Centre Numérique (CNS)*
