public class EmpWageUC2{
private static final int IS_FULL_TIME=1;
private static final int IS_PART_TIME=2;
private static final int days=20;
public static double totalEarn=0;

public static void main(String [] args){
	empCheck();
	System.out.println("Total Employee Wage :" + totalEarn);
}

public static void empCheck(){

	for (int i=1; i <= days; i++){
	int ranNumber = (int) (Math.random() * 10 ) % 3;
System.out.println(ranNumber);
		if(IS_FULL_TIME == ranNumber){
			System.out.println("FullTime");
			final double wage = calculateWage(20, 8);
			totalEarn = totalEarn + wage ;
}		else if(IS_PART_TIME == ranNumber){
			System.out.println("PartTime");
			final double wage = calculateWage(20, 4);
			totalEarn = totalEarn + wage ;
}
		else{
			System.out.println("Absent");
}
}
}

public static double calculateWage(final int ratePerHrs, final int totalHrs){
	final double cal= ratePerHrs*totalHrs;
	return cal;
}
}

