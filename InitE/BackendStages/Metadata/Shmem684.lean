import InitE.BackendStages.Metadata.Data684
import InitE.BackendStages.Padded684
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep684 : walkShmemLines Padded684.lines 540976 beforeFfis684 beforeShmem684 = (540996, afterFfis684, afterShmem684) := by
  with_unfolding_all rfl
theorem shmemStep684 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded684 :: rest) 540976 beforeFfis684 beforeShmem684 = LabToTarget.getShmemInfo rest 540996 afterFfis684 afterShmem684 := by
  rw [getShmemInfo_section, walkStep684]
theorem symbolLength684 : LabToTarget.secLength Padded684.lines 0 = 20 := by
  with_unfolding_all rfl
#print axioms shmemStep684
#print axioms symbolLength684
end InitE.BackendStages.Metadata
