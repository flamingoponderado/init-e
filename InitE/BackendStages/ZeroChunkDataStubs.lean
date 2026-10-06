import InitE.BackendStages.ZeroData0
import InitE.BackendStages.ZeroData1
import InitE.BackendStages.ZeroData2
import InitE.BackendStages.ZeroData4
import InitE.BackendStages.ZeroData5
import InitE.BackendStages.ZeroData6
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitE.BackendStages.ZeroChunkDataStubs
def keys : List Nat := [ZeroData.keys0, ZeroData.keys1, ZeroData.keys2, ZeroData.keys4, ZeroData.keys5, ZeroData.keys6].flatten
end InitE.BackendStages.ZeroChunkDataStubs
