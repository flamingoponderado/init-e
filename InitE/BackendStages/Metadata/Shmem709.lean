import InitE.BackendStages.Metadata.Data709
import InitE.BackendStages.Padded709
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep709 : walkShmemLines Padded709.lines 601816 beforeFfis709 beforeShmem709 = (607556, afterFfis709, afterShmem709) := by
  with_unfolding_all rfl
theorem shmemStep709 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded709 :: rest) 601816 beforeFfis709 beforeShmem709 = LabToTarget.getShmemInfo rest 607556 afterFfis709 afterShmem709 := by
  rw [getShmemInfo_section, walkStep709]
theorem symbolLength709 : LabToTarget.secLength Padded709.lines 0 = 5740 := by
  with_unfolding_all rfl
#print axioms shmemStep709
#print axioms symbolLength709
end InitE.BackendStages.Metadata
