import InitE.BackendStages.Metadata.Data634
import InitE.BackendStages.Padded634
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep634 : walkShmemLines Padded634.lines 472684 beforeFfis634 beforeShmem634 = (473828, afterFfis634, afterShmem634) := by
  with_unfolding_all rfl
theorem shmemStep634 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded634 :: rest) 472684 beforeFfis634 beforeShmem634 = LabToTarget.getShmemInfo rest 473828 afterFfis634 afterShmem634 := by
  rw [getShmemInfo_section, walkStep634]
theorem symbolLength634 : LabToTarget.secLength Padded634.lines 0 = 1144 := by
  with_unfolding_all rfl
#print axioms shmemStep634
#print axioms symbolLength634
end InitE.BackendStages.Metadata
