import InitE.BackendStages.Metadata.Data473
import InitE.BackendStages.Padded473
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem walkStep473 : walkShmemLines Padded473.lines 302680 beforeFfis473 beforeShmem473 = (303008, afterFfis473, afterShmem473) := by
  with_unfolding_all rfl
theorem shmemStep473 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded473 :: rest) 302680 beforeFfis473 beforeShmem473 = LabToTarget.getShmemInfo rest 303008 afterFfis473 afterShmem473 := by
  rw [getShmemInfo_section, walkStep473]
theorem symbolLength473 : LabToTarget.secLength Padded473.lines 0 = 328 := by
  with_unfolding_all rfl
#print axioms shmemStep473
#print axioms symbolLength473
end InitE.BackendStages.Metadata
