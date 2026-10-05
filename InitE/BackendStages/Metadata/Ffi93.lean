import InitE.BackendStages.Metadata.Data93
import InitE.BackendStages.Filtered93
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis93_eq : ffiLines Filtered93.lines = localFfis93 := by
  with_unfolding_all rfl
theorem ffiStep93 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis93) : LabToTarget.findFfiNames (Filtered93 :: rest) = suffixFfis93 := by
  rw [findFfiNames_section, localFfis93_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep93
end InitE.BackendStages.Metadata
