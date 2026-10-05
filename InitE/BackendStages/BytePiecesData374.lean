import InitE.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
def raw374_0 : List (BitVec 8) := [179#8, 102#8, 198#8, 0#8, 51#8, 230#8, 181#8, 0#8, 147#8, 101#8, 32#8, 0#8, 111#8, 240#8, 223#8, 220#8]
def piece374_0 : List (BitVec 8) := (InitE.ComputationCache.boxedValue raw374_0).val
theorem piece374_0_eq : piece374_0 = raw374_0 := InitE.ComputationCache.boxedValue_eq raw374_0
end InitE.BackendStages.BytePieces
