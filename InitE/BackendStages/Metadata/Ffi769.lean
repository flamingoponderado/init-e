import InitE.BackendStages.Metadata.Data769
import InitE.BackendStages.Filtered769
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis769_eq : ffiLines Filtered769.lines = localFfis769 := by
  with_unfolding_all rfl
theorem ffiStep769 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis769) : LabToTarget.findFfiNames (Filtered769 :: rest) = suffixFfis769 := by
  rw [findFfiNames_section, localFfis769_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep769
end InitE.BackendStages.Metadata
