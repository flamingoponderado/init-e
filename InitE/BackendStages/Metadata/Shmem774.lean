import InitE.BackendStages.Metadata.Data774
import InitE.BackendStages.Padded774
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep774 : walkShmemLines Padded774.lines 683040 beforeFfis774 beforeShmem774 = (684552, afterFfis774, afterShmem774) := by
  with_unfolding_all rfl
theorem shmemStep774 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded774 :: rest) 683040 beforeFfis774 beforeShmem774 = LabToTarget.getShmemInfo rest 684552 afterFfis774 afterShmem774 := by
  rw [getShmemInfo_section, walkStep774]
theorem symbolLength774 : LabToTarget.secLength Padded774.lines 0 = 1512 := by
  with_unfolding_all rfl
#print axioms shmemStep774
#print axioms symbolLength774
end InitE.BackendStages.Metadata
