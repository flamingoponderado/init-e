import InitE.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
def raw714_0 : List (BitVec 8) := [179#8, 98#8, 83#8, 0#8, 179#8, 230#8, 210#8, 0#8, 51#8, 230#8, 198#8, 0#8, 179#8, 101#8, 182#8, 0#8, 51#8, 229#8, 165#8, 0#8, 147#8, 101#8, 0#8, 0#8, 99#8, 22#8, 181#8, 0#8, 19#8, 101#8, 16#8, 0#8, 103#8, 128#8, 0#8, 0#8, 19#8, 101#8, 0#8, 0#8, 103#8, 128#8, 0#8, 0#8]
def piece714_0 : List (BitVec 8) := (InitE.ComputationCache.boxedValue raw714_0).val
theorem piece714_0_eq : piece714_0 = raw714_0 := InitE.ComputationCache.boxedValue_eq raw714_0
end InitE.BackendStages.BytePieces
