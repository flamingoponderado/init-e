import InitE.BackendStages.Metadata.Data92
import InitE.BackendStages.Padded92
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep92 : walkShmemLines Padded92.lines 10160 beforeFfis92 beforeShmem92 = (10176, afterFfis92, afterShmem92) := by
  with_unfolding_all rfl
theorem shmemStep92 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded92 :: rest) 10160 beforeFfis92 beforeShmem92 = LabToTarget.getShmemInfo rest 10176 afterFfis92 afterShmem92 := by
  rw [getShmemInfo_section, walkStep92]
theorem symbolLength92 : LabToTarget.secLength Padded92.lines 0 = 16 := by
  with_unfolding_all rfl
#print axioms shmemStep92
#print axioms symbolLength92
end InitE.BackendStages.Metadata
