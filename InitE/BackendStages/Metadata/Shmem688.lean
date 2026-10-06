import InitE.BackendStages.Metadata.Data688
import InitE.BackendStages.Padded688
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep688 : walkShmemLines Padded688.lines 541800 beforeFfis688 beforeShmem688 = (541816, afterFfis688, afterShmem688) := by
  with_unfolding_all rfl
theorem shmemStep688 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded688 :: rest) 541800 beforeFfis688 beforeShmem688 = LabToTarget.getShmemInfo rest 541816 afterFfis688 afterShmem688 := by
  rw [getShmemInfo_section, walkStep688]
theorem symbolLength688 : LabToTarget.secLength Padded688.lines 0 = 16 := by
  with_unfolding_all rfl
#print axioms shmemStep688
#print axioms symbolLength688
end InitE.BackendStages.Metadata
