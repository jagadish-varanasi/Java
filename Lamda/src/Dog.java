
@FunctionalInterface
interface Animal {
	void Sound();
}
//class some implements Animal{
//	@Override
//	public void Sound() {
//		// TODO Auto-generated method stub
//		System.out.print("Bark");
//	}
//}




public class Dog {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
//        some s=new some();
//        s.Sound();
//        System.out.print("Done!!");
//	}
		
	Animal a =()->System.out.println("Hello");
			
	   		
	 a.Sound();
}

}