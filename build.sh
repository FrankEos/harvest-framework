function src_under_dir() {
    classes=`find ./$1 -name *.java`
    for class in $classes
    do
        echo -n $class" "
    done
}

function lib_under_dir() {
    jars=`find ./$1 -name *jar`
    for jar in $jars
    do
        echo -n $jar":"
    done
}

# vars
src=`src_under_dir java`
libs=`lib_under_dir lib`
jar=harvest-framework.jar

# prepare
rm -rf bin
mkdir -p bin/classes

# gen classes
javac -g -classpath $libs $src -d bin/classes/

# pack to jar
cd bin/classes/
jar cfv ../$jar *
