public class empWageUC5{
private static final int IS_FULL_TIME=1;
private static final int IS_PART_TIME=2;
private static final int days=20;
public static double totalEarn=0;
public static double wage=0;

public static void main(String [] args){
   empCheck();
   System.out.println("Total Employee Wage :" + totalEarn);
}

public static void empCheck(){

   for (int i=1; i <= days; i++){
   int ranNumber =(int) (Math.floor(Math.random() * 10 ) % 3);

      switch (ranNumber){
      case 1:
         System.out.println("FullTime");
         wage = calculateWage(20, 8);
         totalEarn = totalEarn + wage ;
         break;
      case 2:
         System.out.println("PartTime");
         wage = calculateWage(20, 4);
         totalEarn = totalEarn + wage ;
         break;
         default:
         System.out.println("Absent");
         break;

}
}
}
public static double calculateWage(final double ratePerHrs, final double totalHrs){
   final double cal= ratePerHrs*totalHrs;
   return cal;
}
}
