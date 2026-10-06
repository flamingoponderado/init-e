import InitE.BackendStages.Metadata.Data282
import InitE.BackendStages.Filtered282
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis282_eq : ffiLines Filtered282.lines = localFfis282 := by
  with_unfolding_all rfl
theorem ffiStep282 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis282) : LabToTarget.findFfiNames (Filtered282 :: rest) = suffixFfis282 := by
  rw [findFfiNames_section, localFfis282_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep282
end InitE.BackendStages.Metadata
