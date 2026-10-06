import InitE.BackendStages.Metadata.Data520
import InitE.BackendStages.Filtered520
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis520_eq : ffiLines Filtered520.lines = localFfis520 := by
  with_unfolding_all rfl
theorem ffiStep520 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis520) : LabToTarget.findFfiNames (Filtered520 :: rest) = suffixFfis520 := by
  rw [findFfiNames_section, localFfis520_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep520
end InitE.BackendStages.Metadata
