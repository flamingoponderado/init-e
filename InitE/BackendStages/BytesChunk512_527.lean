import InitE.BackendStages.BytesChunkData512_527
import InitE.BackendStages.FinalChunk512_527
import InitE.BackendStages.Bytes512
import InitE.BackendStages.Bytes513
import InitE.BackendStages.Bytes514
import InitE.BackendStages.Bytes515
import InitE.BackendStages.Bytes516
import InitE.BackendStages.Bytes517
import InitE.BackendStages.Bytes518
import InitE.BackendStages.Bytes519
import InitE.BackendStages.Bytes520
import InitE.BackendStages.Bytes521
import InitE.BackendStages.Bytes522
import InitE.BackendStages.Bytes523
import InitE.BackendStages.Bytes524
import InitE.BackendStages.Bytes525
import InitE.BackendStages.Bytes526
import InitE.BackendStages.Bytes527
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.BytesChunk512_527
theorem compiled_eq : LabToTarget.progToBytes FinalChunk512_527.padded = BytesChunkData512_527.bytes := by
  rw [LabToTarget.progToBytesMap]
  change [(Padded512.lines.map LabToTarget.lineBytes).flatten, (Padded513.lines.map LabToTarget.lineBytes).flatten, (Padded514.lines.map LabToTarget.lineBytes).flatten, (Padded515.lines.map LabToTarget.lineBytes).flatten, (Padded516.lines.map LabToTarget.lineBytes).flatten, (Padded517.lines.map LabToTarget.lineBytes).flatten, (Padded518.lines.map LabToTarget.lineBytes).flatten, (Padded519.lines.map LabToTarget.lineBytes).flatten, (Padded520.lines.map LabToTarget.lineBytes).flatten, (Padded521.lines.map LabToTarget.lineBytes).flatten, (Padded522.lines.map LabToTarget.lineBytes).flatten, (Padded523.lines.map LabToTarget.lineBytes).flatten, (Padded524.lines.map LabToTarget.lineBytes).flatten, (Padded525.lines.map LabToTarget.lineBytes).flatten, (Padded526.lines.map LabToTarget.lineBytes).flatten, (Padded527.lines.map LabToTarget.lineBytes).flatten].flatten = BytesChunkData512_527.bytes
  rw [sectionBytes512_eq, sectionBytes513_eq, sectionBytes514_eq, sectionBytes515_eq, sectionBytes516_eq, sectionBytes517_eq, sectionBytes518_eq, sectionBytes519_eq, sectionBytes520_eq, sectionBytes521_eq, sectionBytes522_eq, sectionBytes523_eq, sectionBytes524_eq, sectionBytes525_eq, sectionBytes526_eq, sectionBytes527_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.BytesChunk512_527
