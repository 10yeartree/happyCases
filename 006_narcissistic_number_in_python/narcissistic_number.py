def main():
	for i in range(100, 1000):
		bai = i / 100		
		shi = (i / 10) % 10
		ge = i % 10

		if bai ** 3 + shi ** 3 + ge ** 3 == i:
			print "%d*%d*%d + %d*%d*%d + %d*%d*%d = %d" % (bai,bai,bai, shi,shi,shi, ge,ge,ge, i)

if __name__ == "__main__":
	main()