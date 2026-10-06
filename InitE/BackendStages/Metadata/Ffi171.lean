import InitE.BackendStages.Metadata.Data171
import InitE.BackendStages.Filtered171
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis171_eq : ffiLines Filtered171.lines = localFfis171 := by
  with_unfolding_all rfl
theorem ffiStep171 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis171) : LabToTarget.findFfiNames (Filtered171 :: rest) = suffixFfis171 := by
  rw [findFfiNames_section, localFfis171_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep171
end InitE.BackendStages.Metadata
