import InitE.BackendStages.Metadata.Data776
import InitE.BackendStages.Padded776
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep776 : walkShmemLines Padded776.lines 684816 beforeFfis776 beforeShmem776 = (688636, afterFfis776, afterShmem776) := by
  with_unfolding_all rfl
theorem shmemStep776 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded776 :: rest) 684816 beforeFfis776 beforeShmem776 = LabToTarget.getShmemInfo rest 688636 afterFfis776 afterShmem776 := by
  rw [getShmemInfo_section, walkStep776]
theorem symbolLength776 : LabToTarget.secLength Padded776.lines 0 = 3820 := by
  with_unfolding_all rfl
#print axioms shmemStep776
#print axioms symbolLength776
end InitE.BackendStages.Metadata
