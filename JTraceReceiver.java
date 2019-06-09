
public class JTraceReceiver {
    public static boolean stateOnly = true;
    public static void start() {}
    public static void end() {}
    public static void receive(String info, int stepCount) {
        System.out.println(stepCount + " steps:\n" + info);
    }
}
