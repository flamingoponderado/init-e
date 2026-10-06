import InitE.BackendStages.Metadata.Data479
import InitE.BackendStages.Filtered479
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis479_eq : ffiLines Filtered479.lines = localFfis479 := by
  with_unfolding_all rfl
theorem ffiStep479 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis479) : LabToTarget.findFfiNames (Filtered479 :: rest) = suffixFfis479 := by
  rw [findFfiNames_section, localFfis479_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep479
end InitE.BackendStages.Metadata
