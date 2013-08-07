#/bin/bash

function error_message
{
    echo "####################  ERROR  ####################"
    echo ""
    echo $1
    echo ""
    echo "####################  ERROR  ####################"

}

if [ $# -ne 2 ]
then
    echo "####################  ERROR  ####################"
    echo ""
    echo '$0 user blog_path ';
    echo 'eg : $0 sabalawy /';
    echo ""
    echo "####################  ERROR  ####################"
    exit 1
else
    username=$1
    blog_path_part=$2
    blog_path="/home/"$username"/public_html"$blog_path_part""



    content_path="/home/jobxwiki/public_html/wp_maint";

	#if [ ! -d "$blog_path" ]
    #then

		echo ""
	    echo "####################  Starting ####################"
	    echo ""

	    CMD="rm "$blog_path".maintenance";
		echo "$CMD";
		$CMD;

	    echo ""
	    echo "####################  DONE ####################"
	    echo ""
		exit 1
	#else
	#	 error_message "blog path dir does not exist - "$blog_path" - exiting"
	#	 exit 1
	#$CMD;
 	#fi
 fi