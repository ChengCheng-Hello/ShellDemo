#!/usr/bin/env bash

# 前提：所有工程都在一个目录下
# 功能：批量切分支拉代码
function function2()
{
	git checkout $1
	git pull origin $2
}

function function1() 
{
	# 更新base-android
	cd base-android/
	filterFunction $1 $2

	# 更新one-sdk
	cd ../one-sdk/
	filterFunction $1 $2

	# 更新two-sdk
	cd ../two-sdk/
	filterFunction $1 $2

	# 更新three-sdk
	cd ../three-sdk/
	filterFunction $1 $2

	# 更新four-sdk
	cd ../four-sdk/
	filterFunction $1 $2

	# 更新five-sdk
	cd ../five-sdk/
	filterFunction $1 $2

	# 更新six-sdk
	cd ../six-sdk/
	filterFunction $1 $2

	# 更新seven-sdk
	cd ../seven-sdk/
	filterFunction $1 $2

	# 更新eight-sdk
	cd ../eight-sdk/
	filterFunction $1 $2

	cd ..
}

function inputBranchNames()
{
	echo -e "please input checkout branch name and pull origin branch name (use space split)"
	read branchNames

	if [[ -z "$branchNames" ]]
		then
			echo "!!!branch name is empty, please input again"
			inputBranchNames
		else
			coName=`echo $branchNames | cut -d \  -f 1`
			pullName=`echo $branchNames | cut -d \  -f 2`

			echo "checkout branch is $coName, pull branch is $pullName"
			function1 $coName $pullName
	fi
}

inputBranchNames














