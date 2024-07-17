import java.util.Scanner;
import java.util.ArrayList;

public class submission {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        ArrayList<Integer> arr = new ArrayList<>();

        for (int i = 0; i < n; i++) {
            int x = sc.nextInt();
            arr.add(x);
        }

        sc.close();

        int maxx = arr.get(0);
        int maxIndex = 0;
        for (int i = 1; i < n; i++) {
            if (arr.get(i) > maxx) {
                maxx = arr.get(i);
                maxIndex = i;
            }
        }

        System.out.println(maxIndex);
    }
}