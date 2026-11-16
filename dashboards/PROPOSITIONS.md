# Trois propositions de dashboard

Les dashboards utilisent des cartes Home Assistant et des sections
adaptatives : côte à côte sur grand écran, empilées sur smartphone.

| Proposition | Adresse | Organisation |
| --- | --- | --- |
| Maison · Quotidien | `/maison-quotidien/accueil` | Synthèse maison, favoris, famille et agenda ; détails en sous-vues |
| Maison · Pièces | `/maison-pieces/rdc` | Une seule page : commandes globales, portail/portillon, famille et agenda, puis toutes les pièces |
| Maison · Pilotage | `/maison-pilotage/volets` | Commandes par fonction : Volets, Lumières, Entretien, Entrée et Suivi |

## Ajustements communs

- Le prénom affiché est **Gaetan**.
- Aucune image du visiophone n’est chargée. Les boutons d’ouverture du portail
  et du portillon restent disponibles, avec confirmation.
- Les mesures par pièce affichent seulement une icône, une valeur et son unité :
  thermomètre pour la température, pourcentage d’eau pour l’humidité. Toucher une
  mesure ouvre ses détails. Les noms des pièces restent visibles sur l’accueil
  et dans le suivi pour situer les mesures.
- Sur la page Pièces, les mesures utilisent `custom:button-card`, déjà présent
  dans le dashboard global : valeurs de 24 px, icônes de 22 px, deux mesures sur
  une seule ligne de 44 px. Le style est partagé dans `mesures-templates.yaml`.
- **Tout ouvrir / Tout fermer** est accessible dans la première section du
  premier écran des trois variantes. Chaque bouton cible les six volets.
- Les commandes des volets ne changent pas leur mode. Le mode Manuel suspend
  la gestion liée au mode ; la fermeture indépendante au lever du jour reste active.
- **Éteindre éclairages** cible les quatre lampes et les deux prises d’éclairage.
- Les cartes communes et les deux boutons globaux sont chargés avec `!include`
  depuis `dashboards/propositions/`.

## Choix conseillé

Le dashboard **Pièces** rassemble maintenant la maison sur une seule page :
température/humidité pour chaque pièce équipée, commandes de ses volets et de ses
éclairages disponibles. Le salon comprend les quatre lampes, les deux prises
d’éclairage, l’extinction groupée et l’ambiance TV. Aucun éclairage d’une autre
pièce n’est référencé dans la configuration du dépôt.

Les présences des quatre membres de la famille, l’agenda du jour et celui de la
semaine restent visibles sur cette même page, ainsi que les commandes globales
des six volets et celles du portail et du portillon, sans image du visiophone.

Après déploiement, recharger la page du dashboard. La disponibilité des entités
et le rendu mobile sont à confirmer sur l’instance Home Assistant.
