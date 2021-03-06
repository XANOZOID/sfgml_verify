package ;
import gml.NativeArray;
import gml.NativeType;
/**
 * ...
 * @author YellowAfterlife
 */
class VerifyTools {
	public static inline function assertEq<T>(val:T, want:T, label:String) {
		if (val != want) throw "Assertion failed for " + label + "! Expected `"
			+ NativeType.toString(want) + "`, got `"
			+ NativeType.toString(val) + "` (" + NativeType.typeof(val) + ")";
	}
	public static inline function assert(val:Bool, label:String) {
		if (!val) throw "Assertion failed for " + label + "!";
	}
	public static inline function assertArrayEq<T>(val:Array<T>, want:Array<T>, label:String) {
		if (!NativeArray.equals(val, want)) throw "Assertion failed for " + label + "! Expected `"
			+ NativeType.toString(want) + "`, got `"
			+ NativeType.toString(val) + "` (" + NativeType.typeof(val) + ")";
	}
	public static inline function assertEnumEq<T:EnumValue>(val:T, want:T, label:String) {
		if (!Type.enumEq(val, want)) throw "Assertion failed for " + label + "! Expected `"
			+ NativeType.toString(want) + "`, got `"
			+ NativeType.toString(val) + "` (" + NativeType.typeof(val) + ")";
	}
}