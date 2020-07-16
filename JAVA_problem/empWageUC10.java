public class empWageUC10{

private int noOfCompany;
private Company [] companyArr;

public empWageUC10(){
   this.companyArr = new Company[5];
   this.noOfCompany = 0;
   }
//Add company details and store in array
private void addCompany(final String name, final int empRate, final int totalWorkingDays, final int maxHrsInMonth){
   final Company company = new Company(name, empRate, totalWorkingDays, maxHrsInMonth);
   companyArr[noOfCompany] = company;
   noOfCompany++;
}


private void computeEmpWage(){
   for (int i = 0; i < noOfCompany; i++){
   Company company = companyArr[i];
   this.computeEmpWage(company);
   System.out.println(company);
}
}

// calculate the wages of employee  using switch case
private void computeEmpWage(final Company company){
      int empHrs = 0, totalEmpHrs = 0, totalWorkingDays = 0;
      while(totalEmpHrs <= company.getMaxHrsInMonth() && totalWorkingDays < company.getTotalWorkingDays()){
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
   final int wage = totalEmpHrs * company.getEmpRate();
   company.setTotalEmpWage(wage);
}
//Main Function
   public static void main(String [] args){
      empWageUC10 eb = new empWageUC10();
      eb.addCompany("Apple", 20, 20, 100);
      eb.addCompany("Samsung", 20, 20, 100);
      eb.computeEmpWage();
}
}
//New Class  for Storing data of Company
class Company{
   private String name;
   private int empRate;
   private int totalWorkingDays;
   private int maxHrsInMonth;
   private int totalEmpWage;
public Company(){}

public Company(final String name, final int empRate, final int totalWorkingDays, final int maxHrsInMonth){
   this.name= name;
   this.empRate= empRate;
   this.totalWorkingDays= totalWorkingDays;
   this.maxHrsInMonth= maxHrsInMonth;
}
public void setName(final String name){
   this.name= name;
}
public String getName(){
   return name;
}
public void setEmpRate(final int empRate){
   this.empRate= empRate;
}
public int getEmpRate(){
   return empRate;
}
public void setTotalWorkingDays(final int totalWorkingDays){
   this.totalWorkingDays= totalWorkingDays;
}
public int getTotalWorkingDays(){
   return totalWorkingDays;
}
public void setMaxHrsInMonth(final int maxHrsInMonth){
   this.maxHrsInMonth= maxHrsInMonth;
}
public int getMaxHrsInMonth(){
   return maxHrsInMonth;
}
public void setTotalEmpWage(final int totalEmpWage){
   this.totalEmpWage= totalEmpWage;
}
public int getTotalEmpWage(){
   return totalEmpWage;
}
//Overriding total employee wages
@Override
public String toString(){
   return "Total Emp wage for: "+ name + ": "+ totalEmpWage;
}
}

