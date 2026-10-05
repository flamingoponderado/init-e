import InitE.BackendStages.Metadata.Data745
import InitE.BackendStages.Padded745
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep745 : walkShmemLines Padded745.lines 658344 beforeFfis745 beforeShmem745 = (658960, afterFfis745, afterShmem745) := by
  with_unfolding_all rfl
theorem shmemStep745 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded745 :: rest) 658344 beforeFfis745 beforeShmem745 = LabToTarget.getShmemInfo rest 658960 afterFfis745 afterShmem745 := by
  rw [getShmemInfo_section, walkStep745]
theorem symbolLength745 : LabToTarget.secLength Padded745.lines 0 = 616 := by
  with_unfolding_all rfl
#print axioms shmemStep745
#print axioms symbolLength745
end InitE.BackendStages.Metadata
