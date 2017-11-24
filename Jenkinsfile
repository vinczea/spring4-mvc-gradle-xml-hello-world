pipeline {
    agent any
    stages {
        stage("Checkout") {
            steps {
                git url: "https://github.com/vinczea/spring4-mvc-gradle-xml-hello-world.git"
            }
        }
        stage("Packaging") {
            steps {
                sh "./gradlew build"
            }
        }
        stage("Docker build") {
            steps {
                sh "docker build -t vinczea/devops-pelda ."
            }
        }
        stage("Docker login") {
            steps {
                sh "docker login --username=vinczea --password=$docker_password"
            }
        }
        stage("Docker push") {
            steps {
                sh "docker push vinczea/devops-pelda"
            }
        }
        stage("Deploy to Production") {
            steps {
                sh "ansible-playbook playbook.yml -i inventory/production"
            }
        }
		stage("Acceptance Test") {
            steps {
                sh "sleep 30"
                sh "./acceptance_test.sh"
            }
        }
    }
}