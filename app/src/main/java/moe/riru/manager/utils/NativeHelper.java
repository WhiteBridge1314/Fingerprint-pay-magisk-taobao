package moe.riru.manager.utils;

public class NativeHelper {

    static {
        System.loadLibrary("helper");
    }

    public static native boolean init();
    public static native boolean isRiruModuleExists(String name);
    public static native int getRiruVersion();
    public static native boolean isZygoteMethodsReplaced();
    public static native int getNativeForkAndSpecializeCallsCount();
    public static native int getNativeForkSystemServerCallsCount();
}
