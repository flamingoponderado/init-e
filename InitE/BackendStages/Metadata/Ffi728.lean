import InitE.BackendStages.Metadata.Data728
import InitE.BackendStages.Filtered728
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis728_eq : ffiLines Filtered728.lines = localFfis728 := by
  with_unfolding_all rfl
theorem ffiStep728 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis728) : LabToTarget.findFfiNames (Filtered728 :: rest) = suffixFfis728 := by
  rw [findFfiNames_section, localFfis728_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep728
end InitE.BackendStages.Metadata
