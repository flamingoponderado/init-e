import InitE.BackendStages.Metadata.Data350
import InitE.BackendStages.Padded350
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep350 : walkShmemLines Padded350.lines 221004 beforeFfis350 beforeShmem350 = (221028, afterFfis350, afterShmem350) := by
  with_unfolding_all rfl
theorem shmemStep350 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded350 :: rest) 221004 beforeFfis350 beforeShmem350 = LabToTarget.getShmemInfo rest 221028 afterFfis350 afterShmem350 := by
  rw [getShmemInfo_section, walkStep350]
theorem symbolLength350 : LabToTarget.secLength Padded350.lines 0 = 24 := by
  with_unfolding_all rfl
#print axioms shmemStep350
#print axioms symbolLength350
end InitE.BackendStages.Metadata
