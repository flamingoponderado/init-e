import InitE.BackendStages.Metadata.Data206
import InitE.BackendStages.Filtered206
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis206_eq : ffiLines Filtered206.lines = localFfis206 := by
  with_unfolding_all rfl
theorem ffiStep206 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis206) : LabToTarget.findFfiNames (Filtered206 :: rest) = suffixFfis206 := by
  rw [findFfiNames_section, localFfis206_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep206
end InitE.BackendStages.Metadata
