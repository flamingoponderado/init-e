import InitE.BackendStages.Metadata.Data773
import InitE.BackendStages.Filtered773
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis773_eq : ffiLines Filtered773.lines = localFfis773 := by
  with_unfolding_all rfl
theorem ffiStep773 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis773) : LabToTarget.findFfiNames (Filtered773 :: rest) = suffixFfis773 := by
  rw [findFfiNames_section, localFfis773_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep773
end InitE.BackendStages.Metadata
