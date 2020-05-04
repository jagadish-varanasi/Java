class Add{
	public int a,b;
	Add(int a,int b) {
	 this.a=a;
	 this.b=b;
	}
	int getAdd() {
		return a+b;
	}
	
}
class sub{
	public int a,b;
	sub(int a,int b) {
	 this.a=a;
	 this.b=b;
	}
	int getsub() {
		return a-b;
	}
	
}

public class Calcu {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
        sub s=new sub(3,2);
        System.err.println(s.getsub());
	}

}
