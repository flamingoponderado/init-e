import InitE.BackendStages.Metadata.Data215
import InitE.BackendStages.Padded215
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep215 : walkShmemLines Padded215.lines 72184 beforeFfis215 beforeShmem215 = (72464, afterFfis215, afterShmem215) := by
  with_unfolding_all rfl
theorem shmemStep215 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded215 :: rest) 72184 beforeFfis215 beforeShmem215 = LabToTarget.getShmemInfo rest 72464 afterFfis215 afterShmem215 := by
  rw [getShmemInfo_section, walkStep215]
theorem symbolLength215 : LabToTarget.secLength Padded215.lines 0 = 280 := by
  with_unfolding_all rfl
#print axioms shmemStep215
#print axioms symbolLength215
end InitE.BackendStages.Metadata
