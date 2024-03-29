all: main codetotest


codetotest:
	mkdir -p ./bin/com/idt/contest/highschool/winter2014/codetotest
	cd ./src;\
	javac com/idt/contest/highschool/winter2014/codetotest/*.java -d ../bin


clean:
	rm -rf ./bin

main: framework
	mkdir -p ./bin/com/idt/contest/highschool/winter2014
	cd ./src;\
	javac com/idt/contest/highschool/winter2014/*.java -d ../bin

framework:
	mkdir -p ./bin/com/idt/contest/highschool/winter2014/framework
	cd ./src;\
	javac com/idt/contest/highschool/winter2014/framework/*.java -d ../bin

run: all
	cd ./bin; \
	java com.idt.contest.highschool.winter2014.Main

run2: all
	cd ./bin; \
	java com.idt.contest.highschool.winter2014.Main ~/git/Supernova/batchscript.txt

runLogger: all
	cd ./bin; \
	java com.idt.contest.highschool.winter2014.Logger
