import InitE.BackendStages.Metadata.Data590
import InitE.BackendStages.Padded590
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep590 : walkShmemLines Padded590.lines 386720 beforeFfis590 beforeShmem590 = (389152, afterFfis590, afterShmem590) := by
  with_unfolding_all rfl
theorem shmemStep590 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded590 :: rest) 386720 beforeFfis590 beforeShmem590 = LabToTarget.getShmemInfo rest 389152 afterFfis590 afterShmem590 := by
  rw [getShmemInfo_section, walkStep590]
theorem symbolLength590 : LabToTarget.secLength Padded590.lines 0 = 2432 := by
  with_unfolding_all rfl
#print axioms shmemStep590
#print axioms symbolLength590
end InitE.BackendStages.Metadata
