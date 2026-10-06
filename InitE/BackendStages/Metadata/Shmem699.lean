import InitE.BackendStages.Metadata.Data699
import InitE.BackendStages.Padded699
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep699 : walkShmemLines Padded699.lines 574416 beforeFfis699 beforeShmem699 = (575024, afterFfis699, afterShmem699) := by
  with_unfolding_all rfl
theorem shmemStep699 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded699 :: rest) 574416 beforeFfis699 beforeShmem699 = LabToTarget.getShmemInfo rest 575024 afterFfis699 afterShmem699 := by
  rw [getShmemInfo_section, walkStep699]
theorem symbolLength699 : LabToTarget.secLength Padded699.lines 0 = 608 := by
  with_unfolding_all rfl
#print axioms shmemStep699
#print axioms symbolLength699
end InitE.BackendStages.Metadata
