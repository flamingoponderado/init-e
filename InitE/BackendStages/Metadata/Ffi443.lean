import InitE.BackendStages.Metadata.Data443
import InitE.BackendStages.Filtered443
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis443_eq : ffiLines Filtered443.lines = localFfis443 := by
  with_unfolding_all rfl
theorem ffiStep443 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis443) : LabToTarget.findFfiNames (Filtered443 :: rest) = suffixFfis443 := by
  rw [findFfiNames_section, localFfis443_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep443
end InitE.BackendStages.Metadata
