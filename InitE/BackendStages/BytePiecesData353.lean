import InitE.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
def raw353_0 : List (BitVec 8) := [3#8, 54#8, 5#8, 12#8, 131#8, 53#8, 133#8, 12#8, 51#8, 101#8, 198#8, 0#8, 103#8, 128#8, 0#8, 0#8]
def piece353_0 : List (BitVec 8) := (InitE.ComputationCache.boxedValue raw353_0).val
theorem piece353_0_eq : piece353_0 = raw353_0 := InitE.ComputationCache.boxedValue_eq raw353_0
end InitE.BackendStages.BytePieces
