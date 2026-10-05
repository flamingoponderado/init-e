import InitE.BackendStages.Metadata.Data428
import InitE.BackendStages.Filtered428
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis428_eq : ffiLines Filtered428.lines = localFfis428 := by
  with_unfolding_all rfl
theorem ffiStep428 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis428) : LabToTarget.findFfiNames (Filtered428 :: rest) = suffixFfis428 := by
  rw [findFfiNames_section, localFfis428_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep428
end InitE.BackendStages.Metadata
