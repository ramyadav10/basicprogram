public class empWageUC8{
  /* public static final int IS_PART_TIME=1;
   public static final int IS_FULL_TIME=2;
  public static final int EMP_RATE_PER_HRS=20;
   public static final int NUM_OF_WORKING_DAYS=20;
   public static final int MAX_HRS_IN_MONTH=100;
   */
   public static int computeEmpWage(int EMP_RATE_PER_HRS, int NUM_OF_WORKING_DAYS, int MAX_HRS_IN_MONTH ){
      int empHrs= 0, totalEmpHrs=0, totalWorkingDays=0;
      while(totalEmpHrs <= MAX_HRS_IN_MONTH && totalWorkingDays < NUM_OF_WORKING_DAYS){
         totalWorkingDays++;
         final int value = (int) Math.floor(Math.random() * 10) % 3;
         switch(value) {
         case 1:
            empHrs=4;
            break;
         case 2:
            empHrs=8;
            break;
         case 3:
            empHrs=0;
            break;
         }
         totalEmpHrs+=empHrs;
         System.out.println("Day#: "+ totalWorkingDays +"Emp Hrs: "+ empHrs);
      }
   int totalEmpWage = totalEmpHrs * EMP_RATE_PER_HRS;
   System.out.println("Total Emp wage ; "+ totalEmpWage);
   return totalEmpWage;
}
   public static void main(String [] args){
      computeEmpWage(20, 20, 100);
}
}
