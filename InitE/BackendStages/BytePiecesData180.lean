import InitE.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
def raw180_0 : List (BitVec 8) := [111#8, 240#8, 223#8, 184#8]
def piece180_0 : List (BitVec 8) := (InitE.ComputationCache.boxedValue raw180_0).val
theorem piece180_0_eq : piece180_0 = raw180_0 := InitE.ComputationCache.boxedValue_eq raw180_0
end InitE.BackendStages.BytePieces
