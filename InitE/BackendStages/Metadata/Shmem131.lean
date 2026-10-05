import InitE.BackendStages.Metadata.Data131
import InitE.BackendStages.Padded131
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep131 : walkShmemLines Padded131.lines 23676 beforeFfis131 beforeShmem131 = (23828, afterFfis131, afterShmem131) := by
  with_unfolding_all rfl
theorem shmemStep131 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded131 :: rest) 23676 beforeFfis131 beforeShmem131 = LabToTarget.getShmemInfo rest 23828 afterFfis131 afterShmem131 := by
  rw [getShmemInfo_section, walkStep131]
theorem symbolLength131 : LabToTarget.secLength Padded131.lines 0 = 152 := by
  with_unfolding_all rfl
#print axioms shmemStep131
#print axioms symbolLength131
end InitE.BackendStages.Metadata
