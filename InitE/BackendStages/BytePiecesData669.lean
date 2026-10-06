import InitE.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
def raw669_0 : List (BitVec 8) := [103#8, 128#8, 0#8, 0#8]
def piece669_0 : List (BitVec 8) := (InitE.ComputationCache.boxedValue raw669_0).val
theorem piece669_0_eq : piece669_0 = raw669_0 := InitE.ComputationCache.boxedValue_eq raw669_0
end InitE.BackendStages.BytePieces
