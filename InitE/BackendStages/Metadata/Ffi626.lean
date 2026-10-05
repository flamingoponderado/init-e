import InitE.BackendStages.Metadata.Data626
import InitE.BackendStages.Filtered626
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis626_eq : ffiLines Filtered626.lines = localFfis626 := by
  with_unfolding_all rfl
theorem ffiStep626 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis626) : LabToTarget.findFfiNames (Filtered626 :: rest) = suffixFfis626 := by
  rw [findFfiNames_section, localFfis626_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep626
end InitE.BackendStages.Metadata
