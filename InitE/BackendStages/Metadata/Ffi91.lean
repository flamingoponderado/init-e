import InitE.BackendStages.Metadata.Data91
import InitE.BackendStages.Filtered91
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis91_eq : ffiLines Filtered91.lines = localFfis91 := by
  with_unfolding_all rfl
theorem ffiStep91 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis91) : LabToTarget.findFfiNames (Filtered91 :: rest) = suffixFfis91 := by
  rw [findFfiNames_section, localFfis91_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep91
end InitE.BackendStages.Metadata
