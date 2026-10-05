import InitE.BackendStages.Metadata.Data118
import InitE.BackendStages.Padded118
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep118 : walkShmemLines Padded118.lines 12536 beforeFfis118 beforeShmem118 = (12676, afterFfis118, afterShmem118) := by
  with_unfolding_all rfl
theorem shmemStep118 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded118 :: rest) 12536 beforeFfis118 beforeShmem118 = LabToTarget.getShmemInfo rest 12676 afterFfis118 afterShmem118 := by
  rw [getShmemInfo_section, walkStep118]
theorem symbolLength118 : LabToTarget.secLength Padded118.lines 0 = 140 := by
  with_unfolding_all rfl
#print axioms shmemStep118
#print axioms symbolLength118
end InitE.BackendStages.Metadata
