package chp15;
import java.util.*;

class base3{

    static String sumBase3(char[] num1, char[] num2){
        int l1 = num1.length;
        int l2 = num2.length;
        char[] res;
        int i;
        int nml1, nml2, res_nml;
        int carry =0;

        if(l1 != l2){
            System.out.println("function doesn't support numbers of different " +
                                "lengths. if you want to add such numbers" +
                                 "the prefix smaller with required no. of zweros");
        }
        //Note the size of the allocated memory is one more that i/p  lengths for the cases
        // where we have carry at the last like adding D1 and A1
        res = new char[(4 * (l1 + 1))];

        //add all numberals from right to left
        for(i = l1 -1; i >= 0; i--){
            //get decimal values of the numerals of i/p numbers
            nml1 = getNumeralValue(num1[i]);
            nml2 = getNumeralValue(num2[i]);

            //add decimal values of numerals and carry
            res_nml = carry + nml1 + nml2;

            //check if we have carry for next addition of numerals
                if(res_nml >=3)
                {
                    carry = 1;
                    res_nml -= 3;
                }
                else{
                    carry = 0;
                }
                res[i + 1] = getNumeral(res_nml);
        }

        //if there is no carry after last iteration then result should
        // not include 0Th charactrer of the resultant string
        if(carry == 0)
            return String.valueOf(res);

            //if we have carry after last iteration then result should include
            //0th character
            res[0] = '1';
            return String.valueOf(res);
    }
            //function to get value of a numeral for example it returns 10 for input 'A' 1 for 
            // '1', etc

            static int getNumeralValue(char num){
                if(num >= '0' && num <= '2')
                    return (num - '0');

                    //uif we reach this line claler is giving invalid character so we assert and
                    //fail
                    //assert(0)

                    return 0;
            }

            //function to get numeral for a value . for example it returns 'A'
            // for input 10 '1' for 1 etc,

            static char getNumeral(int val){
                if (val >= 0 && val <= 9)
                    return (char)(val + '0');
                
                    //error return
                    return 0;
            }
            public static void main(String[] args){
                char[] num1 = {'0','0','0','0','0','1','1', '2'};
                char[] num2 = {'0','0','0','0','0','0','0','1'};

                System.out.println("result is " + sumBase3(num1, num2));
                char[] start = {'0','0','0','0','0','0', '0', '0'};
                char[] addOne = {'0','0','0','0','0','0', '0', '1'};
                for(int i =0 ; i < 2187 ; i++){
                    String onemore = sumBase3(start, addOne);
                    System.out.print(onemore + " ");
                    char[] temp = new char[8];
                    for(int j = 0; j < 8; j++){
                        if(Character.isDefined(onemore.charAt(j)))
                        temp[j] = onemore.charAt(j+1);
                    }
                    start = temp;
                

                }
                
            }
    }
