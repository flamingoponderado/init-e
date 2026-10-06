import InitE.BackendStages.BytesChunkData480_495
import InitE.BackendStages.FinalChunk480_495
import InitE.BackendStages.Bytes480
import InitE.BackendStages.Bytes481
import InitE.BackendStages.Bytes482
import InitE.BackendStages.Bytes483
import InitE.BackendStages.Bytes484
import InitE.BackendStages.Bytes485
import InitE.BackendStages.Bytes486
import InitE.BackendStages.Bytes487
import InitE.BackendStages.Bytes488
import InitE.BackendStages.Bytes489
import InitE.BackendStages.Bytes490
import InitE.BackendStages.Bytes491
import InitE.BackendStages.Bytes492
import InitE.BackendStages.Bytes493
import InitE.BackendStages.Bytes494
import InitE.BackendStages.Bytes495
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.BytesChunk480_495
theorem compiled_eq : LabToTarget.progToBytes FinalChunk480_495.padded = BytesChunkData480_495.bytes := by
  rw [LabToTarget.progToBytesMap]
  change [(Padded480.lines.map LabToTarget.lineBytes).flatten, (Padded481.lines.map LabToTarget.lineBytes).flatten, (Padded482.lines.map LabToTarget.lineBytes).flatten, (Padded483.lines.map LabToTarget.lineBytes).flatten, (Padded484.lines.map LabToTarget.lineBytes).flatten, (Padded485.lines.map LabToTarget.lineBytes).flatten, (Padded486.lines.map LabToTarget.lineBytes).flatten, (Padded487.lines.map LabToTarget.lineBytes).flatten, (Padded488.lines.map LabToTarget.lineBytes).flatten, (Padded489.lines.map LabToTarget.lineBytes).flatten, (Padded490.lines.map LabToTarget.lineBytes).flatten, (Padded491.lines.map LabToTarget.lineBytes).flatten, (Padded492.lines.map LabToTarget.lineBytes).flatten, (Padded493.lines.map LabToTarget.lineBytes).flatten, (Padded494.lines.map LabToTarget.lineBytes).flatten, (Padded495.lines.map LabToTarget.lineBytes).flatten].flatten = BytesChunkData480_495.bytes
  rw [sectionBytes480_eq, sectionBytes481_eq, sectionBytes482_eq, sectionBytes483_eq, sectionBytes484_eq, sectionBytes485_eq, sectionBytes486_eq, sectionBytes487_eq, sectionBytes488_eq, sectionBytes489_eq, sectionBytes490_eq, sectionBytes491_eq, sectionBytes492_eq, sectionBytes493_eq, sectionBytes494_eq, sectionBytes495_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.BytesChunk480_495
