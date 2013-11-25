function gitrm {
	git status | sed -e '1,/# Changes not staged/ d' | grep 'deleted:' | awk '{ print $3 }' | xargs -I{} -n1 git rm {}
}
