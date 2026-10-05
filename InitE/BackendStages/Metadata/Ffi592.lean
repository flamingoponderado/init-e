import InitE.BackendStages.Metadata.Data592
import InitE.BackendStages.Filtered592
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis592_eq : ffiLines Filtered592.lines = localFfis592 := by
  with_unfolding_all rfl
theorem ffiStep592 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis592) : LabToTarget.findFfiNames (Filtered592 :: rest) = suffixFfis592 := by
  rw [findFfiNames_section, localFfis592_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep592
end InitE.BackendStages.Metadata
