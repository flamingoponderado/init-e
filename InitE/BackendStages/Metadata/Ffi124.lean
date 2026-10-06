import InitE.BackendStages.Metadata.Data124
import InitE.BackendStages.Filtered124
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis124_eq : ffiLines Filtered124.lines = localFfis124 := by
  with_unfolding_all rfl
theorem ffiStep124 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis124) : LabToTarget.findFfiNames (Filtered124 :: rest) = suffixFfis124 := by
  rw [findFfiNames_section, localFfis124_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep124
end InitE.BackendStages.Metadata
