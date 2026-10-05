import InitE.BackendStages.Metadata.Data584
import InitE.BackendStages.Filtered584
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis584_eq : ffiLines Filtered584.lines = localFfis584 := by
  with_unfolding_all rfl
theorem ffiStep584 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis584) : LabToTarget.findFfiNames (Filtered584 :: rest) = suffixFfis584 := by
  rw [findFfiNames_section, localFfis584_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep584
end InitE.BackendStages.Metadata
