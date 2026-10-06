import InitE.BackendStages.Metadata.Data811
import InitE.BackendStages.Filtered811
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis811_eq : ffiLines Filtered811.lines = localFfis811 := by
  with_unfolding_all rfl
theorem ffiStep811 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis811) : LabToTarget.findFfiNames (Filtered811 :: rest) = suffixFfis811 := by
  rw [findFfiNames_section, localFfis811_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep811
end InitE.BackendStages.Metadata
