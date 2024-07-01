# Terraform-Wrap-Up
Déploiement d'une Application Web sur AWS


# Scénario
Une startup technologique souhaite déployer une application web haute
disponibilité pour ses utilisateurs. Ils ont besoin d'une infrastructure scalable qui
puisse gérer le trafic élevé sans interruption de service.
Problématique
Comment déployer une application web sur AWS de manière à garantir la haute
disponibilité et la scalabilité ?
Étapes
1. VPC et Sous-réseaux : Créez un VPC avec deux sous-réseaux publics dans
différentes zones de disponibilité.
    ○ Ressource : aws_vpc
    ○ Ressource : aws_subnet
2. Instances EC2 : Déployez deux instances EC2 dans chaque sous-réseau.
    ○ Ressource : aws_instance
3. Load Balancer : Configurez un Load Balancer pour distribuer le trafic entre
les instances EC2.
    ○ Ressource : aws_lb
    ○ Ressource : aws_lb_target_group
    ○ Ressource : aws_lb_listener4. 
4. Sécurité : Configurez les groupes de sécurité pour permettre uniquement le
trafic HTTP et SSH.
    ○ Ressource : aws_security_group
5. Stockage : Utilisez EBS pour attacher des volumes de stockage aux
instances EC2.
    ○ Ressource : aws_ebs_volume
    ○ Ressource : aws_volume_attachment
6. Modules Terraform : Utilisez des modules pour organiser le code.
 créez un module pour le VPC,  et un autre pour les instances EC2,
un pour le Load Balancer, un autre pour les volumes .
7. Variables : Définissez des variables pour les paramètres dynamiques
comme les ID des sous-réseaux, les types d'instances, etc.
    ○ Ressource : variable
8. Outputs : Utilisez des outputs pour exposer des informations essentielles
comme l'URL du Load Balancer.
    ○ Ressource : output
9. Provisioners : Utilisez des provisioners pour exécuter des commandes sur
les instances après leur création, par exemple pour installer des packages
nécessaires.
    ○ Ressource : provisioner
10. Locals : Utilisez des locals pour définir des expressions ou des calculs
réutilisables.
    ○ Ressource : locals
