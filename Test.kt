
public class Test {
    companion object {
        @JvmStatic public fun main(args: Array<String>) {
            JTraceReceiver.start()
            var i = 0;
            i = 1;
            i = 2;
            JTraceReceiver.end()
        }
    }
}
