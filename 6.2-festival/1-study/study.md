# Étude avant conception

Récapitalatif de la demande :

## Composants visuels public :
- **Une entête** : MENU (Présentation, Historique du festival, Agenda de l'édition actuelle) | RECHERCHE | PANIER(RESERV) | COMPTE/AUTH
- **Page d'acueil (home)** : PROCHAINS CONCERT (event) | LE FESTIVAL (vers Présentation) | RÉSEAUX (Liens vers nos réseaux sociaux)
- **Pied de page**: NewsLetter | Plan de l'app | Juridique
- **Page recherche** : Tier(Date croissante, Date décroissante, Prix croissant, Prix décroissant) , Filter(Date, Prix, Artiste)
- - Recherche Tags, MetaKeywors(Mots clés) dans les articles -> Boite (case article)
- - Recherche Tags, MetaKeywors(Mots clés) dans historique -> Boite (case date d'historique)
- - Recherche Tags, MetaKeywors(Mots clés) dans contact -> Boite (Festival Contact)
- - Recherche Tags, MetaKeywors(Mots clés) dans artiste et groupes d'artiste -> Boite (artist) / Boite (artist_group)
- - Recherche Tags, MetaKeywors(Mots clés) dans concerts(events) -> Boite (event)

- **Page Information** : Présentation, articles et historique
Composé de 
- - Nos articles (News) : Autre catégories d'articles (Ex: COVID19 Pensez à prendre vos masques ! ;) )
- - A propos du Festival : Article Catégorisés "about"
- - Historique : Frise chronologie du festival
- **Page mon compte** : Information de mon compte
- - Profil (Icon/Photo de profil, Nom, Prénom ou Pseudo, Centres d'intérets, )
- - Coordonnées (Adresses, Email, ...)
- - Mes tickets (Ensembles des réservations enregistré sur les compte)
- - Information de paiement (Information de carte, Compte Paypal relié ou autre...)
- - Juridiques (Conditions Générals et d'utilisations signées, rétractation)
- - Déconnexion
- **Edition actuelle** : Liste de tous les concert par semaine accompagner d'une visualisation du planning
- - Boite planning : Premettant de réduire ou augment la liste de boite des concert
- - Boite event(planning)
- **Autre composants visuels** : 
- - CHAT (Serv.Client), 
- - PREVIEW_EVENT(Prévisualisation d'un concert), 
- - PREVIEW_ARTIST (Prévisualisation d'un artiste), 
- - PREVIEW_ARTISTS_GROUP (Prévisualiser un group d'artiste), 
- - Cookies et conditions générales

## Composants visuel WebMaster :
- **Gestion des articles**
Création, modification, suppression d'articles (dont ceux de présentation)
- **Gestion des évenements de l'édition**
Création, modification ou suppression d'un évenement
- **Gestion de l'édition actuelle**
Création, modification (ou suppression) d'une édition, planning, horaires
- **Gestion des Festivaliers**
Création, modification ou suppression d'un compte festivalier
Création, modification ou suppression d'un ticket (réservation)
Création, modification ou suppression messages (chat)
- **Gestion des compte Réseaux Sociaux**
Ajouts, modifications ou supression des fonctionnalités de relation entre la plateforme et les compte réseaux sociaux

## Composants visuel Service Client :
- **Gestion de compte festivalier**
- - Modification des informations du compte
- - Controlle des données
- - Suspenssion pour fraude ou autre non respects des conditions générales
- **Gestion des commandes (réservations) des festivaliers**
- - Création, modification et suppression de réservation
- - Envoie de liens de paiement 
- **Relation directe avec le service maintenance bancaire**
- - Demande d'informations et vérification d'incidents
- - Envoie demande de déblocage ou autre erreurs sur un client
- **Messagerie directe avec les festivalier**
- - Chat en ligne
- - Emailling depuis interface

## Super Admin
- **Gestion des pages**
Ajouter, Déplacer, Modifer ou supprimer un pages
- **Gestion des composants**
Activation, désactivation des composants
- **Gestion complete des utilisateurs** 
Possibilité de créer, modifier, supprimer tout type de compte utilisateur

- **Gestion complète des composant du Web Master**
Voir WebMaster
- **Gestion complète des composant du service client**
Voir Service Client
- **Gestion complète du répertoire du code sources (Github)**
Compte Github Authoriser sur le répertoire et la branche principale du répertoire Github
- **Gestion complète du flux, des ips bloqués, cdn, nom de domaine et de l'hébergements**
Voir les logs sur l'hébergements Cloud/Dédié
Voir, ajouter, supprimer les ips bloqué sur le serveur 
Activation, Désactivation, Changement de localistion du CDN 
Modification des paramètre DNS
Modification du nom de domains Registar
- **Statistiques et règlement de référencements**
Voir les statistiques
Modifier les paramètres généraux et variables de référencement (Ex: $META_TITLE_PAGE="Découvrez la page"+$page_name+"de votre super festival "+$festival_name+". Bienvenue !")

## Composant non visuels et moteurs
- **Moteur de référencement SEO des artistes, article et concert**
- - Révision et machinLearning des méta mots clés des artistes, groupes, articles, concerts, en fonction :
- - - Meta mots de recherche Google, Bing des mots enregistré
- - - Des commentaires sur les réseaux sociaux
- - - Des synonymes
- - - Des mise à jour et correction des règles de référencements
- **Moteur d'enrichissement goûts des festivaliers**
- - Comptabilisation des données externes des compte de réseau sociaux reliés
- - Comptabilisation des données internes
- - - Clique utilisateur article
- - - Clique utilisateur artistes et groupes
- - - Clique utilisateur concerts
- - - Fréquence de connection
