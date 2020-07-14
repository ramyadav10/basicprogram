public class EmpWageUC2{
private static final int IS_FULL_TIME=1;

public static void main(String [] args){
	empCheck();
}

public static void empCheck(){
	double ranNumber = Math.floor(Math.random() * 10 ) % 3;
		if(IS_FULL_TIME == ranNumber){
			System.out.println("FullTime");
			final double wage = calculateWage(20, 8);
			System.out.println("Total emloyee wage is:" + wage);
}
		else{
			System.out.println("Absent : 0.0");
}
}

public static double calculateWage(final int ratePerHrs, final int totalHrs){
	final double cal= ratePerHrs*totalHrs;
	return cal;
}
}

