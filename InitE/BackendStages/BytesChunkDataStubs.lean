import InitE.BackendStages.BytesData0
import InitE.BackendStages.BytesData1
import InitE.BackendStages.BytesData2
import InitE.BackendStages.BytesData4
import InitE.BackendStages.BytesData5
import InitE.BackendStages.BytesData6
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.BytesChunkDataStubs
def bytes : List (BitVec 8) := [ByteData.bytes0, ByteData.bytes1, ByteData.bytes2, ByteData.bytes4, ByteData.bytes5, ByteData.bytes6].flatten
end InitE.BackendStages.BytesChunkDataStubs
