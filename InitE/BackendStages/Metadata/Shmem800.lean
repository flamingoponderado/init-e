import InitE.BackendStages.Metadata.Data800
import InitE.BackendStages.Padded800
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep800 : walkShmemLines Padded800.lines 733420 beforeFfis800 beforeShmem800 = (734476, afterFfis800, afterShmem800) := by
  with_unfolding_all rfl
theorem shmemStep800 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded800 :: rest) 733420 beforeFfis800 beforeShmem800 = LabToTarget.getShmemInfo rest 734476 afterFfis800 afterShmem800 := by
  rw [getShmemInfo_section, walkStep800]
theorem symbolLength800 : LabToTarget.secLength Padded800.lines 0 = 1056 := by
  with_unfolding_all rfl
#print axioms shmemStep800
#print axioms symbolLength800
end InitE.BackendStages.Metadata
