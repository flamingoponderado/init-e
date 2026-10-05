import InitE.BackendStages.Metadata.Data168
import InitE.BackendStages.Filtered168
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis168_eq : ffiLines Filtered168.lines = localFfis168 := by
  with_unfolding_all rfl
theorem ffiStep168 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis168) : LabToTarget.findFfiNames (Filtered168 :: rest) = suffixFfis168 := by
  rw [findFfiNames_section, localFfis168_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep168
end InitE.BackendStages.Metadata
