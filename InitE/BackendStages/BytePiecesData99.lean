import InitE.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
def raw99_0 : List (BitVec 8) := [147#8, 101#8, 0#8, 0#8, 19#8, 102#8, 0#8, 0#8, 147#8, 102#8, 0#8, 0#8, 103#8, 128#8, 0#8, 0#8]
def piece99_0 : List (BitVec 8) := (InitE.ComputationCache.boxedValue raw99_0).val
theorem piece99_0_eq : piece99_0 = raw99_0 := InitE.ComputationCache.boxedValue_eq raw99_0
end InitE.BackendStages.BytePieces
