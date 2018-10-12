public class Good {
	public static void selectionSort(int[] arr, boolean type) {
		int len = arr.length;

		for (int i = 0; i < len - 1; i++) {
			for (int j = i + 1; j < len; j++) {
				if (type == true) {
					if (arr[i] > arr[j]) {
						int temp = arr[i];
						arr[i] = arr[j];
						arr[j] = temp;
					}
				} else {
					if (arr[i] < arr[j]) {
						int temp = arr[i];
						arr[i] = arr[j];
						arr[j] = temp;
					}
				}
			}
		}
	}

	public static void bubbleSort(int[] arr, boolean type) {
		int len = arr.length;

		for (int i = 0; i < len - 1; i++) {
			for (int j = 0; j < len - 1 - i; j++) {
				if (type == true) {
					if (arr[j] > arr[j + 1]) {
						int temp = arr[j];
						arr[j] = arr[j + 1];
						arr[j + 1] = temp;
					}
				} else {
					if (arr[j] < arr[j + 1]) {
						int temp = arr[j];
						arr[j] = arr[j + 1];
						arr[j + 1] = temp;
					}
				}
			}
		}
	}

	public static void main(String[] arg) {
		int[] a = new int[] { 90, 17, 12, 15, 35 };

		selectionSort(a, true);
		for (int i = 0; i < a.length; i++) {
			System.out.print(a[i] + " ");
		}
		System.out.println();

		bubbleSort(a, false);
		for (int i = 0; i < a.length; i++) {
			System.out.print(a[i] + " ");
		}
	}
}