import InitE.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
def raw219_0 : List (BitVec 8) := [111#8, 208#8, 95#8, 184#8]
def piece219_0 : List (BitVec 8) := (InitE.ComputationCache.boxedValue raw219_0).val
theorem piece219_0_eq : piece219_0 = raw219_0 := InitE.ComputationCache.boxedValue_eq raw219_0
end InitE.BackendStages.BytePieces
