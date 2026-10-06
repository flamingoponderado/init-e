import InitE.BackendStages.Metadata.Data848
import InitE.BackendStages.Padded848
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep848 : walkShmemLines Padded848.lines 829016 beforeFfis848 beforeShmem848 = (832520, afterFfis848, afterShmem848) := by
  with_unfolding_all rfl
theorem shmemStep848 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded848 :: rest) 829016 beforeFfis848 beforeShmem848 = LabToTarget.getShmemInfo rest 832520 afterFfis848 afterShmem848 := by
  rw [getShmemInfo_section, walkStep848]
theorem symbolLength848 : LabToTarget.secLength Padded848.lines 0 = 3504 := by
  with_unfolding_all rfl
#print axioms shmemStep848
#print axioms symbolLength848
end InitE.BackendStages.Metadata
