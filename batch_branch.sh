#!/usr/bin/env bash

# 前提：所有工程都在一个目录下
# 功能：创建分支，push分支，删除本地分支，删除远程分支
CREATE_BRANCH="1"
PUSH_BRANCH="2"
DELETE_BRANCH="3"
DELETE_REMOTE_BRANCH="4"

function filterFunction()
{
	case "$1" in
		"$CREATE_BRANCH" )
			createBranch $2
		;;
		"$PUSH_BRANCH" )
			pushBranch $2
		;;
		"$DELETE_BRANCH" )
			deleteBranch $2
		;;
		"$DELETE_REMOTE_BRANCH" )
			deleteRemoteBranch $2
		;;
	esac
}

function functionBranch() 
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

function createBranch() 
{
	git checkout -b $1
}

function pushBranch()
{
	git push origin $1
}

function deleteBranch()
{
	git branch -D $1
}

function deleteRemoteBranch()
{
	git push origin --delete $1
}

function inputBranchName()
{
	echo -e "please input branch name"
	read branchName

	if [[ -z "$branchName" ]]
		then
			echo "!!!branch name is empty, please input again"
			inputBranchName
		else
			echo -e "create branch $branchName y/n?"
			read confirm

			if [[ "$confirm" == "y" ]]
				then
					functionBranch $1 $branchName
				else
					echo "exit"
			fi
	fi
}

function chooseFunction()
{
	echo -e "please choose function $CREATE_BRANCH(create branch), $PUSH_BRANCH(push branch),
	 $DELETE_BRANCH(delete local branch), $DELETE_REMOTE_BRANCH(delete remote branch)"
	read functionName
	case "$functionName" in
		"$CREATE_BRANCH" )
			inputBranchName $CREATE_BRANCH
		;;
		"$PUSH_BRANCH" )
			inputBranchName $PUSH_BRANCH
		;;
		"$DELETE_BRANCH" )
			inputBranchName $DELETE_BRANCH
		;;
		"$DELETE_REMOTE_BRANCH" )
			inputBranchName $DELETE_REMOTE_BRANCH
		;;
		* )
			echo "!!!Bad option, please choose again"
			chooseFunction
	esac
}

chooseFunction








