import InitE.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
def raw868_0 : List (BitVec 8) := [3#8, 53#8, 5#8, 0#8, 147#8, 101#8, 64#8, 0#8, 99#8, 22#8, 181#8, 0#8, 19#8, 101#8, 16#8, 0#8, 103#8, 128#8, 0#8, 0#8, 19#8, 101#8, 0#8, 0#8, 103#8, 128#8, 0#8, 0#8]
def piece868_0 : List (BitVec 8) := (InitE.ComputationCache.boxedValue raw868_0).val
theorem piece868_0_eq : piece868_0 = raw868_0 := InitE.ComputationCache.boxedValue_eq raw868_0
end InitE.BackendStages.BytePieces
