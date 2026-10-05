import InitE.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
def raw670_0 : List (BitVec 8) := [103#8, 128#8, 0#8, 0#8]
def piece670_0 : List (BitVec 8) := (InitE.ComputationCache.boxedValue raw670_0).val
theorem piece670_0_eq : piece670_0 = raw670_0 := InitE.ComputationCache.boxedValue_eq raw670_0
end InitE.BackendStages.BytePieces
