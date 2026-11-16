# Trois propositions de dashboard

Les dashboards utilisent des cartes natives Home Assistant et des sections
adaptatives : côte à côte sur grand écran, empilées sur smartphone.

| Proposition | Adresse | Organisation |
| --- | --- | --- |
| Maison · Quotidien | `/maison-quotidien/accueil` | Synthèse maison, favoris, famille et agenda ; détails en sous-vues |
| Maison · Pièces | `/maison-pieces/rdc` | Commandes globales en tête du RDC, puis équipements par pièce ; onglets Étage et Suivi |
| Maison · Pilotage | `/maison-pilotage/volets` | Commandes par fonction : Volets, Lumières, Entretien, Entrée et Suivi |

## Ajustements communs

- Le prénom affiché est **Gaetan**.
- Aucune image du visiophone n’est chargée. Les boutons d’ouverture du portail
  et du portillon restent disponibles, avec confirmation.
- Les mesures par pièce affichent seulement une icône, une valeur et son unité :
  thermomètre pour la température, pourcentage d’eau pour l’humidité. Toucher une
  mesure ouvre ses détails. Les noms des pièces restent visibles sur l’accueil
  et dans le suivi pour situer les mesures.
- **Tout ouvrir / Tout fermer** est accessible dans la première section du
  premier écran des trois variantes. Chaque bouton cible les six volets.
- Les commandes des volets ne changent pas leur mode. Le mode Manuel suspend
  la gestion liée au mode ; la fermeture indépendante au lever du jour reste active.
- **Éteindre éclairages** cible les quatre lampes et les deux prises d’éclairage.
- Les cartes communes et les deux boutons globaux sont chargés avec `!include`
  depuis `dashboards/propositions/`.

## Choix conseillé

Commencer par **Quotidien** pour une vision rapide et les commandes habituelles.
Choisir **Pièces** pour retrouver les équipements par emplacement, ou **Pilotage**
pour privilégier les commandes par fonction.

Après déploiement, recharger la page du dashboard. La disponibilité des entités
et le rendu mobile sont à confirmer sur l’instance Home Assistant.
