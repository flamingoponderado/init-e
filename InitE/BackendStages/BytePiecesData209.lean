import InitE.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
def raw209_0 : List (BitVec 8) := [111#8, 240#8, 31#8, 143#8]
def piece209_0 : List (BitVec 8) := (InitE.ComputationCache.boxedValue raw209_0).val
theorem piece209_0_eq : piece209_0 = raw209_0 := InitE.ComputationCache.boxedValue_eq raw209_0
end InitE.BackendStages.BytePieces
