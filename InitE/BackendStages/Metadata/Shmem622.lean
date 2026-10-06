import InitE.BackendStages.Metadata.Data622
import InitE.BackendStages.Padded622
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep622 : walkShmemLines Padded622.lines 441284 beforeFfis622 beforeShmem622 = (441980, afterFfis622, afterShmem622) := by
  with_unfolding_all rfl
theorem shmemStep622 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded622 :: rest) 441284 beforeFfis622 beforeShmem622 = LabToTarget.getShmemInfo rest 441980 afterFfis622 afterShmem622 := by
  rw [getShmemInfo_section, walkStep622]
theorem symbolLength622 : LabToTarget.secLength Padded622.lines 0 = 696 := by
  with_unfolding_all rfl
#print axioms shmemStep622
#print axioms symbolLength622
end InitE.BackendStages.Metadata
