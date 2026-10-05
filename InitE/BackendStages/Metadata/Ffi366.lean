import InitE.BackendStages.Metadata.Data366
import InitE.BackendStages.Filtered366
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis366_eq : ffiLines Filtered366.lines = localFfis366 := by
  with_unfolding_all rfl
theorem ffiStep366 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis366) : LabToTarget.findFfiNames (Filtered366 :: rest) = suffixFfis366 := by
  rw [findFfiNames_section, localFfis366_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep366
end InitE.BackendStages.Metadata
