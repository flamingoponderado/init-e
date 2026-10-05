import InitE.BackendStages.Metadata.Data81
import InitE.BackendStages.Padded81
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep81 : walkShmemLines Padded81.lines 8528 beforeFfis81 beforeShmem81 = (8584, afterFfis81, afterShmem81) := by
  with_unfolding_all rfl
theorem shmemStep81 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded81 :: rest) 8528 beforeFfis81 beforeShmem81 = LabToTarget.getShmemInfo rest 8584 afterFfis81 afterShmem81 := by
  rw [getShmemInfo_section, walkStep81]
theorem symbolLength81 : LabToTarget.secLength Padded81.lines 0 = 56 := by
  with_unfolding_all rfl
#print axioms shmemStep81
#print axioms symbolLength81
end InitE.BackendStages.Metadata
