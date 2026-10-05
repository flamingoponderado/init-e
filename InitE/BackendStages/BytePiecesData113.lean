import InitE.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
def raw113_0 : List (BitVec 8) := [51#8, 229#8, 162#8, 0#8, 179#8, 101#8, 179#8, 0#8, 51#8, 230#8, 195#8, 0#8, 179#8, 102#8, 212#8, 0#8, 103#8, 128#8, 0#8, 0#8]
def piece113_0 : List (BitVec 8) := (InitE.ComputationCache.boxedValue raw113_0).val
theorem piece113_0_eq : piece113_0 = raw113_0 := InitE.ComputationCache.boxedValue_eq raw113_0
end InitE.BackendStages.BytePieces
