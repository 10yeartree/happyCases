import java.util.Scanner;

public class Good {
	public static void main(String[] arg) {
		System.out.print("Please input a positive integer number: ");
		Scanner sc = new Scanner(System.in);
		String str = sc.nextLine().trim();
		if (!str.matches("^\\d+$")) {
			System.out.println("input number is illegal");
			System.exit(1);
		}
		int N = Integer.parseInt(str);
		if (!(N > 0)) {
			System.out.println("input number must be positive integer");
			System.exit(1);
		}
		int[] arr = new int[N];

		if (N == 1) {
			arr[0] = 1;
		} else if (N == 2) {
			arr[0] = 1;
			arr[1] = 1;
		} else {
			arr[0] = 1;
			arr[1] = 1;
			for (int i = 2; i < N; i++) {
				arr[i] = arr[i - 1] + arr[i - 2];
			}
		}

		for (int i = 0; i < N; i++) {
			System.out.print(arr[i] + " ");
		}
	}
}