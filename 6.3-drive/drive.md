# Drive

## Présentation

L'enseigne de supermarché Les Mousquetons souhaite mettre un drive click and collect, dans leur réseau.

Ils disposent d'une couverture nationale avec un magasin dans chaque préfecture et sous-préfecture.

Chaque magasin sera équipé d'une zone de retrait pouvant accueillir 10 clients toutes les 20 minutes sur une tranche horaire de 10h à 18h.

Toute commande devra être demandé au plus tard 2 jours avant la date et l'horaire de retrait.

La cible visée est la clientèle de notre enseigne.

Remarque :

Le stock du magasin sera aussi le stock du drive.

## Contenu

Le catalogue produit est identique à l'ensemble des magasins, le référentiel est d'ailleurs centralisé et distribué via une API Restfull, vous disposerez uniquement des droits en lecture :

- Chaque produit et classé dans un arborescence de rayons, sous-rayons, avec une profondeur différente suivant les rayons (un flux permet de récupérer l'ensemble de l'arborescence)

- Chaque produit est défini par un code unique, relié au code unique du rayon, et disposant de toutes les informations utiles (nom, description, déclinaisons, prix, poids/volume, composition, nutriscore ....) un flux permet de récupérer l'ensemble des produits en fonction du code d'un rayon

- Pour le stock, un flux vous renverra l'ensemble des quantités disponibles pour l'ensemble des produits d'un magasin en fonction de l'identifiant du magasin :

  - code produit
  - quantité disponible

- Un dernier flux permet de récupérer en fonction de coordonnées GPS ou d'un code postal, la liste des magasins dans un rayon de 50 km (identifié par un nom une adresse, un tel, les horaires, et le code d'identification du magasin.

Remarque: ces différents flux vous renverrons des données au format JSON, et peut être utilisé en temps réel (la montée en charge est géré en amont)

A vous d'imaginer un dispositif digital permettant :

- au client de commander
- à l'équipe logistique de préparer les commandes

## Contraintes

- la base de données des commandes / utilisateurs devra être accessible via une API afin de pourvoir l'utiliser dans le futur avec une borne, une application mobile ....
- l'hébergement sera pris en charge par la DSI Les Mousquetons, une solution sera réfléchi en accord entre le prestataire et notre DSI
- les interfaces devront être réactives et utilisé les principes d'une webapp, donc un seul développement pour les fronts.

## Remarques

- soyez force de propositions pour implémenter des fonctionnalités permettant aux clients de pouvoir utiliser l'interface le plus simplement possible et le plus rapidement.

- une qualification du catalogue produits pourra être modifier par notre DSI, suivant l'évolution du projet (au niveau du décrémentation du stock)

## Objectifs

on se concentrer sur 2 points :

- le particulier qui passe une commande
- le préparateur de commande (qui prépare la commande)

2 diagrammes d'activités

le diagramme de classe

livrer un pdf avec ces 3 diagrammes
