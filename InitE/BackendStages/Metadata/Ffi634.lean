import InitE.BackendStages.Metadata.Data634
import InitE.BackendStages.Filtered634
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis634_eq : ffiLines Filtered634.lines = localFfis634 := by
  with_unfolding_all rfl
theorem ffiStep634 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis634) : LabToTarget.findFfiNames (Filtered634 :: rest) = suffixFfis634 := by
  rw [findFfiNames_section, localFfis634_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep634
end InitE.BackendStages.Metadata
