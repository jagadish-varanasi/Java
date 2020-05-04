class A{
	int i;
	
	
	
	class B{
		int j;
	}
}
public class InnerDemo {

	public static void main(String[] args) {
		A a=new A();
		a.i=10;
		A.B b= a.new B();
        b.j=20;
        
        System.out.println(a.i);
        System.out.println(b.j);
	}

}
