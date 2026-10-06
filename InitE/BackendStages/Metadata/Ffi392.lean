import InitE.BackendStages.Metadata.Data392
import InitE.BackendStages.Filtered392
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis392_eq : ffiLines Filtered392.lines = localFfis392 := by
  with_unfolding_all rfl
theorem ffiStep392 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis392) : LabToTarget.findFfiNames (Filtered392 :: rest) = suffixFfis392 := by
  rw [findFfiNames_section, localFfis392_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep392
end InitE.BackendStages.Metadata
