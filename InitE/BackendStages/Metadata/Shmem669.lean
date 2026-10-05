import InitE.BackendStages.Metadata.Data669
import InitE.BackendStages.Padded669
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep669 : walkShmemLines Padded669.lines 533252 beforeFfis669 beforeShmem669 = (533256, afterFfis669, afterShmem669) := by
  with_unfolding_all rfl
theorem shmemStep669 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded669 :: rest) 533252 beforeFfis669 beforeShmem669 = LabToTarget.getShmemInfo rest 533256 afterFfis669 afterShmem669 := by
  rw [getShmemInfo_section, walkStep669]
theorem symbolLength669 : LabToTarget.secLength Padded669.lines 0 = 4 := by
  with_unfolding_all rfl
#print axioms shmemStep669
#print axioms symbolLength669
end InitE.BackendStages.Metadata
