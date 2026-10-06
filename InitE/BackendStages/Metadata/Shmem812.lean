import InitE.BackendStages.Metadata.Data812
import InitE.BackendStages.Padded812
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep812 : walkShmemLines Padded812.lines 772760 beforeFfis812 beforeShmem812 = (775984, afterFfis812, afterShmem812) := by
  with_unfolding_all rfl
theorem shmemStep812 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded812 :: rest) 772760 beforeFfis812 beforeShmem812 = LabToTarget.getShmemInfo rest 775984 afterFfis812 afterShmem812 := by
  rw [getShmemInfo_section, walkStep812]
theorem symbolLength812 : LabToTarget.secLength Padded812.lines 0 = 3224 := by
  with_unfolding_all rfl
#print axioms shmemStep812
#print axioms symbolLength812
end InitE.BackendStages.Metadata
