import InitE.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
def raw373_0 : List (BitVec 8) := [179#8, 230#8, 181#8, 0#8, 19#8, 102#8, 0#8, 0#8, 147#8, 101#8, 16#8, 0#8, 111#8, 240#8, 223#8, 221#8]
def piece373_0 : List (BitVec 8) := (InitE.ComputationCache.boxedValue raw373_0).val
theorem piece373_0_eq : piece373_0 = raw373_0 := InitE.ComputationCache.boxedValue_eq raw373_0
end InitE.BackendStages.BytePieces
