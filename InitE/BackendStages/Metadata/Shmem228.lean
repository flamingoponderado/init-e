import InitE.BackendStages.Metadata.Data228
import InitE.BackendStages.Padded228
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep228 : walkShmemLines Padded228.lines 76772 beforeFfis228 beforeShmem228 = (77816, afterFfis228, afterShmem228) := by
  with_unfolding_all rfl
theorem shmemStep228 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded228 :: rest) 76772 beforeFfis228 beforeShmem228 = LabToTarget.getShmemInfo rest 77816 afterFfis228 afterShmem228 := by
  rw [getShmemInfo_section, walkStep228]
theorem symbolLength228 : LabToTarget.secLength Padded228.lines 0 = 1044 := by
  with_unfolding_all rfl
#print axioms shmemStep228
#print axioms symbolLength228
end InitE.BackendStages.Metadata
