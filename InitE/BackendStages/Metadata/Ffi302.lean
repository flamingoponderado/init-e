import InitE.BackendStages.Metadata.Data302
import InitE.BackendStages.Filtered302
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis302_eq : ffiLines Filtered302.lines = localFfis302 := by
  with_unfolding_all rfl
theorem ffiStep302 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis302) : LabToTarget.findFfiNames (Filtered302 :: rest) = suffixFfis302 := by
  rw [findFfiNames_section, localFfis302_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep302
end InitE.BackendStages.Metadata
