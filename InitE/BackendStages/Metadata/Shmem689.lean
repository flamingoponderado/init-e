import InitE.BackendStages.Metadata.Data689
import InitE.BackendStages.Padded689
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep689 : walkShmemLines Padded689.lines 541816 beforeFfis689 beforeShmem689 = (542280, afterFfis689, afterShmem689) := by
  with_unfolding_all rfl
theorem shmemStep689 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded689 :: rest) 541816 beforeFfis689 beforeShmem689 = LabToTarget.getShmemInfo rest 542280 afterFfis689 afterShmem689 := by
  rw [getShmemInfo_section, walkStep689]
theorem symbolLength689 : LabToTarget.secLength Padded689.lines 0 = 464 := by
  with_unfolding_all rfl
#print axioms shmemStep689
#print axioms symbolLength689
end InitE.BackendStages.Metadata
