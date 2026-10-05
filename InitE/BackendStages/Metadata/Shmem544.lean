import InitE.BackendStages.Metadata.Data544
import InitE.BackendStages.Padded544
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep544 : walkShmemLines Padded544.lines 344900 beforeFfis544 beforeShmem544 = (345536, afterFfis544, afterShmem544) := by
  with_unfolding_all rfl
theorem shmemStep544 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded544 :: rest) 344900 beforeFfis544 beforeShmem544 = LabToTarget.getShmemInfo rest 345536 afterFfis544 afterShmem544 := by
  rw [getShmemInfo_section, walkStep544]
theorem symbolLength544 : LabToTarget.secLength Padded544.lines 0 = 636 := by
  with_unfolding_all rfl
#print axioms shmemStep544
#print axioms symbolLength544
end InitE.BackendStages.Metadata
