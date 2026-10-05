import InitE.BackendStages.Metadata.Data514
import InitE.BackendStages.Padded514
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep514 : walkShmemLines Padded514.lines 324040 beforeFfis514 beforeShmem514 = (324804, afterFfis514, afterShmem514) := by
  with_unfolding_all rfl
theorem shmemStep514 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded514 :: rest) 324040 beforeFfis514 beforeShmem514 = LabToTarget.getShmemInfo rest 324804 afterFfis514 afterShmem514 := by
  rw [getShmemInfo_section, walkStep514]
theorem symbolLength514 : LabToTarget.secLength Padded514.lines 0 = 764 := by
  with_unfolding_all rfl
#print axioms shmemStep514
#print axioms symbolLength514
end InitE.BackendStages.Metadata
