import InitE.BackendStages.BytesChunkData64_79
import InitE.BackendStages.FinalChunk64_79
import InitE.BackendStages.Bytes64
import InitE.BackendStages.Bytes65
import InitE.BackendStages.Bytes66
import InitE.BackendStages.Bytes67
import InitE.BackendStages.Bytes68
import InitE.BackendStages.Bytes69
import InitE.BackendStages.Bytes70
import InitE.BackendStages.Bytes71
import InitE.BackendStages.Bytes72
import InitE.BackendStages.Bytes73
import InitE.BackendStages.Bytes74
import InitE.BackendStages.Bytes75
import InitE.BackendStages.Bytes76
import InitE.BackendStages.Bytes77
import InitE.BackendStages.Bytes78
import InitE.BackendStages.Bytes79
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.BytesChunk64_79
theorem compiled_eq : LabToTarget.progToBytes FinalChunk64_79.padded = BytesChunkData64_79.bytes := by
  rw [LabToTarget.progToBytesMap]
  change [(Padded64.lines.map LabToTarget.lineBytes).flatten, (Padded65.lines.map LabToTarget.lineBytes).flatten, (Padded66.lines.map LabToTarget.lineBytes).flatten, (Padded67.lines.map LabToTarget.lineBytes).flatten, (Padded68.lines.map LabToTarget.lineBytes).flatten, (Padded69.lines.map LabToTarget.lineBytes).flatten, (Padded70.lines.map LabToTarget.lineBytes).flatten, (Padded71.lines.map LabToTarget.lineBytes).flatten, (Padded72.lines.map LabToTarget.lineBytes).flatten, (Padded73.lines.map LabToTarget.lineBytes).flatten, (Padded74.lines.map LabToTarget.lineBytes).flatten, (Padded75.lines.map LabToTarget.lineBytes).flatten, (Padded76.lines.map LabToTarget.lineBytes).flatten, (Padded77.lines.map LabToTarget.lineBytes).flatten, (Padded78.lines.map LabToTarget.lineBytes).flatten, (Padded79.lines.map LabToTarget.lineBytes).flatten].flatten = BytesChunkData64_79.bytes
  rw [sectionBytes64_eq, sectionBytes65_eq, sectionBytes66_eq, sectionBytes67_eq, sectionBytes68_eq, sectionBytes69_eq, sectionBytes70_eq, sectionBytes71_eq, sectionBytes72_eq, sectionBytes73_eq, sectionBytes74_eq, sectionBytes75_eq, sectionBytes76_eq, sectionBytes77_eq, sectionBytes78_eq, sectionBytes79_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.BytesChunk64_79
