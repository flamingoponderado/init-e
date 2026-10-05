import InitE.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
def raw93_0 : List (BitVec 8) := [99#8, 244#8, 165#8, 0#8, 103#8, 128#8, 0#8, 0#8, 51#8, 229#8, 181#8, 0#8, 103#8, 128#8, 0#8, 0#8]
def piece93_0 : List (BitVec 8) := (InitE.ComputationCache.boxedValue raw93_0).val
theorem piece93_0_eq : piece93_0 = raw93_0 := InitE.ComputationCache.boxedValue_eq raw93_0
end InitE.BackendStages.BytePieces
