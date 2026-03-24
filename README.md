Projet DevOps – Gestion des Absences
Description

Ce projet consiste à développer une application de gestion des absences des étudiants, en mettant en place une infrastructure DevOps complète.
L’objectif est d’automatiser le déploiement, la gestion et le monitoring de l’application.

Objectifs
Développer une application de gestion des absences
Mettre en place une architecture DevOps
Automatiser le déploiement avec CI/CD
Utiliser des outils modernes (Docker, Kubernetes, Terraform, Ansible)

Technologies utilisées
 Python (Flask)
 Docker
 Kubernetes
 Terraform
  Ansible
  CI/CD (GitLab CI)
Structure du projet
Projet_DeVops/
│
├── app/
│   ├── app.py
│   └── requirements.txt
│
├── ansible/
├── terraform/
├── kubernetes/
│
├── rapport_Projet_devops.pdf
├── presentation_Projet_Devops.pptx
└── README.md
Installation et exécution
 1. Cloner le projet
git clone https://github.com/OuarrakLayla/Projet_DeVops.git
cd Projet_DeVops
 2. Lancer avec Docker
docker build -t absence-app .
docker run -p 5000:5000 absence-app
 3. Accéder à l’application

 http://localhost:5000

 CI/CD Pipeline

Le projet utilise GitLab CI pour :

Build de l’image Docker
Test de l’application
Déploiement automatique
 Déploiement Kubernetes

Les fichiers de configuration Kubernetes permettent :

Déploiement de l’application
Gestion des services
Scalabilité
 Infrastructure as Code
Terraform : Provisionnement des ressources
Ansible : Configuration automatique des serveurs
 Résultats
Application fonctionnelle
Déploiement automatisé
Architecture scalable et maintenable
 Auteurs
Layla Ouarrak
 Remarques
Le fichier absences.db est utilisé dans l’application pour stocker les données des absences
Utiliser .gitignore pour exclure les fichiers inutiles
 Conclusion

Ce projet démontre l’importance du DevOps dans le cycle de vie des applications modernes, en combinant développement, automatisation et déploiement.
