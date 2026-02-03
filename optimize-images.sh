#!/bin/bash
# Script d'optimisation des images pour le tutoriel WEDO
# Nécessite: ImageMagick (brew install imagemagick)

cd "$(dirname "$0")/img"

echo "=== Optimisation des images ==="

# Optimiser les PNG (captures d'écran)
for f in *.png; do
    if [[ "$f" != *"-optimized"* ]] && [[ "$f" != "favicon"* ]] && [[ "$f" != "apple-touch"* ]]; then
        # Vérifier si c'est un vrai PNG (pas un SVG renommé)
        if file "$f" | grep -q "PNG image"; then
            echo "Optimisation de $f..."
            # Redimensionner max 800px de large, qualité 85%
            magick "$f" -resize '800x>' -quality 85 "${f%.png}-optimized.png"
            # Créer version WebP
            magick "$f" -resize '800x>' -quality 80 "${f%.png}.webp"
        fi
    fi
done

# Créer favicons si nécessaire
if [ -f "favicon.jpg" ] || [ -f "favicon.png" ]; then
    echo "Génération des favicons..."
    SRC=$([ -f "favicon.png" ] && echo "favicon.png" || echo "favicon.jpg")
    magick "$SRC" -resize 32x32 favicon-32x32.png
    magick "$SRC" -resize 180x180 apple-touch-icon.png
fi

echo "=== Terminé ==="
ls -lh *.webp 2>/dev/null || echo "Aucun fichier WebP généré"
