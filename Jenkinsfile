pipeline{
    agent {
        node{
           label 'jk-slave1'  
        }
    }
    stages{
        stage(gitclone){
        steps{
           script{
               bat 'git clone git@github.com:yunsj1/testdemo.git'
           }
        }
        }
       
        stage(pybot){
         
           steps{
             script{
                  try{
                      bat 'pybot -d result testdemo'
                  }catch(Exception err){
                   echo err.getmessage()
                   echo err.toString()
                   }
              }
               
           }
           post{
               success{
                   echo 'test success'   
               }
               failure{
                   echo 'test fail'
                   script{
                        script{
                        mail to: '3114733233@qq.com',
                        subject: "Jenkins Job: ${currentBuild.fullProjectName}",
                        body: "工作环境${env .WORKSPACE} \n 第${currentBuild.number}次构建 \n 构建结果 - ${currentBuild.result}"                       
                        }
                  
                     }
               }
                   
               }
               
           }
               
        
       
    }
}
