import InitE.BackendStages.Metadata.Data126
import InitE.BackendStages.Filtered126
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis126_eq : ffiLines Filtered126.lines = localFfis126 := by
  with_unfolding_all rfl
theorem ffiStep126 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis126) : LabToTarget.findFfiNames (Filtered126 :: rest) = suffixFfis126 := by
  rw [findFfiNames_section, localFfis126_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep126
end InitE.BackendStages.Metadata
