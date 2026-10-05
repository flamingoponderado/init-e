import InitE.BackendStages.Metadata.Data65
import InitE.BackendStages.Filtered65
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis65_eq : ffiLines Filtered65.lines = localFfis65 := by
  with_unfolding_all rfl
theorem ffiStep65 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis65) : LabToTarget.findFfiNames (Filtered65 :: rest) = suffixFfis65 := by
  rw [findFfiNames_section, localFfis65_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep65
end InitE.BackendStages.Metadata
