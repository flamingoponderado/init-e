import InitE.BackendStages.Metadata.Data461
import InitE.BackendStages.Filtered461
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis461_eq : ffiLines Filtered461.lines = localFfis461 := by
  with_unfolding_all rfl
theorem ffiStep461 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis461) : LabToTarget.findFfiNames (Filtered461 :: rest) = suffixFfis461 := by
  rw [findFfiNames_section, localFfis461_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep461
end InitE.BackendStages.Metadata
