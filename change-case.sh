#! /bin/sh
lc(){
    case "$1" in
        [A-Z]*)
        n=$(printf "%d" "'$1")
        n=$((n+32))
        printf \\$(printf "%o" "$n")
    esac
}

lc_word() {
	word=$1
	for((i=0;i<${#word};i++))
	do
			ch="${word:$i:1}"
			lc "$ch"
	done
}
zip_file_name=GERRARD

zip_file_name_lower=$(lc_word $zip_file_name)
echo $zip_file_name_lower

zip_file_name_lower2=$(echo $zip_file_name | tr '[:upper:]' '[:lower:]')
echo $zip_file_name_lower2
