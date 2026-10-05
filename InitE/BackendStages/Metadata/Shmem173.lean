import InitE.BackendStages.Metadata.Data173
import InitE.BackendStages.Padded173
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep173 : walkShmemLines Padded173.lines 47168 beforeFfis173 beforeShmem173 = (47216, afterFfis173, afterShmem173) := by
  with_unfolding_all rfl
theorem shmemStep173 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded173 :: rest) 47168 beforeFfis173 beforeShmem173 = LabToTarget.getShmemInfo rest 47216 afterFfis173 afterShmem173 := by
  rw [getShmemInfo_section, walkStep173]
theorem symbolLength173 : LabToTarget.secLength Padded173.lines 0 = 48 := by
  with_unfolding_all rfl
#print axioms shmemStep173
#print axioms symbolLength173
end InitE.BackendStages.Metadata
