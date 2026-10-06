import InitE.BackendStages.Metadata.Data365
import InitE.BackendStages.Padded365
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep365 : walkShmemLines Padded365.lines 224596 beforeFfis365 beforeShmem365 = (225328, afterFfis365, afterShmem365) := by
  with_unfolding_all rfl
theorem shmemStep365 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded365 :: rest) 224596 beforeFfis365 beforeShmem365 = LabToTarget.getShmemInfo rest 225328 afterFfis365 afterShmem365 := by
  rw [getShmemInfo_section, walkStep365]
theorem symbolLength365 : LabToTarget.secLength Padded365.lines 0 = 732 := by
  with_unfolding_all rfl
#print axioms shmemStep365
#print axioms symbolLength365
end InitE.BackendStages.Metadata
