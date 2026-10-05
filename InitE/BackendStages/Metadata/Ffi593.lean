import InitE.BackendStages.Metadata.Data593
import InitE.BackendStages.Filtered593
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis593_eq : ffiLines Filtered593.lines = localFfis593 := by
  with_unfolding_all rfl
theorem ffiStep593 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis593) : LabToTarget.findFfiNames (Filtered593 :: rest) = suffixFfis593 := by
  rw [findFfiNames_section, localFfis593_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep593
end InitE.BackendStages.Metadata
