import InitE.BackendStages.Metadata.Data221
import InitE.BackendStages.Padded221
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep221 : walkShmemLines Padded221.lines 73208 beforeFfis221 beforeShmem221 = (75376, afterFfis221, afterShmem221) := by
  with_unfolding_all rfl
theorem shmemStep221 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded221 :: rest) 73208 beforeFfis221 beforeShmem221 = LabToTarget.getShmemInfo rest 75376 afterFfis221 afterShmem221 := by
  rw [getShmemInfo_section, walkStep221]
theorem symbolLength221 : LabToTarget.secLength Padded221.lines 0 = 2168 := by
  with_unfolding_all rfl
#print axioms shmemStep221
#print axioms symbolLength221
end InitE.BackendStages.Metadata
