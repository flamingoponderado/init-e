import InitE.BackendStages.Metadata.Data597
import InitE.BackendStages.Padded597
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep597 : walkShmemLines Padded597.lines 401080 beforeFfis597 beforeShmem597 = (413512, afterFfis597, afterShmem597) := by
  with_unfolding_all rfl
theorem shmemStep597 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded597 :: rest) 401080 beforeFfis597 beforeShmem597 = LabToTarget.getShmemInfo rest 413512 afterFfis597 afterShmem597 := by
  rw [getShmemInfo_section, walkStep597]
theorem symbolLength597 : LabToTarget.secLength Padded597.lines 0 = 12432 := by
  with_unfolding_all rfl
#print axioms shmemStep597
#print axioms symbolLength597
end InitE.BackendStages.Metadata
