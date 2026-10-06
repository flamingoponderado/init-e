import InitE.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
def raw351_0 : List (BitVec 8) := [3#8, 53#8, 133#8, 9#8, 103#8, 128#8, 0#8, 0#8]
def piece351_0 : List (BitVec 8) := (InitE.ComputationCache.boxedValue raw351_0).val
theorem piece351_0_eq : piece351_0 = raw351_0 := InitE.ComputationCache.boxedValue_eq raw351_0
end InitE.BackendStages.BytePieces
