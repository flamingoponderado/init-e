import InitE.BackendStages.Metadata.Data687
import InitE.BackendStages.Filtered687
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis687_eq : ffiLines Filtered687.lines = localFfis687 := by
  with_unfolding_all rfl
theorem ffiStep687 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis687) : LabToTarget.findFfiNames (Filtered687 :: rest) = suffixFfis687 := by
  rw [findFfiNames_section, localFfis687_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep687
end InitE.BackendStages.Metadata
