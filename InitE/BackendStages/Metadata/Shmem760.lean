import InitE.BackendStages.Metadata.Data760
import InitE.BackendStages.Padded760
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep760 : walkShmemLines Padded760.lines 668332 beforeFfis760 beforeShmem760 = (668780, afterFfis760, afterShmem760) := by
  with_unfolding_all rfl
theorem shmemStep760 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded760 :: rest) 668332 beforeFfis760 beforeShmem760 = LabToTarget.getShmemInfo rest 668780 afterFfis760 afterShmem760 := by
  rw [getShmemInfo_section, walkStep760]
theorem symbolLength760 : LabToTarget.secLength Padded760.lines 0 = 448 := by
  with_unfolding_all rfl
#print axioms shmemStep760
#print axioms symbolLength760
end InitE.BackendStages.Metadata
