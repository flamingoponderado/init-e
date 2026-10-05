import InitE.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
def raw668_0 : List (BitVec 8) := [111#8, 208#8, 159#8, 182#8]
def piece668_0 : List (BitVec 8) := (InitE.ComputationCache.boxedValue raw668_0).val
theorem piece668_0_eq : piece668_0 = raw668_0 := InitE.ComputationCache.boxedValue_eq raw668_0
end InitE.BackendStages.BytePieces
