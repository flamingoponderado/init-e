import InitE.BackendStages.Metadata.Data655
import InitE.BackendStages.Filtered655
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis655_eq : ffiLines Filtered655.lines = localFfis655 := by
  with_unfolding_all rfl
theorem ffiStep655 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis655) : LabToTarget.findFfiNames (Filtered655 :: rest) = suffixFfis655 := by
  rw [findFfiNames_section, localFfis655_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep655
end InitE.BackendStages.Metadata
