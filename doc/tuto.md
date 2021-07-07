
https://symfony.com/doc/current/doctrine/reverse_engineering.html
https://ourcodeworld.com/articles/read/1386/how-to-generate-the-entities-from-a-database-and-create-the-crud-automatically-in-symfony-5


#### Lancement du serveur

symfony server:start

#### Génération des entitées

php bin/console doctrine:mapping:import "App\Entity" annotation --path=src/Entity


#### Génération des getters et des setters

php bin/console make:entity --regenerate App
ou 
php bin/console make:entity --regenerate App\\Entity\\Country


#### Création du CRUD

php bin/console make:crud


#### Installation de EasyAdmin

composer require easycorp/easyadmin-bundle
symfony console make:admin:dashboard
symfony console make:admin:crud


#### Installation de MakerBundler

https://symfony.com/doc/current/bundles/SymfonyMakerBundle/index.html

composer require --dev symfony/maker-bundle


#### Installation du système d'authentification

https://blog.dayo.fr/2020/05/symfony-makeuser-auth-registration-form-et-reset-password/

composer require symfonycasts/reset-password-bundle

php bin/console make:user
php bin/console make:migration
php bin/console doctrine:migrations:migrate

php bin/console make:auth

php bin/console make:registration-form
composer require symfonycasts/verify-email-bundle
php bin/console make:migration
php bin/console doctrine:migrations:migrate

php bin/console make:reset-password
php bin/console make:migration
php bin/console doctrine:migrations:migrate


#### Installation du profiler

composer require --dev symfony/profiler-pack



#### Configuration des email

https://www2.itroom.fr/composant-mailer-symfony-5-4-avec-ovh/


#### Force la mise-à-jour des tables à partir des entitées

php bin/console doctrine:schema:update --force
