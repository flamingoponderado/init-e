import InitE.BackendStages.BytesChunkData80_95
import InitE.BackendStages.FinalChunk80_95
import InitE.BackendStages.Bytes80
import InitE.BackendStages.Bytes81
import InitE.BackendStages.Bytes82
import InitE.BackendStages.Bytes83
import InitE.BackendStages.Bytes84
import InitE.BackendStages.Bytes85
import InitE.BackendStages.Bytes86
import InitE.BackendStages.Bytes87
import InitE.BackendStages.Bytes88
import InitE.BackendStages.Bytes89
import InitE.BackendStages.Bytes90
import InitE.BackendStages.Bytes91
import InitE.BackendStages.Bytes92
import InitE.BackendStages.Bytes93
import InitE.BackendStages.Bytes94
import InitE.BackendStages.Bytes95
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.BytesChunk80_95
theorem compiled_eq : LabToTarget.progToBytes FinalChunk80_95.padded = BytesChunkData80_95.bytes := by
  rw [LabToTarget.progToBytesMap]
  change [(Padded80.lines.map LabToTarget.lineBytes).flatten, (Padded81.lines.map LabToTarget.lineBytes).flatten, (Padded82.lines.map LabToTarget.lineBytes).flatten, (Padded83.lines.map LabToTarget.lineBytes).flatten, (Padded84.lines.map LabToTarget.lineBytes).flatten, (Padded85.lines.map LabToTarget.lineBytes).flatten, (Padded86.lines.map LabToTarget.lineBytes).flatten, (Padded87.lines.map LabToTarget.lineBytes).flatten, (Padded88.lines.map LabToTarget.lineBytes).flatten, (Padded89.lines.map LabToTarget.lineBytes).flatten, (Padded90.lines.map LabToTarget.lineBytes).flatten, (Padded91.lines.map LabToTarget.lineBytes).flatten, (Padded92.lines.map LabToTarget.lineBytes).flatten, (Padded93.lines.map LabToTarget.lineBytes).flatten, (Padded94.lines.map LabToTarget.lineBytes).flatten, (Padded95.lines.map LabToTarget.lineBytes).flatten].flatten = BytesChunkData80_95.bytes
  rw [sectionBytes80_eq, sectionBytes81_eq, sectionBytes82_eq, sectionBytes83_eq, sectionBytes84_eq, sectionBytes85_eq, sectionBytes86_eq, sectionBytes87_eq, sectionBytes88_eq, sectionBytes89_eq, sectionBytes90_eq, sectionBytes91_eq, sectionBytes92_eq, sectionBytes93_eq, sectionBytes94_eq, sectionBytes95_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.BytesChunk80_95
