public final static String e = "2.718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059";  
public void setup()  
{     
  int v = 2;
  int y = 12;
  String digits = e.substring(v, y);
  for (int num = 2; num < e.length(); num++)
  {
    v++; 
    y++;
    digits = e.substring(v, y);
    double a = Double.parseDouble(digits);
    if (isPrime(a) == true)
    {
      System.out.println(a);
      break;
    }
  }
}  
public void draw()  
{   
  //not needed for this assignment
}  
public boolean isPrime(double a)  
{   
  if (a < 2)
  {
    return false;
  }
  for (int i = 2; i <= Math.sqrt(a); i++)
  {
    if (a % i == 0)
    {
      return false;
    }
  }  
  return true;
} 