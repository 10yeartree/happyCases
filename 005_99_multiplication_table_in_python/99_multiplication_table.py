def main():
	for i in range(1, 10):
		for j in range(1, i+1):
			if j == 1:
				print "%dx%d=%d" % (j, i, i*j),
			else:
				print "%dx%d=%-2d" % (j, i, i*j),
		print ""


if __name__ == "__main__":
	main()