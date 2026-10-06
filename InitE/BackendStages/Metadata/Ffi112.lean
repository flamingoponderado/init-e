import InitE.BackendStages.Metadata.Data112
import InitE.BackendStages.Filtered112
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis112_eq : ffiLines Filtered112.lines = localFfis112 := by
  with_unfolding_all rfl
theorem ffiStep112 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis112) : LabToTarget.findFfiNames (Filtered112 :: rest) = suffixFfis112 := by
  rw [findFfiNames_section, localFfis112_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep112
end InitE.BackendStages.Metadata
