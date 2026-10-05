import InitE.BackendStages.Metadata.Data625
import InitE.BackendStages.Padded625
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep625 : walkShmemLines Padded625.lines 455948 beforeFfis625 beforeShmem625 = (461128, afterFfis625, afterShmem625) := by
  with_unfolding_all rfl
theorem shmemStep625 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded625 :: rest) 455948 beforeFfis625 beforeShmem625 = LabToTarget.getShmemInfo rest 461128 afterFfis625 afterShmem625 := by
  rw [getShmemInfo_section, walkStep625]
theorem symbolLength625 : LabToTarget.secLength Padded625.lines 0 = 5180 := by
  with_unfolding_all rfl
#print axioms shmemStep625
#print axioms symbolLength625
end InitE.BackendStages.Metadata
