import InitE.BackendStages.Metadata.Data79
import InitE.BackendStages.Filtered79
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis79_eq : ffiLines Filtered79.lines = localFfis79 := by
  with_unfolding_all rfl
theorem ffiStep79 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis79) : LabToTarget.findFfiNames (Filtered79 :: rest) = suffixFfis79 := by
  rw [findFfiNames_section, localFfis79_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep79
end InitE.BackendStages.Metadata
