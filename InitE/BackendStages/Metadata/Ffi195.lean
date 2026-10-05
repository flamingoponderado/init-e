import InitE.BackendStages.Metadata.Data195
import InitE.BackendStages.Filtered195
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis195_eq : ffiLines Filtered195.lines = localFfis195 := by
  with_unfolding_all rfl
theorem ffiStep195 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis195) : LabToTarget.findFfiNames (Filtered195 :: rest) = suffixFfis195 := by
  rw [findFfiNames_section, localFfis195_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep195
end InitE.BackendStages.Metadata
