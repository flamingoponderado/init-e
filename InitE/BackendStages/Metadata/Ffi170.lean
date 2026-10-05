import InitE.BackendStages.Metadata.Data170
import InitE.BackendStages.Filtered170
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis170_eq : ffiLines Filtered170.lines = localFfis170 := by
  with_unfolding_all rfl
theorem ffiStep170 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis170) : LabToTarget.findFfiNames (Filtered170 :: rest) = suffixFfis170 := by
  rw [findFfiNames_section, localFfis170_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep170
end InitE.BackendStages.Metadata
