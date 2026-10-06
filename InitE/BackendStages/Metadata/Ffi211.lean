import InitE.BackendStages.Metadata.Data211
import InitE.BackendStages.Filtered211
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis211_eq : ffiLines Filtered211.lines = localFfis211 := by
  with_unfolding_all rfl
theorem ffiStep211 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis211) : LabToTarget.findFfiNames (Filtered211 :: rest) = suffixFfis211 := by
  rw [findFfiNames_section, localFfis211_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep211
end InitE.BackendStages.Metadata
