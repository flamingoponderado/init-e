import InitE.BackendStages.Metadata.Data495
import InitE.BackendStages.Filtered495
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis495_eq : ffiLines Filtered495.lines = localFfis495 := by
  with_unfolding_all rfl
theorem ffiStep495 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis495) : LabToTarget.findFfiNames (Filtered495 :: rest) = suffixFfis495 := by
  rw [findFfiNames_section, localFfis495_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep495
end InitE.BackendStages.Metadata
