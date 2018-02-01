# Petites indications sur la Polymorphic Association...

## Pour créer un commentaire sur un Link (sans oublier les paramètres propres à chacun)

Créer un User (`julie = User.new`) et lui associer un Link (`coucou = Link.new`)

Créer un autre User (par exemple franck =`User.new`)

Créer un Comment (`salut = Comment.new`) et lui associer franck en User.

Puis associer salut à coucou
`salut.commentable = coucou`

## Pour commenter un commentaire

Créer un autre Comment (super) et lui associer julie en User (super.user = julie)

Puis associer super à salut
`super.commentable = salut`

Et voilà :)

PS : pour le Regex, j'ai forcé le format HTTP/HTTPS, c'est peut être un peu trop drastique ;)