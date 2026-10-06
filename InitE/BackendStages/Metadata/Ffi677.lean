import InitE.BackendStages.Metadata.Data677
import InitE.BackendStages.Filtered677
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis677_eq : ffiLines Filtered677.lines = localFfis677 := by
  with_unfolding_all rfl
theorem ffiStep677 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis677) : LabToTarget.findFfiNames (Filtered677 :: rest) = suffixFfis677 := by
  rw [findFfiNames_section, localFfis677_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep677
end InitE.BackendStages.Metadata
