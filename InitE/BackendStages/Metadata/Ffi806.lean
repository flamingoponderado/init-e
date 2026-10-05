import InitE.BackendStages.Metadata.Data806
import InitE.BackendStages.Filtered806
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis806_eq : ffiLines Filtered806.lines = localFfis806 := by
  with_unfolding_all rfl
theorem ffiStep806 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis806) : LabToTarget.findFfiNames (Filtered806 :: rest) = suffixFfis806 := by
  rw [findFfiNames_section, localFfis806_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep806
end InitE.BackendStages.Metadata
