import InitE.BackendStages.BytesChunkDataStubs
import InitE.BackendStages.FinalChunkStubs
import InitE.BackendStages.Bytes0
import InitE.BackendStages.Bytes1
import InitE.BackendStages.Bytes2
import InitE.BackendStages.Bytes4
import InitE.BackendStages.Bytes5
import InitE.BackendStages.Bytes6
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.BytesChunkStubs
theorem compiled_eq : LabToTarget.progToBytes FinalChunkStubs.padded = BytesChunkDataStubs.bytes := by
  rw [LabToTarget.progToBytesMap]
  change [(Padded0.lines.map LabToTarget.lineBytes).flatten, (Padded1.lines.map LabToTarget.lineBytes).flatten, (Padded2.lines.map LabToTarget.lineBytes).flatten, (Padded4.lines.map LabToTarget.lineBytes).flatten, (Padded5.lines.map LabToTarget.lineBytes).flatten, (Padded6.lines.map LabToTarget.lineBytes).flatten].flatten = BytesChunkDataStubs.bytes
  rw [sectionBytes0_eq, sectionBytes1_eq, sectionBytes2_eq, sectionBytes4_eq, sectionBytes5_eq, sectionBytes6_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.BytesChunkStubs
