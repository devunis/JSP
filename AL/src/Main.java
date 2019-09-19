
import java.util.Arrays;


public class Main {

    public static void main(String[] args) {

        Arraylist al = new Arraylist();

        System.out.println(al.size());
        al.add(3);
        System.out.println(al.size());

        for(int i=0; i<al.liSize; i++){
            System.out.println(al.get(i).toString());
        }
	// write your code here
    }
}
