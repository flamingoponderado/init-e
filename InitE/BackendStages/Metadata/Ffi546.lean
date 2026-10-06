import InitE.BackendStages.Metadata.Data546
import InitE.BackendStages.Filtered546
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis546_eq : ffiLines Filtered546.lines = localFfis546 := by
  with_unfolding_all rfl
theorem ffiStep546 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis546) : LabToTarget.findFfiNames (Filtered546 :: rest) = suffixFfis546 := by
  rw [findFfiNames_section, localFfis546_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep546
end InitE.BackendStages.Metadata
