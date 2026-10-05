import InitE.BackendStages.Metadata.Data125
import InitE.BackendStages.Filtered125
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis125_eq : ffiLines Filtered125.lines = localFfis125 := by
  with_unfolding_all rfl
theorem ffiStep125 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis125) : LabToTarget.findFfiNames (Filtered125 :: rest) = suffixFfis125 := by
  rw [findFfiNames_section, localFfis125_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep125
end InitE.BackendStages.Metadata
