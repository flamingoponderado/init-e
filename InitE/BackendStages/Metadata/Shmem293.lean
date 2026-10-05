import InitE.BackendStages.Metadata.Data293
import InitE.BackendStages.Padded293
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep293 : walkShmemLines Padded293.lines 175668 beforeFfis293 beforeShmem293 = (175924, afterFfis293, afterShmem293) := by
  with_unfolding_all rfl
theorem shmemStep293 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded293 :: rest) 175668 beforeFfis293 beforeShmem293 = LabToTarget.getShmemInfo rest 175924 afterFfis293 afterShmem293 := by
  rw [getShmemInfo_section, walkStep293]
theorem symbolLength293 : LabToTarget.secLength Padded293.lines 0 = 256 := by
  with_unfolding_all rfl
#print axioms shmemStep293
#print axioms symbolLength293
end InitE.BackendStages.Metadata
