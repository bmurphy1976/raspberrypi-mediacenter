lib_mkdir() {
	path="$1"
	user="${2:-root}"
	group="${3:-root}"
	mode="${4:-755}"

	mkdir -p "$path"
	chown "$user.$group" "$path"
	chmod $mode "$path"
}

lib_test_sha256sum() {
	path="$1"
	expected="$2"
	actual="$(sha256sum --binary "$1" | awk '{print $1}')"

	if [ "$expected" == "$actual" ]; then
		return 0
	else
		return 1
	fi
}


