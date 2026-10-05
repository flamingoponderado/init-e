import InitE.BackendStages.Metadata.Data651
import InitE.BackendStages.Filtered651
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis651_eq : ffiLines Filtered651.lines = localFfis651 := by
  with_unfolding_all rfl
theorem ffiStep651 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis651) : LabToTarget.findFfiNames (Filtered651 :: rest) = suffixFfis651 := by
  rw [findFfiNames_section, localFfis651_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep651
end InitE.BackendStages.Metadata
