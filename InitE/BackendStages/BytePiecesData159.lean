import InitE.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
def raw159_0 : List (BitVec 8) := [35#8, 188#8, 172#8, 246#8, 19#8, 101#8, 16#8, 0#8, 111#8, 96#8, 95#8, 192#8]
def piece159_0 : List (BitVec 8) := (InitE.ComputationCache.boxedValue raw159_0).val
theorem piece159_0_eq : piece159_0 = raw159_0 := InitE.ComputationCache.boxedValue_eq raw159_0
end InitE.BackendStages.BytePieces
