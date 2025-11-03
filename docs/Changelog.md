# Changelog

Historique simplifié de la création



## Création de la première app (Showcase)

~~~shell
mix phx.new.web showcase --module Showcase --database postgres --no-tailwind --binary-id --verbose
~~~

## Création de la deuxième app (ServHub)

~~~shell
mix phx.new.ecto serv_hub --module ServHub --database postgres --binary-id --verbose
~~~

## Création de la troisième app (Library)

~~~shell
mix phx.new.web library --module Library --binary-id  --database postgres --no-tailwind --verbose  
~~~

Comme on a un seul port, on doit avoir une app (endpoint) principal :

## Création du router : 

~~~shell
mix phx.new.web router --module Router --binary-id  --database postgres --no-tailwind --verbose
~~~

Et : 

* suppression du fichier `endpoint.ex` dans `router`, `showcase` et `library`.
