import InitE.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
def raw100_0 : List (BitVec 8) := [103#8, 128#8, 0#8, 0#8]
def piece100_0 : List (BitVec 8) := (InitE.ComputationCache.boxedValue raw100_0).val
theorem piece100_0_eq : piece100_0 = raw100_0 := InitE.ComputationCache.boxedValue_eq raw100_0
end InitE.BackendStages.BytePieces
