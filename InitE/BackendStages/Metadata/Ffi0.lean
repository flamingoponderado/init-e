import InitE.BackendStages.Metadata.Data0
import InitE.BackendStages.Filtered0
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis0_eq : ffiLines Filtered0.lines = localFfis0 := by
  with_unfolding_all rfl
theorem ffiStep0 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis0) : LabToTarget.findFfiNames (Filtered0 :: rest) = suffixFfis0 := by
  rw [findFfiNames_section, localFfis0_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep0
end InitE.BackendStages.Metadata
