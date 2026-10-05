import InitE.BackendStages.Metadata.Data67
import InitE.BackendStages.Filtered67
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis67_eq : ffiLines Filtered67.lines = localFfis67 := by
  with_unfolding_all rfl
theorem ffiStep67 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis67) : LabToTarget.findFfiNames (Filtered67 :: rest) = suffixFfis67 := by
  rw [findFfiNames_section, localFfis67_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep67
end InitE.BackendStages.Metadata
