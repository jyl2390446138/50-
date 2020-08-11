package test_1;

import java.util.HashSet;
import java.util.Random;
import java.util.Set;

/**
 * Hello world!
 *
 */
public class App {

    public static int[] nums=new int[500000];

    public static void main( String[] args ) {
        for (int i = 0; i <500000 ; i++) {
            nums[i]=i;
        }
        int[] ints = fiveHundredThousand(nums);
       /* int j=1;
        for (int i = 0; i < ints.length; i++) {

            System.out.print(ints[i]+",");
            j++;
            if (j==100){
                System.out.println();
                j=1;
            }
        }*/

        boolean flag = isFiveHundredThousand(ints);
        System.out.println(flag);
    }


    public static int[] fiveHundredThousand(int[] args){
        int[] ram = new int[100000];

        Random ran = new Random();
        Set<Integer> set = new HashSet<>();
        for (int i=0;i<Integer.MAX_VALUE;){
            int num = ran.nextInt(500000);
            int size1=set.size();
            set.add(num);
            int size2=set.size();
            if (size1!=size2){
                ram[i]=num;
                i++;
                if (size2==100000){
                    break;
                }
            }
        }


        return ram;
    }

    public static boolean isFiveHundredThousand(int[] nums){
        if(nums.length!=100000){
            return false;
        }

        Set<Integer> test = new HashSet<>();

        for (int i =0;i<nums.length;i++ ){
            test.add(nums[i]);

        }
        if (test.size()==100000){
            return true;
        }

        return false;
    }

}
