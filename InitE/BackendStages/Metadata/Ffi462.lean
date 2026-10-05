import InitE.BackendStages.Metadata.Data462
import InitE.BackendStages.Filtered462
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis462_eq : ffiLines Filtered462.lines = localFfis462 := by
  with_unfolding_all rfl
theorem ffiStep462 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis462) : LabToTarget.findFfiNames (Filtered462 :: rest) = suffixFfis462 := by
  rw [findFfiNames_section, localFfis462_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep462
end InitE.BackendStages.Metadata
