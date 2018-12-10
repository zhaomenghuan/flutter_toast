package cn.com.agree.fluttertoast;

import android.content.Context;
import android.widget.Toast;

import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.PluginRegistry.Registrar;

/**
 * FlutterToastPlugin
 */
public class FlutterToastPlugin implements MethodCallHandler {
    Context mContext;

    FlutterToastPlugin(Context context) {
        mContext = context;
    }

    /**
     * Plugin registration.
     *
     * @param registrar
     */
    public static void registerWith(Registrar registrar) {
        final MethodChannel channel = new MethodChannel(registrar.messenger(), "AKit/flutter_toast");
        channel.setMethodCallHandler(new FlutterToastPlugin(registrar.context()));
    }

    @Override
    public void onMethodCall(MethodCall call, Result result) {
        if (call.method.equals("showToast")) {
            String message  = call.argument("message").toString();
            Toast.makeText(mContext, message, Toast.LENGTH_SHORT).show();
            result.success("Success");
        }
    }
}
