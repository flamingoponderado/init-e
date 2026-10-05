import InitE.BackendStages.Metadata.Data582
import InitE.BackendStages.Filtered582
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis582_eq : ffiLines Filtered582.lines = localFfis582 := by
  with_unfolding_all rfl
theorem ffiStep582 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis582) : LabToTarget.findFfiNames (Filtered582 :: rest) = suffixFfis582 := by
  rw [findFfiNames_section, localFfis582_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep582
end InitE.BackendStages.Metadata
