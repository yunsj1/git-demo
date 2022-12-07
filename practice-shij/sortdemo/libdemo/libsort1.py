
class libsort1():
      
  ROBOT_LIBRARY_SCOPE = "GLOBAL"
  def sorts_big(self,f):
      f=list(f.split(","))
      for i in range(0,len(f)):
            for j in range(0,len(f)-i-1):
                  if f[j] > f[j+1]:
                        f[j], f[j+1] = f[j+1] ,f[j]
      # a = list(map(int,f))
      return f

   



            
    

  
    


    
   
   
