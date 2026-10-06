import InitE.BackendStages.Metadata.Data217
import InitE.BackendStages.Filtered217
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis217_eq : ffiLines Filtered217.lines = localFfis217 := by
  with_unfolding_all rfl
theorem ffiStep217 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis217) : LabToTarget.findFfiNames (Filtered217 :: rest) = suffixFfis217 := by
  rw [findFfiNames_section, localFfis217_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep217
end InitE.BackendStages.Metadata
