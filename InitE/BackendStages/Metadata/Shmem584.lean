import InitE.BackendStages.Metadata.Data584
import InitE.BackendStages.Padded584
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep584 : walkShmemLines Padded584.lines 379484 beforeFfis584 beforeShmem584 = (380072, afterFfis584, afterShmem584) := by
  with_unfolding_all rfl
theorem shmemStep584 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded584 :: rest) 379484 beforeFfis584 beforeShmem584 = LabToTarget.getShmemInfo rest 380072 afterFfis584 afterShmem584 := by
  rw [getShmemInfo_section, walkStep584]
theorem symbolLength584 : LabToTarget.secLength Padded584.lines 0 = 588 := by
  with_unfolding_all rfl
#print axioms shmemStep584
#print axioms symbolLength584
end InitE.BackendStages.Metadata
