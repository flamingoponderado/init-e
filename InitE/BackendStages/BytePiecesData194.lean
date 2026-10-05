import InitE.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
def raw194_0 : List (BitVec 8) := [3#8, 53#8, 5#8, 1#8, 103#8, 128#8, 0#8, 0#8]
def piece194_0 : List (BitVec 8) := (InitE.ComputationCache.boxedValue raw194_0).val
theorem piece194_0_eq : piece194_0 = raw194_0 := InitE.ComputationCache.boxedValue_eq raw194_0
end InitE.BackendStages.BytePieces
