# Blog exercise..

1. Étude de la demande

- Diagramme d'utilisation

*Un internaute peut lire chaque article publié et peut le commenter s'il est identifié.*
-> user : internante, action: commenté, condition: si authentifié, action découlant des conditions : authentification (ou redirection)

Les commentaires seront modérés par des modérateurs qui n'auront que ce rôle.

-> user: modérateurs, action: modérés les commentaire, condition: authentifié modérateur

*Un rédacteur peut rédiger / éditer / supprimer l'ensemble de ses articles.
Et modérer les commentaires*

⚒ **user: rédacteurs, actions: rédiger un article, modifier ses articles, supprimer ses articles et modérer les commentaires conditions: authentification en tant que rédacteur, accès seulement articles relié à son compte**

*Un administrateur peut éditer et supprimer l'ensemble des articles.
Et modérer les commentaires
Les catégories et les tags seront gérés (création / edition / suppression) par l'administrateur.*


⚒ user: Adminitrateurs action: modifier article, supprimer article, moderer commentaires, creer catégorie, creer tags, modifier categorie, modifier tag, supprimer categorie, supprimer tag

*Les articles seront classés par catégorie (un article dans une seule catégorie), et reliés à un ensemble de Tags.*

⚒ **class: article relation: category, tags**

## Reformulation

```typescript
// Les différents niveau d'authorisation sur une actions utilisateurs
type attibutions = {
    types: {
        basic: "his", // 
        group: {
            "guest",
            "moderator",
            "admin"
            }
        everyone: "all"
    }
}
```
## Utilisateur Visiteurs
```typescript
type visitor = {
    signup: {
            create: "his", // peut créer un compte avec les authorisation seulement en son nom, soit basic 
            update: "his", // peut mettre à jour seulement son compte
            delete: "his" // peut supprimer seulement son compte
        },
    signin: {
        create: "his", // peut instancier un session, que de son compte
        update: "his", // peut modifier une instance de session, que de som compte (ex: déconnexion/reconnexion ou changement d'oglet...)
        delete: "his" // peut mettre fin à la session de son compte
    },
    cookies: {
        ip: 
        author: 
        etc[...]
    }
}
```

## Utilisateur Visiteur Authentifié
user : internante, action: commenté, condition: si authentifié, action découlant des conditions : authentification (ou redirection)
```typescript
// Définitions de la structure relationnel d'un utilisateur de type visiteur (type: "guest")
const user = {
    type: "guest", //internaute visiteur
    author: { // authorisation d'execution
        comment: { // authorisations sur les commentaires
            create: "his", // peut créer en son nom,
            update: "his", // peut modifier ses commentaires,
            delete: "his"  // peut supprimer ses commentaires
        }
    }
}
```
## Utilisateur modérateur
Les commentaires seront modérés par des modérateurs qui n'auront que ce rôle.

-> user: modérateurs, action: modérés les commentaire, condition: authentifié modérateur
```typescript
// Définitions de la structure relationnel d'un utilisateur de type visiteur (type: "guest")
type user = {
    type: {"guest","moderator"}, // visiteur authentifié et ayant des attribution de modération
    author: { // authorisation d'execution
        comment: { // authorisations sur les commentaires
            create: "his", // peut créer en son nom,
            update: "his","group:guest", // peut modifier ses commentaires, peut modifier les commentaire des utilisateur "guest"
            delete: "his","group:guest"  // peut supprimer ses commentaires, peut supprimer les commentaires des utilisateurs "guest"
        },
    }
}
```


## Utilisateur administrateur
*Un administrateur peut éditer et supprimer l'ensemble des articles.
Et modérer les commentaires
Les catégories et les tags seront gérés (création / edition / suppression) par l'administrateur.*

⚒ user: Adminitrateurs action: modifier article, supprimer article, moderer commentaires, creer catégorie, creer tags, modifier categorie, modifier tag, supprimer categorie, supprimer tag


```typescript
// Définitions de la structure relationnel d'un utilisateur de type visiteur (type: "guest")
type user = {
    type: "guest" | "moderator" | "admin", // visiteur authentifié et ayant des attribution de modération
    author: { // authorisation d'execution
        comment: { // authorisations sur les commentaires
            create: "his", // peut créer en son nom,
            update: "his","all", // peut modifier ses commentaires, peut modifier les commentaire des utilisateur "guest"
            delete: "his","all"  // peut supprimer ses commentaires, peut supprimer les commentaires des utilisateurs "guest"
        }, 
        article: { // Autorisation sur les articles
            create: "all", // Create d'article en son nom ??? ou en le nom d'un autre utilisateur ???
            update: "all", // Mettre à jour un article en son nom ou celui de n'importe quel utilisateur
            delete: "all" // Supprimer un article en son nom ou en celui de n'importe quel utilisateur
        },
        categories: {
            create: "all", // Créer un catégorie
            update: "all", // Mettre à jour une catégorie
            delete: "all" // Supprimer une catégorie
        },
        tags: {
            create: "all", // Créer un tag
            update: "all", // Modifier un tag
            delete: "all" // Supprimer un tag
        }
    }
}
```

```typescript
// Définitions de la structure relationnel d'un utilisateur de type visiteur (type: "guest")
type user = {
    type: {"guest","moderator"}, // visiteur authentifié et ayant des attribution de modération
    author: { // authorisation d'execution
        comment: { // authorisations sur les commentaires
            create: "his", // peut créer en son nom,
            update: "his","group:guest", // peut modifier ses commentaires, peut modifier les commentaire des utilisateur "guest"
            delete: "his","group:guest"  // peut supprimer ses commentaires, peut supprimer les commentaires des utilisateurs "guest"
        },
    }
}
```