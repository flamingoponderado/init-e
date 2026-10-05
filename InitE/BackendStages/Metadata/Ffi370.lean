import InitE.BackendStages.Metadata.Data370
import InitE.BackendStages.Filtered370
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis370_eq : ffiLines Filtered370.lines = localFfis370 := by
  with_unfolding_all rfl
theorem ffiStep370 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis370) : LabToTarget.findFfiNames (Filtered370 :: rest) = suffixFfis370 := by
  rw [findFfiNames_section, localFfis370_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep370
end InitE.BackendStages.Metadata
