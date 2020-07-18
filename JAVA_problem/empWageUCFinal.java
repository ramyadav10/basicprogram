import java.util.List;
import java.util.ArrayList;
import java.util.Map;
import java.util.HashMap;

public class empWageUCFinal implements ComputeWage{


private List<Company> companyList;
private Map<String, Company> map;

public empWageUCFinal(){
this.companyList = new ArrayList<>();
this.map = new HashMap<>();

/*companyEmpWageList = new LinkedList();
companyToEmpWageMap = new HashMap();
*/
}
@Override
//Add company details and store in array
public void addCompany(final String name, final int empRate, final int totalWorkingDays, final int maxHrsInMonth){
final Company company = new Company(name, empRate, totalWorkingDays, maxHrsInMonth);
   companyList.add(company);
   map.put(name, company);
}
@Override
public void computeWage(){
for (int i=0; i < companyList.size(); i++){
this.computeEmpWage(companyList.get(i));
System.out.println(companyList.get(i));
}
}
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
@Override
public int getTotalWageByCompanyName(final String name){
      final Company company = map.get(name);
   return company.getTotalEmpWage();
}
public static void main(String[] args){
   ComputeWage cw = new empWageUCFinal();
   cw.addCompany("Apple", 20, 20, 100);
   cw.addCompany("Samsung", 22, 30, 100);
   cw.computeWage();

   final int appleWage = cw.getTotalWageByCompanyName("Apple");
   System.out.println("Total emp wage for Apple is : "+ appleWage);
}

}

interface ComputeWage{
void addCompany(String name, int empRate, int totalWorkingDays, int maxHrsInMonth);
void computeWage();
int getTotalWageByCompanyName(String name);
}
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



