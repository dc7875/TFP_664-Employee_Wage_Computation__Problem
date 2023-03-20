#!/bin/bash

# emp working as 8 hours per day
# emp working 5 days in a week -> 8x5=40 hrs
# emp working days in a month -> 5x4=20 days

perHourSalary=20;
workingHour=0;
totalSalary=0;

for((day=1;day<=20;day++))
do
	isPresent=$((RANDOM%3));
	case $isPresent in
		0)
			echo "Emp is Absent";
			workingHour=0;
		;;
		1)
			echo "Emp is Present";
			workingHour=8;
		;;
		2)
			echo "Emp is working part-time";
			workingHour=4;
		;;
	esac

	salary=$(($perHourSalary * $workingHour));
	totalSalary=$(($totalSalary + $salary));
done

echo "Employee has earned $totalSalary $ in a month";
