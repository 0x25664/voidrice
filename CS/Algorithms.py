#!/usr/bin/env python3
import random, time
from time import perf_counter

# Get current time
timeStart = time.perf_counter()

# Random Integer List
def randomList(len,r1,r2):
	arr = []
	for i in range(0,len):
		arr.append(random.randint(r1,r2))
	return arr


# Bubble Sort
def bubbleSort(arr):
	for i in range(len(arr)):
		for j in range(i+1, len(arr)):
			if arr[i] > arr[j]:
				arr[i], arr[j] = arr[j], arr[i]
	return arr


# Quick Sort
def quickSort(arr):
	greater, lower = [], []
	if len(arr) <= 1:
		return arr
	else :
		pivot = arr.pop()
		for i in arr:
			if i > pivot:
				greater.append(i)
			else:
				lower.append(i)
	return quickSort(lower) + [pivot] + quickSort(greater)


# Insertion Sort
def insertionSort(arr):
	rg = range(1, len(arr))
	for i in rg:
		vts = arr[i]
		while arr[i-1] > vts and i > 0:
			arr[i-1], arr[i] = arr[i], arr[-1]
			i -= 1
	return arr


# Binary Search
def binarySearch(arr, item):
	bi = 0
	ei = len(arr) - 1

	while bi <= ei:
		mid = bi + (ei - bi) // 2
		midV = arr[mid]

		if midV == item:
			return mid
		elif item < midV:
			ei = mid - 1
		else:
			bi = mid + 1
	return None


rl = randomList(10,1,100)
print(f'List: {rl}')
print(f'QuickSort: {quickSort(rl)}')
print(f'Execution Time: {time.perf_counter() - timeStart}')
print('Binary Search: ' + str(binarySearch(rl , random.randint(1,100))))
