import InitE.BackendStages.Metadata.Data577
import InitE.BackendStages.Filtered577
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis577_eq : ffiLines Filtered577.lines = localFfis577 := by
  with_unfolding_all rfl
theorem ffiStep577 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis577) : LabToTarget.findFfiNames (Filtered577 :: rest) = suffixFfis577 := by
  rw [findFfiNames_section, localFfis577_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep577
end InitE.BackendStages.Metadata
