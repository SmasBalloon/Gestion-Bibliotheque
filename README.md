# SAE Système d’Exploitation — Gestion de Bibliothèque

Ce projet propose une gestion simplifiée d’une bibliothèque en Bash.  
Il a été réalisé dans le cadre d’une SAE (Situation d’Apprentissage et d’Évaluation) du module Système d’Exploitation.

## Fonctionnalités réalisées

- **Ajout de livres** : possibilité d’enregistrer de nouveaux ouvrages dans la bibliothèque.
- **Recherche de livres** : recherche par titre, auteur ou identifiant.
- **Suppression de livres** : retrait d’un ouvrage du catalogue.
- **Affichage du catalogue** : affichage de la liste complète des livres présents.
- **Gestion des emprunts et retours** : suivi des livres empruntés et rendus.

## Scripts principaux

- `ajouter_livre.sh` : script pour ajouter un livre.
- `rechercher_livre.sh` : script pour la recherche dans le catalogue.
- `supprimer_livre.sh` : script pour supprimer un livre.
- `afficher_catalogue.sh` : script pour visualiser tous les livres disponibles.
- `emprunter_retourner.sh` : script pour gérer les emprunts et les retours.

> *NB : Les noms de scripts sont à adapter selon ceux réellement présents dans le dépôt.*

## Organisation

Les données sont stockées dans des fichiers texte, chaque script interagit avec ces fichiers pour modifier ou consulter le catalogue de la bibliothèque.

## Utilisation

Rendez les scripts exécutables puis lancez-les depuis un terminal Bash :

```bash
chmod +x ajouter_livre.sh
./ajouter_livre.sh
```

## Auteur

Projet réalisé par SmasBalloon.

---

N’hésite pas à préciser ou compléter cette structure selon le détail de tes scripts et les fonctionnalités effectivement implémentées !
