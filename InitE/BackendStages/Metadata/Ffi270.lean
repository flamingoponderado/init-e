import InitE.BackendStages.Metadata.Data270
import InitE.BackendStages.Filtered270
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis270_eq : ffiLines Filtered270.lines = localFfis270 := by
  with_unfolding_all rfl
theorem ffiStep270 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis270) : LabToTarget.findFfiNames (Filtered270 :: rest) = suffixFfis270 := by
  rw [findFfiNames_section, localFfis270_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep270
end InitE.BackendStages.Metadata
