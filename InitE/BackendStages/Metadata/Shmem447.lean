import InitE.BackendStages.Metadata.Data447
import InitE.BackendStages.Padded447
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep447 : walkShmemLines Padded447.lines 272556 beforeFfis447 beforeShmem447 = (272880, afterFfis447, afterShmem447) := by
  with_unfolding_all rfl
theorem shmemStep447 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded447 :: rest) 272556 beforeFfis447 beforeShmem447 = LabToTarget.getShmemInfo rest 272880 afterFfis447 afterShmem447 := by
  rw [getShmemInfo_section, walkStep447]
theorem symbolLength447 : LabToTarget.secLength Padded447.lines 0 = 324 := by
  with_unfolding_all rfl
#print axioms shmemStep447
#print axioms symbolLength447
end InitE.BackendStages.Metadata
