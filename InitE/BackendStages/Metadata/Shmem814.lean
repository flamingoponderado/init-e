import InitE.BackendStages.Metadata.Data814
import InitE.BackendStages.Padded814
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep814 : walkShmemLines Padded814.lines 783324 beforeFfis814 beforeShmem814 = (784872, afterFfis814, afterShmem814) := by
  with_unfolding_all rfl
theorem shmemStep814 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded814 :: rest) 783324 beforeFfis814 beforeShmem814 = LabToTarget.getShmemInfo rest 784872 afterFfis814 afterShmem814 := by
  rw [getShmemInfo_section, walkStep814]
theorem symbolLength814 : LabToTarget.secLength Padded814.lines 0 = 1548 := by
  with_unfolding_all rfl
#print axioms shmemStep814
#print axioms symbolLength814
end InitE.BackendStages.Metadata
