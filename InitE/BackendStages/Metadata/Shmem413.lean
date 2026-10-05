import InitE.BackendStages.Metadata.Data413
import InitE.BackendStages.Padded413
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep413 : walkShmemLines Padded413.lines 254248 beforeFfis413 beforeShmem413 = (254916, afterFfis413, afterShmem413) := by
  with_unfolding_all rfl
theorem shmemStep413 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded413 :: rest) 254248 beforeFfis413 beforeShmem413 = LabToTarget.getShmemInfo rest 254916 afterFfis413 afterShmem413 := by
  rw [getShmemInfo_section, walkStep413]
theorem symbolLength413 : LabToTarget.secLength Padded413.lines 0 = 668 := by
  with_unfolding_all rfl
#print axioms shmemStep413
#print axioms symbolLength413
end InitE.BackendStages.Metadata
