import InitE.BackendStages.Metadata.Data120
import InitE.BackendStages.Filtered120
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis120_eq : ffiLines Filtered120.lines = localFfis120 := by
  with_unfolding_all rfl
theorem ffiStep120 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis120) : LabToTarget.findFfiNames (Filtered120 :: rest) = suffixFfis120 := by
  rw [findFfiNames_section, localFfis120_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep120
end InitE.BackendStages.Metadata
