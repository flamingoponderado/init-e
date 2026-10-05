import InitE.BackendStages.Metadata.Data139
import InitE.BackendStages.Filtered139
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis139_eq : ffiLines Filtered139.lines = localFfis139 := by
  with_unfolding_all rfl
theorem ffiStep139 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis139) : LabToTarget.findFfiNames (Filtered139 :: rest) = suffixFfis139 := by
  rw [findFfiNames_section, localFfis139_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep139
end InitE.BackendStages.Metadata
