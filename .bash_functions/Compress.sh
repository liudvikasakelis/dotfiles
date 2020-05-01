function Compress () {
    pixz < $1 > $1.pixz
}

function Decompress () {
    pixz -d $1 ${1%%.pixz}
}
