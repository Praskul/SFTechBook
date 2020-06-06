public class University {
	public string uName;
    public integer uCode;
    
    public list<Students> stLists;
    public Course cs;
    
    public University(string uName, integer uCode){
        this.uName = uName;
        this.uCode = uCode;
        Students st1 = new Students();
        st1.sName='Prashantha';
        st1.sAge=28;
        st1.passed=true;

        Students st2 = new Students();
        //st2.sName='Praveen';
        st2.sAge=23;
        st2.passed=true;

        Students st3 = new Students();
        st3.sName='Rama';
        //st3.sAge=50;
        st3.passed=true;
        
        cs = new Course();
        cs.cName='Compt Science';
        cs.cCode = 007;
        stLists = new list<Students>{st1,st2,st3};
        
    }
    public class Students{
        public string sName;
        public integer sAge;
        public boolean passed;
    }    
    public class Course{
        public string cName;
        public integer cCode;
    }
}