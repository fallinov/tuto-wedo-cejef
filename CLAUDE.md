# Tutoriel WEDO CEJEF

## Contexte

Site de tutoriel pour les **collaborateurs du CEJEF** découvrant l'outil collaboratif **WEDO** pour la première fois.

### Public cible
- Tout employé du CEJEF utilisant WEDO
- Nouveaux utilisateurs souhaitant une introduction rapide

### Objectif
Permettre aux collaborateurs de :
1. Se connecter à WEDO CEJEF
2. Naviguer dans l'interface et trouver leurs réunions
3. Consulter/modifier les ordres du jour
4. Gérer leurs tâches assignées

---

## Stack technique

- **HTML5** : Page unique `index.html`
- **Tailwind CSS** : Via CDN (pas de build)
- **Pas de JavaScript** : Site statique pur

---

## Charte graphique

### Palette CEJEF Institution Jura

```css
/* Tailwind config */
cejef: {
    primary: '#0F2A44',    /* Bleu nuit institutionnel */
    accent: '#C62828',     /* Rouge jurassien (urgence) */
    bg: '#F4F6F8',         /* Gris clair fond */
    text: '#1F2933',       /* Gris anthracite texte */
    muted: '#6B7280'       /* Gris moyen secondaire */
}
```

### Règles d'usage
- **Bleu nuit** : Navigation, titres, boutons primaires
- **Rouge jurassien** : Réservé aux alertes/urgences uniquement
- **Gris clair** : Fond principal
- **Gris anthracite** : Texte principal
- **Gris moyen** : Labels, informations secondaires

### Logo
- Utiliser le logo officiel CEJEF (`img/logo-cejef.png`)
- Ne jamais recréer ou modifier le logo

---

## Structure du contenu

1. **Vidéos** : 2 vidéos YouTube WEDO (~3-4 min total)
2. **Connexion** : Comment se connecter à cejef.wedo.swiss
3. **Navigation** : Menu principal et espaces de travail
4. **Réunions** : Structure ODJ, 5 étapes d'une réunion
5. **Tâches** : Créer/terminer des tâches
6. **Concepts** : Équipe, Espace de travail, Section, Thématique
7. **Aide** : Ressources et FAQ

---

## Ressources WEDO

| Ressource | URL |
|-----------|-----|
| Instance CEJEF | https://cejef.wedo.swiss/ |
| Centre d'aide | https://help.wedo.com/fr |
| Chaîne YouTube | https://www.youtube.com/@WEDO-CH-FR |
| API Documentation | https://api.wedo.app/documentation |

---

## Conventions

- **WEDO** s'écrit en majuscules
- **CEJEF** s'écrit en majuscules
- Utiliser le vouvoiement pour les instructions
- Garder un ton professionnel et concis

---

## Maintenance

### Mise à jour des captures d'écran
1. Se connecter à cejef.wedo.swiss
2. Faire les captures avec les vrais contenus GCN
3. Remplacer les fichiers dans `img/`

### Modification du contenu
- Éditer directement `index.html`
- Les classes Tailwind sont inline
- Pas de fichier CSS séparé

---

## Liens projet

- **Documentation GCN** : `gcn/README.md`
- **Documentation WEDO** : `projets/wedo.md`
- **ODJ séance 5 février** : `gcn/pv/GCN 2026 03 - 05-02-2026 - ODJ.md`
