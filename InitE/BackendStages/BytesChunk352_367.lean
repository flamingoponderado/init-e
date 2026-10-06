import InitE.BackendStages.BytesChunkData352_367
import InitE.BackendStages.FinalChunk352_367
import InitE.BackendStages.Bytes352
import InitE.BackendStages.Bytes353
import InitE.BackendStages.Bytes354
import InitE.BackendStages.Bytes355
import InitE.BackendStages.Bytes356
import InitE.BackendStages.Bytes357
import InitE.BackendStages.Bytes358
import InitE.BackendStages.Bytes359
import InitE.BackendStages.Bytes360
import InitE.BackendStages.Bytes361
import InitE.BackendStages.Bytes362
import InitE.BackendStages.Bytes363
import InitE.BackendStages.Bytes364
import InitE.BackendStages.Bytes365
import InitE.BackendStages.Bytes366
import InitE.BackendStages.Bytes367
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.BytesChunk352_367
theorem compiled_eq : LabToTarget.progToBytes FinalChunk352_367.padded = BytesChunkData352_367.bytes := by
  rw [LabToTarget.progToBytesMap]
  change [(Padded352.lines.map LabToTarget.lineBytes).flatten, (Padded353.lines.map LabToTarget.lineBytes).flatten, (Padded354.lines.map LabToTarget.lineBytes).flatten, (Padded355.lines.map LabToTarget.lineBytes).flatten, (Padded356.lines.map LabToTarget.lineBytes).flatten, (Padded357.lines.map LabToTarget.lineBytes).flatten, (Padded358.lines.map LabToTarget.lineBytes).flatten, (Padded359.lines.map LabToTarget.lineBytes).flatten, (Padded360.lines.map LabToTarget.lineBytes).flatten, (Padded361.lines.map LabToTarget.lineBytes).flatten, (Padded362.lines.map LabToTarget.lineBytes).flatten, (Padded363.lines.map LabToTarget.lineBytes).flatten, (Padded364.lines.map LabToTarget.lineBytes).flatten, (Padded365.lines.map LabToTarget.lineBytes).flatten, (Padded366.lines.map LabToTarget.lineBytes).flatten, (Padded367.lines.map LabToTarget.lineBytes).flatten].flatten = BytesChunkData352_367.bytes
  rw [sectionBytes352_eq, sectionBytes353_eq, sectionBytes354_eq, sectionBytes355_eq, sectionBytes356_eq, sectionBytes357_eq, sectionBytes358_eq, sectionBytes359_eq, sectionBytes360_eq, sectionBytes361_eq, sectionBytes362_eq, sectionBytes363_eq, sectionBytes364_eq, sectionBytes365_eq, sectionBytes366_eq, sectionBytes367_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.BytesChunk352_367
