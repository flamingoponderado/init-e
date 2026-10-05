import InitE.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
def raw116_0 : List (BitVec 8) := [179#8, 228#8, 16#8, 0#8, 147#8, 96#8, 0#8, 0#8, 179#8, 63#8, 16#8, 0#8, 51#8, 5#8, 85#8, 0#8, 179#8, 48#8, 85#8, 0#8, 51#8, 5#8, 245#8, 1#8, 179#8, 63#8, 245#8, 1#8, 179#8, 224#8, 240#8, 1#8, 179#8, 63#8, 16#8, 0#8, 179#8, 133#8, 101#8, 0#8, 179#8, 176#8, 101#8, 0#8, 179#8, 133#8, 245#8, 1#8, 179#8, 191#8, 245#8, 1#8, 179#8, 224#8, 240#8, 1#8, 179#8, 63#8, 16#8, 0#8, 51#8, 6#8, 118#8, 0#8, 179#8, 48#8, 118#8, 0#8, 51#8, 6#8, 246#8, 1#8, 179#8, 63#8, 246#8, 1#8, 179#8, 224#8, 240#8, 1#8, 179#8, 63#8, 16#8, 0#8, 179#8, 134#8, 134#8, 0#8, 179#8, 176#8, 134#8, 0#8, 179#8, 134#8, 246#8, 1#8, 179#8, 191#8, 246#8, 1#8, 179#8, 224#8, 240#8, 1#8, 103#8, 128#8, 4#8, 0#8]
def piece116_0 : List (BitVec 8) := (InitE.ComputationCache.boxedValue raw116_0).val
theorem piece116_0_eq : piece116_0 = raw116_0 := InitE.ComputationCache.boxedValue_eq raw116_0
end InitE.BackendStages.BytePieces
