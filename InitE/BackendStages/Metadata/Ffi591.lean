import InitE.BackendStages.Metadata.Data591
import InitE.BackendStages.Filtered591
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis591_eq : ffiLines Filtered591.lines = localFfis591 := by
  with_unfolding_all rfl
theorem ffiStep591 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis591) : LabToTarget.findFfiNames (Filtered591 :: rest) = suffixFfis591 := by
  rw [findFfiNames_section, localFfis591_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep591
end InitE.BackendStages.Metadata
