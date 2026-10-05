import InitE.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
def raw727_0 : List (BitVec 8) := [103#8, 128#8, 0#8, 0#8]
def piece727_0 : List (BitVec 8) := (InitE.ComputationCache.boxedValue raw727_0).val
theorem piece727_0_eq : piece727_0 = raw727_0 := InitE.ComputationCache.boxedValue_eq raw727_0
end InitE.BackendStages.BytePieces
