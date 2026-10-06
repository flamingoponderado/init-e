import InitE.BackendStages.Metadata.Data134
import InitE.BackendStages.Padded134
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep134 : walkShmemLines Padded134.lines 24456 beforeFfis134 beforeShmem134 = (25064, afterFfis134, afterShmem134) := by
  with_unfolding_all rfl
theorem shmemStep134 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded134 :: rest) 24456 beforeFfis134 beforeShmem134 = LabToTarget.getShmemInfo rest 25064 afterFfis134 afterShmem134 := by
  rw [getShmemInfo_section, walkStep134]
theorem symbolLength134 : LabToTarget.secLength Padded134.lines 0 = 608 := by
  with_unfolding_all rfl
#print axioms shmemStep134
#print axioms symbolLength134
end InitE.BackendStages.Metadata
