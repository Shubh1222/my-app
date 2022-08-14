pipeline {
   
   agent any

   stages {
      stage("Checkout"){

        steps{

            git url:"https://github.com/Shubh1222/my-app.git", branch:"main"
        }
      }

      stage("Unit Test"){

        steps{

            sh "mvn test"
        }
      }

      stage("Build"){
        steps{
            sh "mvn package"
        }
      }

       stage("ArchiveArtifacts"){
        steps{
              archiveArtifacts artifacts: 'target/my-app.war', followSymlinks: false
        }
      }

      stage("Sonar Analysis"){
        steps{
            sh "mvn verify org.sonarsource.scanner.maven:sonar-maven-plugin:sonar -Dsonar.projectKey=devopskey12"
        }
      }

      
      stage("PublishNexus"){

        steps{
            echo "Publish Nexus"
        }
      }

      stage("DeployDev"){

        steps{

            echo "Deploying Dev"
        }
      }

      stage("Approval"){

        steps{

            timeout(time: 15, unit: 'MINUTES'){ 
                   input message: 'Do you approve deployment for production?' , ok: 'Yes'}
        }
      }

      stage("DeployProd"){

        steps{

            echo "Deploying Dev"
        }
      }

   }

   post{
       always{
        echo "=============run always========="
       } 
       success{
        echo "==============run on only success"
       }
       failure{
        echo "===============Pipeline Execution failed=============="
        

       }     


   }
  

}
