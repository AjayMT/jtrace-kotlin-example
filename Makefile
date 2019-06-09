
run: test.jar jtrace/jtrace
	java -cp test.jar:. -agentpath:./jtrace/jtrace Test

test.jar: Test.kt JTraceReceiver.class
	kotlinc -include-runtime -cp . Test.kt -d test.jar

JTraceReceiver.class: JTraceReceiver.java
	javac -g JTraceReceiver.java

jtrace/jtrace:
	${MAKE} -C jtrace

.PHONY: clean
clean:
	rm -fr META-INF *.class test.jar
	${MAKE} -C jtrace clean
