import InitE.BackendStages.Metadata.Data708
import InitE.BackendStages.Filtered708
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis708_eq : ffiLines Filtered708.lines = localFfis708 := by
  with_unfolding_all rfl
theorem ffiStep708 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis708) : LabToTarget.findFfiNames (Filtered708 :: rest) = suffixFfis708 := by
  rw [findFfiNames_section, localFfis708_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep708
end InitE.BackendStages.Metadata
