import InitE.BackendStages.Metadata.Data109
import InitE.BackendStages.Filtered109
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis109_eq : ffiLines Filtered109.lines = localFfis109 := by
  with_unfolding_all rfl
theorem ffiStep109 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis109) : LabToTarget.findFfiNames (Filtered109 :: rest) = suffixFfis109 := by
  rw [findFfiNames_section, localFfis109_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep109
end InitE.BackendStages.Metadata
